class DebtsController < ApplicationController
  before_action :set_debt, only: [:show, :edit, :update, :destroy, :reject, :approve]

  # GET /debts
  # GET /debts.json
  def index
    @debts = Debt.includes(:kreditur, :debitur).where("kreditur_id = ? or debitur_id = ?", current_user.id, current_user.id)
    @utangs = @debts.where(kreditur_id: current_user.id)
    @piutangs = @debts.where(debitur_id: current_user.id)
  end

  # GET /debts/1
  # GET /debts/1.json
  def show
    @debt = Debt.includes(:chats).find(params[:id])
    @chat = Chat.new
  end

  def approve
    @debt.update(status: "Approve")
    respond_to do |format|
      if @debt.persisted?
        format.html { redirect_to @debt, notice: 'Anda telah menyetujui utang.' }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new }
        format.json { render json: @debt.errors, status: 'Utang tidak dapat di temukan.' }
      end
    end
  end

  def reject
    @debt.update(status: "Reject")
    respond_to do |format|
      if @debt.persisted?
        format.html { redirect_to @debt, notice: 'Anda telah menolak utang.' }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new }
        format.json { render json: @debt.errors, status: 'Utang tidak dapat di temukan.' }
      end
    end
  end

  # GET /debts/new
  def new_debt
    @debt = Debt.new
    @all_friends = User.all_friends(current_user)
  end

  def new_credit
    @debt = Debt.new
    @all_friends = User.all_friends(current_user)
  end


  def new_utang
    @debt = Debt.new
    session[:debitur_id] = params[:id]
  end


  def new_piutang
    @debt = Debt.new
    session[:kreditur_id] = params[:id]
  end

  # GET /debts/1/edit
  def edit
  end

  # POST /debts
  # POST /debts.json
  def create
    @debt = Debt.new(debt_params)

    respond_to do |format|
      if @debt.save
        format.html { redirect_to @debt, notice: 'Debt was successfully created.' }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_utang
    @debt = current_user.utangs.create(params.require(:debt).permit(:name, :amount, :due_date, :prove, :warning_unit, :warning_count, :debitur_id).merge(status: 'Approve'))
    respond_to do |format|
      if @debt.persisted?
        format.html { redirect_to @debt, notice: 'Utang was successfully created.' }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_piutang
    @debt = current_user.piutangs.create(params.require(:debt).permit(:name, :amount, :due_date, :prove, :warning_unit, :warning_count, :kreditur_id).merge(status: 'Pending'))
    respond_to do |format|
      if @debt.persisted?
        format.html { redirect_to @debt, notice: 'Piutang was successfully created.' }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debts/1
  # PATCH/PUT /debts/1.json
  def update
    respond_to do |format|
      if @debt.update(debt_params)
        format.html { redirect_to @debt, notice: 'Debt was successfully updated.' }
        format.json { render :show, status: :ok, location: @debt }
      else
        format.html { render :edit }
        format.json { render json: @debt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debts/1
  # DELETE /debts/1.json
  def destroy
    @debt.destroy
    respond_to do |format|
      format.html { redirect_to debts_url, notice: 'Debt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_debt
    @debt = Debt.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def debt_params
    params.require(:debt).permit(:name, :description, :amount, :category, :due_date, :prove, :warning_unit, :warning_count, :kreditur_id, :debitur_id)
  end
end
