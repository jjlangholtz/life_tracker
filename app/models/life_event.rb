class LifeEvent < ActiveRecord::Base
  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true,
                          length: { maximum: 140 }

  belongs_to :person

  has_many :comments, as: :commentable
end
