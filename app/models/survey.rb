class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :taken_surveys
end
