class School < ActiveRecord::Base
  validates :name, presence: true
  validates :beginning_year, presence: true,
                             numericality: { less_than_or_equal_to: :ending_year }
  validates :ending_year, presence: true
  validates :person_id, presence: true

  belongs_to :person

  has_many :comments, as: :commentable
end
