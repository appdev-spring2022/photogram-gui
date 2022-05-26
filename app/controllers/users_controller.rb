class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({:username => :asc})
    render({ :template => "user_templates/index.html.erb" })
  end

  def show
    url_username = params.fetch("path_username")

    matching_username = User.where({:username => url_username})

    @the_user = matching_username.at(0)

    render({ :template => "user_templates/show.html.erb" })
  end

  def add_user
    input_name = params.fetch("input_username")

    a_new_user = User.new

    a_new_user.username = input_name

    highest_id = User.all.maximum(:id)
    a_new_user.id = highest_id + 1

    a_new_user.save

    redirect_to("/users")
  end
end
