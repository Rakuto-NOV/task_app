class Task < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  with_options presence: true do
    validates :name, :content, :prioity_id, :daedline_month, :daedline_day
  end
end
