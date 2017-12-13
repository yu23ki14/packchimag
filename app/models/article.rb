class Article < ApplicationRecord
  belongs_to :month
  has_one :article_picture
end
