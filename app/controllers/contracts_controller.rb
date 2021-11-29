class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def find_contract
    @contracts = Contract.find_by(params[:contracted_id])
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)

    if @contract.save!
      redirect_to @contract
    else
      render :new
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:contracted_name, :contracted_id, :contracted_address, :contracted_division,
                                     :contract_validity, :contract_signature)
  end
end
