class Enrollment < ApplicationRecord
  has_many :users
  has_many :ucourses

end
