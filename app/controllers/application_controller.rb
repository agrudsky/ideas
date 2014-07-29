class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def show 
     @cool = Movie.all
     @coolpeople = Movie.find_by_id(params["id"])
     render 'show'
   end
  
  def showwm
    @coolpeople = Movie.find_by_id(params["id"])
    @cool = Movie.all
    render 'showwm'
   end
  
  def delsure
    @coolpeople = Movie.find_by_id(params["id"])
    @cool = Movie.all
    render 'delsure'
  end
  
  def new
    @cool = Movie.all
  end
  
  def create
    g = Movie.new
    g.name = params['name']
    g.imgurl = params['imgurl']
    g.save
    redirect_to "/movie/#{ g.id }"
  end
  
  def edit
    @coolpeople = Movie.find_by_id(params['id'])
    @cool = Movie.all
  end
  
  def update
    g = Movie.find_by_id(params['id'])
    g.name = params['name']
    g.imgurl = params['imgurl']
    g.save
    redirect_to "/movie/#{ g.id }/wm"
  end
  
  def destroy
    g = Movie.find_by_id(params['id'])
    g.destroy
    redirect_to "/movie"
  end
  
  def index
    @cool = Movie.all
  end
end