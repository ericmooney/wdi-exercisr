class ExercisesController < ApplicationController
  # GET /exercises
  # GET /exercises.json
  def index
    @exercises = Exercise.all

    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /exercises/new
  # GET /exercises/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  # GET /exercises/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        @exercises = User.all #needed since we no longer will be redirecting to a page that already has that defined

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
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end
end
