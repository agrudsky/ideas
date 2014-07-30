class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def show 
     @cool = Idea.all
     @coolpeople = Idea.find_by_id(params["id"])
     render 'show'
   end
  
  def showwm
    @coolpeople = Idea.find_by_id(params["id"])
    @cool = Idea.all
    render 'showwm'
   end
  
  def delsure
    @coolpeople = Idea.find_by_id(params["id"])
    @cool = Idea.all
    render 'delsure'
  end
  
  def new
    @cool = Idea.all
  end
  
  def create
    g = Idea.new
    g.ideatitle = params['ideatitle']
    g.idea = params['idea']
    g.save
    redirect_to "/idea/#{ g.id }"
  end
  
  def edit
    @coolpeople = Idea.find_by_id(params['id'])
    @cool = Idea.all
  end
  
  def update
    g = Idea.find_by_id(params['id'])
    g.ideatitle = params['ideatitle']
    g.idea = params['idea']
    g.save
    redirect_to "/idea/#{ g.id }/wm"
  end
  
  def destroy
    g = Idea.find_by_id(params['id'])
    g.destroy
    redirect_to "/ideas"
  end
  
  def index
    @cool = Idea.all
  end
end