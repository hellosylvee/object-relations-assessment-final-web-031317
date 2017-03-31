# Please copy/paste all three classes into this file to submit your solution!
class Movie
  attr_accessor :title

  MOVIES = []

  def initialize(title)
    self.title = title
    MOVIES << self
  end

  def self.all
    MOVIES
  end

  def self.find_by_title(title)
    self.all.find {|movie| movie.title == "title"}
  end

  def self.ratings
    self.all.collect do |movie|
      movie.rating == "rating"
    end
  end

  def self.viewers
    self.all.collect {|movie| movie.viewer if viewer.rating == "rating"}
  end

  def self.average_rating
    self.all.collect do |movie|
      movie.ratings.inject {sum, element}.to_f / self.all.size
    end
  end
end

class Rating
  attr_accessor :score

  RATINGS = []

  def self.all
    RATINGS
  end

  def self.viewer(rating)
    self.all.find {|rating| viewer.rating == "rating"}
  end

  def self.movie(rating)
    self.all.collect {|rating| movie.rating == "rating"}
  end
end

class Viewer
  attr_accessor :first_name, :last_name

  VIEWERS = []

  def initialize(name)
    @name = name
    VIEWERS << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    VIEWERS
  end

  def self.find_by_name(viewerFullName)
    self.all.find {|viewer| viewer.full_name == "viewFullName" }
  end

  def self.create_rating(score, movie)
    rating = Rating.new(score, movie)
    rating.viewer = self.viewer # ??? >__<;;;
  end
end
