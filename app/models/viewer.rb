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
