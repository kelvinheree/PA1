class Ucourse < ApplicationRecord
  belongs_to :Enrollment
  serialize :subjects,Array

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end


end
