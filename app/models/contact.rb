class Contact < ActiveRecord::Base
  belongs_to :category
  belongs_to :organisation
  belongs_to :location
end
