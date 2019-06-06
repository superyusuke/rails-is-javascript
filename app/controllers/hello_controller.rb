class HelloController < ApplicationController
  def index
    # like a JavaScript Object
    hash1 = {name: 'name', job: 'job'}
    hash2 = {:name => 'name', :job => 'job'}
    hash3 = {'name' => 'name', 'job' => 'job'}

    name = params[:name]
    # or name = params['name']
    #
    render html: "hello, " + name

    hash1[:name] # ok
    hash1['name'] # error

    hash2[:name] # ok
    hash2['name'] # error

    hash3[:name] # error
    hash3['name'] # ok
  end

  def about
    name = params[:name]
    @name = name
  end
end



