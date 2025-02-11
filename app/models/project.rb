class Project < ApplicationRecord
  # enum status: %w[todo in_progress done]

  belongs_to :user

  has_many :comments
end
