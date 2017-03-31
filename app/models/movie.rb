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
