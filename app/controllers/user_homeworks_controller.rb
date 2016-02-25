class UserHomeworksController < ApplicationController
  before_action :set_user_homework, only: [:show, :edit, :update, :destroy]

  # GET /user_homeworks
  # GET /user_homeworks.json
  def index
    @user_homeworks = UserHomework.all
  end

  # GET /user_homeworks/1
  # GET /user_homeworks/1.json
  def show
  end

  # GET /user_homeworks/new
  def new
    @user_homework = UserHomework.new
  end

  # GET /user_homeworks/1/edit
  def edit
  end

  # POST /user_homeworks
  # POST /user_homeworks.json
  def create
    @user_homework = UserHomework.new(user_homework_params)

    respond_to do |format|
      if @user_homework.save
        format.html { redirect_to @user_homework, notice: 'User homework was successfully created.' }
        format.json { render :show, status: :created, location: @user_homework }
      else
        format.html { render :new }
        format.json { render json: @user_homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_homeworks/1
  # PATCH/PUT /user_homeworks/1.json
  def update
    respond_to do |format|
      if @user_homework.update(user_homework_params)
        format.html { redirect_to @user_homework, notice: 'User homework was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_homework }
      else
        format.html { render :edit }
        format.json { render json: @user_homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_homeworks/1
  # DELETE /user_homeworks/1.json
  def destroy
    @user_homework.destroy
    respond_to do |format|
      format.html { redirect_to user_homeworks_url, notice: 'User homework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_homework
      @user_homework = UserHomework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_homework_params
      params.require(:user_homework).permit(:user_id, :homework_id, :status, :grade, :comment)
    end
end
