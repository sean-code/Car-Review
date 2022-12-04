class ReviewsController < ApplicationController
    #All Cars
    def index 
        @reviews=Review.all
        render json: @reviews, status: :ok
    end
    
    #GET /cars/ 1
    def show 
        if set_review
            render json: set_review, status: :ok
        else
           render json: {error: "Review Does Not Exist"}, status: :not_found
        end
    end

    #CREATE
    def create 
        @review = Review.new(review_params)
        if @review.save
            render json: @review, status: :created 
        else 
            render json: {error: "Review Not Updated"}, status: :unprocessable_entity
        end
    end

    #PATCH & PUT
    def update 
        @review=Review.update(review_params)
        if @review
            render json: @review, status: :ok
        else 
            render json: {error: "Not Updated"}, status: :unprocessable_entity
        end
    end

    private 
    def set_review
        review = Review.find_by(id: params[:id])
    end

    def review_params 
        params.require(:review).permit(:username, :rating, :comment)
    end

end
