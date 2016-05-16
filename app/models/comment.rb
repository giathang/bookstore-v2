class Comment < ActiveRecord::Base
  belongs_to :book
  validates_presence_of :commenter, :body
end
