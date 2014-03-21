class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :possible_choices
  has_many :responses
end
