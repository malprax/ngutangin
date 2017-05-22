class FriendRequestsController < ApplicationController
  before_action :set_friend_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:respond]


  # GET /friend_requests
  # GET /friend_requests.json
  def index
    @friend_requests = FriendRequest.all
  end

  def send_request
    @ajakans = current_user.friend_requests.where(status: 'Pending')
    @owner = current_user
    if @ajakans.present?
      @ajakans.each do |ajakan|
        token, enc = Devise.token_generator.generate(FriendRequest, :request_token)
        @accept_link = respond_friend_request_url(ajakan.id, token, respond: 'accept')
        @reject_link = respond_friend_request_url(ajakan.id, token, respond: 'reject')
        ajakan.update(request_token: enc)
        @ajakan = ajakan
        FriendsMailer.kirim(@ajakan, @owner, @accept_link, @reject_link).deliver
        # ajakan.update(status: 'Sent')
      end
      respond_to do |format|
          format.html { redirect_to friend_requests_url }
          format.js { flash[:notice] = 'All pending request are sent.' }
      end
    else
      respond_to do |format|
          format.html { redirect_to friend_requests_url }
          format.js { flash[:notice] = 'There isn\'t any pending request.' }
      end
    end
  end

  def respond
    @request_token = Devise.token_generator.digest(FriendRequest, :request_token, params[:token])
    @respond = params[:respond]
    @ajakan = FriendRequest.where("id = ? and request_token = ?", params[:id], @request_token).first
    if @ajakan.blank?
      redirect_to new_user_session_path, alert: "Sorry, this token link have been used."
      return
    else
      if @respond == 'reject'
        @ajakan.update(status: 'Reject')
        # @ajakan.update(request_token: nil)
        redirect_to new_user_registration_url, notice: 'You are successfully reject the request. But you can still join us with filling the form below or use facebook login button.'
      elsif @respond == 'accept'
        @ajakan.update(status: 'Accept')
        # @ajakan.update(request_token: nil)
        @user = User.from_ajakan(@ajakan)
        @teman = @ajakan.user
        @friendships = @teman.friendships.build(friend_id: @user.id)
        @friendships.save
        unless @user.password.blank?
          @token, enc = Devise.token_generator.generate(User, :reset_password_token)
          @user.reset_password_token   = enc
          @user.reset_password_sent_at = Time.now.utc
          @user.save(validate: false)
          FriendsMailer.welcome(@user, @token).deliver
          sign_in(:user, @user)
          render "users/welcome"
        else
          sign_in(:user, @user)
          redirect_to root_path, notice: "Congratulations, You are friend with #{@teman.firstname} now."
        end
      end
    end
  end

  # GET /friend_requests/1
  # GET /friend_requests/1.json
  def show
  end

  # GET /friend_requests/new
  def new
    @friend_request = FriendRequest.new
  end

  # GET /friend_requests/1/edit
  def edit
  end

  # POST /friend_requests
  # POST /friend_requests.json
  def create
    @friend_request = current_user.friend_requests.create(friend_request_params)

    respond_to do |format|
      if @friend_request.save
        format.html { redirect_to @friend_request, notice: 'Friend request was successfully created.' }
        format.json { render :show, status: :created, location: @friend_request }
      else
        format.html { render :new }
        format.json { render json: @friend_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friend_requests/1
  # PATCH/PUT /friend_requests/1.json
  def update
    respond_to do |format|
      if @friend_request.update(friend_request_params)
        format.html { redirect_to @friend_request, notice: 'Friend request was successfully updated.' }
        format.json { render :show, status: :ok, location: @friend_request }
      else
        format.html { render :edit }
        format.json { render json: @friend_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friend_requests/1
  # DELETE /friend_requests/1.json
  def destroy
    @friend_request.destroy
    respond_to do |format|
      format.html { redirect_to friend_requests_url, notice: 'Friend request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend_request
      @friend_request = FriendRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friend_request_params
      params.require(:friend_request).permit(:firstname, :lastname, :email, :phone)
    end
end
