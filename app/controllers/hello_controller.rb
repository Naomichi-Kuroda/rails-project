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
end
