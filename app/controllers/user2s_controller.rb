class User2sController < ApplicationController
  # GET /user2s
  # GET /user2s.json
  def index
    @user2s = User2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user2s }
    end
  end

  # GET /user2s/1
  # GET /user2s/1.json
  def show
    @user2 = User2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user2 }
    end
  end

  # GET /user2s/new
  # GET /user2s/new.json
  def new
    @user2 = User2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user2 }
    end
  end

  # GET /user2s/1/edit
  def edit
    @user2 = User2.find(params[:id])
  end

  # POST /user2s
  # POST /user2s.json
  def create
    @user2 = User2.new(params[:user2])

    respond_to do |format|
      if @user2.save
        format.html { redirect_to @user2, notice: 'User2 was successfully created.' }
        format.json { render json: @user2, status: :created, location: @user2 }
      else
        format.html { render action: "new" }
        format.json { render json: @user2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user2s/1
  # PUT /user2s/1.json
  def update
    @user2 = User2.find(params[:id])

    respond_to do |format|
      if @user2.update_attributes(params[:user2])
        format.html { redirect_to @user2, notice: 'User2 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user2s/1
  # DELETE /user2s/1.json
  def destroy
    @user2 = User2.find(params[:id])
    @user2.destroy

    respond_to do |format|
      format.html { redirect_to user2s_url }
      format.json { head :ok }
    end
  end
end
