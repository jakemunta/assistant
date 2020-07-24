class Note < ApplicationRecord
	validates :title, length: { maximum: 30 }
	validates :body, length: { maximum: 1000 }
	validate :title_body_presence

	belongs_to :user

	before_save :verify_title

	def title_body_presence
		if title.blank? and body.blank?
			errors.add(:body, "can't be blank if title is also blank")
		end
	end

	def verify_title
		self.title = body[0..29] if title.blank?
	end

end
