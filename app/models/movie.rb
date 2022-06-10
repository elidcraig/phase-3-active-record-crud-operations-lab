class Movie < ActiveRecord::Base

  def self.find_all_movies_by_year year
    self.where( year: year )
  end

  def self.create_with_title movie_title
    self.create( title: movie_title )
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.all.length
  end

  def self.find_movie_with_id movie_id
    self.find(movie_id)
  end

  def self.find_movie_with_attributes attribute_hash
    self.find_by(attribute_hash)
  end

  def self.find_movies_after_2002
    self.where("release_date > 2002")
  end

  def self.delete_by_id movie_id
    self.destroy(movie_id)
  end

  def self.delete_all_movies
    self.destroy_all
  end

  def self.update_all_titles movie_title
    self.update_all(title: movie_title)
  end

  def update_with_attributes attribute_hash
    self.update(attribute_hash)
  end
end