class Communication < ActiveRecord::Base
  belongs_to :department
  belongs_to :project
  belongs_to :organisation
  belongs_to :contact
  belongs_to :category
  belongs_to :sub_category
end
