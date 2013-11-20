class BusinessTransactionsController < ApplicationController
  before_action :set_business_transaction, only: [:show, :edit, :update, :destroy]

  # GET /business_transactions
  # GET /business_transactions.json
  def index
    @business_transactions = BusinessTransaction.all
  end

  # GET /business_transactions/1
  # GET /business_transactions/1.json
  def show
  end

  # GET /business_transactions/new
  def new
    @business_transaction = BusinessTransaction.new
  end

  # GET /business_transactions/1/edit
  def edit
  end

  # POST /business_transactions
  # POST /business_transactions.json
  def create
    @business_transaction = BusinessTransaction.new(business_transaction_params)

    respond_to do |format|
      if @business_transaction.save
        format.html { redirect_to @business_transaction, notice: 'Business transaction was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_transaction }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_transactions/1
  # PATCH/PUT /business_transactions/1.json
  def update
    respond_to do |format|
      if @business_transaction.update(business_transaction_params)
        format.html { redirect_to @business_transaction, notice: 'Business transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_transactions/1
  # DELETE /business_transactions/1.json
  def destroy
    @business_transaction.destroy
    respond_to do |format|
      format.html { redirect_to business_transactions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_transaction
      @business_transaction = BusinessTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_transaction_params
      params.require(:business_transaction).permit(:date, :description, :amount, :balance)
    end
end
