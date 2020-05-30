class Task < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: {maximum: 50}
	validates :note, presence: true, length: { in: 5..100 }
	
end