class HelloController < ApplicationController
  def index
    render plain: 'Hello World'
  end

  def view
    @msg = 'Hello World!'
  end

  def list
    @users = User.all
  end

  def app_var
    render plain: MY_APP['author']
  end
end
