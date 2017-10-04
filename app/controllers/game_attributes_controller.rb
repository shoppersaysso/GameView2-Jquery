class GameAttributesController < ApplicationController
  before_action :set_game_attribute, only: [:show, :edit, :update, :destroy]
  before_action :disable_flash

  def index
    @game_attributes = GameAttribute.all
  end

  def show
  end

  def new
    @game_attribute = GameAttribute.new
  end

  def edit
  end

  def create
    @game_attribute = GameAttribute.new(game_attribute_params)

    respond_to do |format|
      if @game_attribute.save
        format.html { redirect_to @game_attribute, notice: 'Game attribute was successfully created.' }
        format.json { render :show, status: :created, location: @game_attribute }
      else
        format.html { render :new }
        format.json { render json: @game_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @game_attribute.update(game_attribute_params)
        format.html { redirect_to @game_attribute, notice: 'Game attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_attribute }
      else
        format.html { render :edit }
        format.json { render json: @game_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game_attribute.destroy
    respond_to do |format|
      format.html { redirect_to game_attributes_url, notice: 'Game attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_game_attribute
      @game_attribute = GameAttribute.find(params[:id])
    end


    def game_attribute_params
      params.require(:game_attributes).permit(:genre, :esrb_rating, :multiplayer)
    end
end
