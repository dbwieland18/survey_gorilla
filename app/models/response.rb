class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
end

.template {
  display:none;
}