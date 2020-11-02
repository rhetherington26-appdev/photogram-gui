class UsersController < ApplicationController

  def index
    @user_list = User.all
    render({ :template =>"user_templates/index.html.erb"})
  end

  def redirect
    @user_list = User.all
    render({ :template =>"user_templates/index.html.erb"})
  end

  def user

    @username = params.fetch("username")

    @user = User.all.where({ :username => @username }).at(0)

    render({ :template =>"user_templates/new.html.erb"})
  end

  def add
    username = params.fetch("username")

    e = User.new
    e.username = username
    e.save

    redirect("/users/" + username)

  end





end
