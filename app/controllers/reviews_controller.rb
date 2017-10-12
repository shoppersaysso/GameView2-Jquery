class ReviewsController < ApplicationController
  before_action :disable_flash, :load_game, only: [:show, :edit, :update, :destroy]

  def show
    @review = @game.reviews.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.xml  { render json:  @review }
    end
  end

  def new
    @review = @game.reviews.build

    respond_to do |format|
      format.html
      format.xml  { render :xml => @review }
    end
  end

  def edit
    @review = @game.reviews.find(params[:id])
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.game_id = @game.id
    current_user.level_up

    respond_to do |format|
      if @review.save
        format.html { redirect_to([@review.game, @review], :notice => 'Review was successfully created.') }
        format.xml  { render :xml => @review, :status => :created, :location => [@review.game, @review] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @review = @game.reviews.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(review_params)
        format.html { redirect_to([@review.game, @review], :notice => 'Review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @review = @game.reviews.find(params[:id])
    @review.destroy
    current_user.level_down

    respond_to do |format|
      format.html { redirect_to(home_path) }
      format.xml  { head :ok }
    end
  end

  def content
    review = Review.find(params[:id])
    render json: review.content
  end

private

  def load_game
    @game = Game.find(params[:game_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :game_id, :user_id)
  end

end
