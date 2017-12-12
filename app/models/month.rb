class Month < ApplicationRecord
  has_many :articles
  has_one :month_picture
end
