class ExercisesController < ApplicationController
  # GET /exercises
  # GET /exercises.json
  def index
    @user = User.find(session[:user_id])
    @exercises = @user.exercises

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @user = User.find(session[:user_id])
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise }
    end
  end

  # GET /exercises/new
  # GET /exercises/new.json
  def new
    @user = User.find(session[:user_id])
    @exercise = Exercise.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  # GET /exercises/1/edit
  def edit
    @user = User.find(session[:user_id])
    @exercise = Exercise.find(params[:id])
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @user = User.find(session[:user_id])
    @exercise = Exercise.new(params[:exercise])

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to(:exercises, :notice => 'User was successfully created.') }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  # PUT /exercises/1
  # PUT /exercises/1.json
  def update
    @user = User.find(session[:user_id])
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      if @exercise.update_attributes(params[:exercise])
        format.html { redirect_to @exercise, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @user = User.find(session[:user_id])
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end
end
