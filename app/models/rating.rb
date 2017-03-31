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
