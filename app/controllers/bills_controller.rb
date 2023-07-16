class BillsController < ApplicationController
  def index
      bills = Bill.all
      render json: bills, status: :ok
  end

  def show
      bill = Bill.find(params[:id])
      render json: bill, status: :ok
  end

  def create
      bill = Bill.create!(bill_params)
      render json: bill, status: :created
  end

  def update
      bill = Bill.find(params[:id])
      employee.update!(bill_params)
      render json: bill, status: :ok
  end

  def destroy
      bill = Bill.find(params[:id])
      bill.destroy
      render json: {message: "Bill deleted"}, status: :ok
  end

  private

    # Only allow a list of trusted parameters through.
    def bill_params
      params.require(:bill).permit(:meter_no, :date_read, :previous_reading, :current_reading, :units_consumed, :balance, :date_paid, :client_id, :employee_id)
    end
end
