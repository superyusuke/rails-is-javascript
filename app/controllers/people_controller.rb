class PeopleController < ApplicationController
  def index
    @person = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
  end

  protect_from_forgery

  def add
    if request.post?
      name = params[:name]
      age = params[:age]
      mail = params[:mail]
      new_person = {
          name: name,
          age: age,
          mail: mail
      }
      Person.create(new_person)
      redirect_to '/people'
    end
  end
end
