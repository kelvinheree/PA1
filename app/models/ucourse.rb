class Ucourse < ApplicationRecord
  has_many :Enrollment
  has_many :users, through: :Enrollment
  serialize :subjects,Array

  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
  end

  def self.subject(search)
    where("LOWER(subject_id) LIKE ?", "%#{search.downcase}%")
  end

  def self.both(arg1,arg2)
    where("LOWER(name) LIKE ? AND LOWER(subject_id) LIKE ?", "%#{arg1.downcase}%", "%#{arg2.downcase}%")
  end
end
