class HelloController < ApplicationController
  def index
    render plain: 'Hello World'
  end

  def view
    @msg = 'Hello World!'
  end
end
