class Ucourse < ApplicationRecord
  has_many :Enrollment
  has_many :users, through: :Enrollment
  serialize :subjects,Array

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

  def self.subject(search)
    where("subject_id LIKE ?", "%#{search}%")
  end

  def self.both(arg1,arg2)
    where("name LIKE ? AND subject_id LIKE ?", "%#{arg1}%", "%#{arg2}%")
  end
end
