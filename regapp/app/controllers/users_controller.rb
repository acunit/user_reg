class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new(name: params[:name], address: params[:address], city: params[:city], state: params[:city], zip: params[:zip], country: params[:country], email: params[:email], username: params[:username], password: params[:password])
    @user.save
    session[:current_user_id] = @user.id
    @phone1 = Phone.new(user_id: @user.id, phone_number: params[:phone1])
    if !@phone1.blank?
      @phone1.save
    end
    @phone2 = Phone.new(user_id: @user.id, phone_number: params[:phone2])
    if !@phone2.blank?
      @phone2.save
    end
    @phone3 = Phone.new(user_id: @user.id, phone_number: params[:phone3])
    if !@phone3.blank?
      @phone3.save
    end
    render :confirmation
  end

  def login
    @user = User.find_by_username(params[:username])
    @phone
    if @user && @user.authenticate(params[:password])
      render :welcome
    else
      render :index
    end
  end

  def to_info
    @user = User.find_by_id(session[:current_user_id])
    render :welcome
  end



end
