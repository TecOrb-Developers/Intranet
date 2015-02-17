class Attachment < ActiveRecord::Base
  belongs_to :user
  belongs_to :communication
  belongs_to :category
end
