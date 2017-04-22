class Mark < ApplicationRecord
  belongs_to :subject
  belongs_to :exam
  belongs_to :student
end
