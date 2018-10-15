class Api::UsersController < ApplicationController
 


def create
  user = User.new(name: params[:name], email: params[:email], bio: params[:bio], gender: params[:gender], image: params[:image], level: params[:level], password_digest: params[:password_digest])
if user.save 
       render json: {message: "User created successfully"}, status: :created
     else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
 end

 

def show
  @user = User.find_by(id:params[:id])
  render "show.json.jbuilder"

end

def update
  @user = User.find(params[:id])
  @user.name = params[:name]
  @user.email = params [:email]
  @user.bio = params[:bio]
  @user.gender = params[:gender]
  @user.image = params[:image]
  @user.level = params[:level]
  @user.password_digest = params[:password_digest])
 if user.save 
       render json: {message: "User created successfully"}, status: :created
     else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
 end
end