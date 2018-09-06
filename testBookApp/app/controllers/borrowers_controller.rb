class BorrowersController < ApplicationController
  before_action :set_borrower

  # GET /borrowers
  # GET /borrowers.json
  def index
    if current_user.borrower.present?
      redirect_to borrower_path(@borrower)
    else  
      redirect_to new_borrower_path
    end
  end

  # GET /borrowers/1
  # GET /borrowers/1.json
  def show
    @books = @borrower.books 
  end

  # GET /borrowers/new
  def new
    @borrower = Borrower.new
  end

  # GET /borrowers/1/edit
  def edit
  end

  # POST /borrowers
  # POST /borrowers.json
  def create
    @borrower = Borrower.new(borrower_params)
    @borrower.user = current_user
    respond_to do |format|
      if @borrower.save
        format.html { redirect_to @borrower, notice: 'Borrower was successfully created.' }
        format.json { render :show, status: :created, location: @borrower }
      else
        format.html { render :index }
        format.json { render json: @borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowers/1
  # PATCH/PUT /borrowers/1.json
  def update
    respond_to do |format|
      if @borrower.update(borrower_params)
        format.html { redirect_to @borrower, notice: 'Borrower was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrower }
      else
        format.html { render :edit }
        format.json { render json: @borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowers/1
  # DELETE /borrowers/1.json
  def destroy
    @borrower.destroy
    respond_to do |format|
      format.html { redirect_to borrowers_url, notice: 'Borrower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrower
      @borrower = Borrower.where(user: current_user).first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrower_params
      params.require(:borrower).permit(:first_name, :last_name, :birth_date, :city, :able_to_borrow)
    end
end
