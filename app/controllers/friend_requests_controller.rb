class FriendRequestsController < ApplicationController
  before_action :set_friend_request, only: [:show, :edit, :update, :destroy]

  # GET /friend_requests
  # GET /friend_requests.json
  def index
    @friend_requests = FriendRequest.all
  end

  def send_request
    @requests = current_user.friend_requests
    @owner = current_user
    if @requests.present?
      @requests.each do |request|
        token, enc = Devise.token_generator.generate(FriendRequest, :request_token)
        @accept_link = respond_friend_request_url(request.id, token, respond: 'accept')
        @reject_link = respond_friend_request_url(request.id, token, respond: 'reject')
        request.update(request_token: enc)
        @request = request
        FriendsMailer.send(@request, @owner, @accept_link, @reject_link).deliver
        request.update(status: 'Sent')
      end
      respond_to do |format|
          format.js { flash[:notice] = 'All pending request are sent.' }
      end
    else
      respond_to do |format|
          format.js { flash[:notice] = 'There isn\'t any pending request.' }
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
