class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def show 
     if params['id'] == '1'
      @name = "Albert Einstein"
      @date = "1879-1955"
      @location = "Princeton, NJ"
      @imgurl = "http://upload.wikimedia.org/wikipedia/commons/d/d3/Albert_Einstein_Head.jpg"
      @barpercent = "95%"
      @desc = "Albert Einstein was a German-born theoretical physicist. He developed the general theory of relativity, one of the two pillars of modern physics. He is best known in popular culture for his mass–energy equivalence formula E = mc2 (which has been dubbed the world's most famous equation). He received the 1921 Nobel Prize in Physics for his services to theoretical physics, and especially for his discovery of the law of the photoelectric effect."
     elsif params['id'] == '2'
      @name = "Tony Stark"
      @date = "2008-Present"
      @location = "New York, New York"
      @imgurl = "http://img2.wikia.nocookie.net/__cb20130611164804/ironman/images/5/59/Robert-Downey-Jr-Tony-Stark-Iron-Man-3-Marvel-Disney.jpg"
      @barpercent = "80%"
      @desc = "An American billionaire, industrialist, and ingenious engineer, Tony Stark suffers a severe chest injury during a kidnapping in which his captors attempt to force him to build a weapon of mass destruction. He instead creates a powered suit of armor to save his life and escape captivity. He later uses the suit and successive versions to protect the world as Iron Man. Through his corporation ― Stark Industries ― Stark has created many military weapons, some of which, along with other technological devices of his making, have been integrated into his suit, helping him fight crime. Initially, Iron Man was a vehicle for Stan Lee to explore Cold War themes, particularly the role of American technology and business in the fight against communism. Subsequent re-imaginings of Iron Man have transitioned from Cold War themes to contemporary concerns, such as corporate crime and terrorism."
     elsif params['id'] == '3'
      @name = "Kate Upton"
      @date = "1992-Present"
      @location = "Melbourne, FL"
      @imgurl = "http://i.huffpost.com/gen/1432692/thumbs/o-KATE-UPTON-GOLF-facebook.jpg"
      @barpercent = "70%"
      @desc = "Katherine Elizabeth (Kate) Upton is an American model and actress, known for her appearances in the Sports Illustrated Swimsuit Issue. Upton was named Rookie of the Year following her first appearance in 2011 and was the cover model for the 2012 and 2013 issues. She was also the subject of the 100th Anniversary Vanity Fair cover."
    end
    render 'show'
   end
end
