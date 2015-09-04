class Comment < ActiveRecord::Base
  belongs_to :article

  validates :author_name, :body, presence: true, length: {minimum: 6}
end
