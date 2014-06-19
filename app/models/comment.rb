class Comment < ActiveRecord::Base
  validates :text, presence: true,
                   length: { maximum: 140 }

  belongs_to :commentable, polymorphic: true
end
