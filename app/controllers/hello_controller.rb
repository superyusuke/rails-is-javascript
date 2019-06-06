class HelloController < ApplicationController
  def index
    render html: "this is index!"
  end
end
