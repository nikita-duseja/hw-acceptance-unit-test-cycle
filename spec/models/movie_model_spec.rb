require 'rails_helper'

describe Movie do
  describe "Same Director movies" do
    it "should recognize movies with same director" do
      m1 = Movie.create! :director => 'Test Director'
      m2 = Movie.create! :director => 'Test Director'
      expect(Movie.same_director_movie(m1.director)).to include(m2)
    end
    it "should not have entries for different director movies" do
      m1 = Movie.create! :director => 'Test1 Director'
      m2 = Movie.create! :director => 'Test2 Director'
      expect(Movie.same_director_movie(m1.director)).not_to include(m2)
    end
  end
end
