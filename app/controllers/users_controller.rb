class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
         respond_to do |format|
            format.html
            format.json{
              render json: @user, :include => :areas
            }
        end
    end
    
    def index
        @users = User.all 
        respond_to do |format|
            format.html
            format.json{
                render json: @users, :include => [:areas,  :courses,  :researches,  :educations]
            }
        end
    end
    
end
