class Event < ApplicationRecord
	belongs_to :admin, class_name:"User"
	has_many :attendances
	has_many :users, through: :attendances

	validates :start_date, presence:true
	validate :date_valable
	validates :duration, presence:true
	validate :multiple_5
	validates :title, presence:true #lenght:{in: 5..140}
	validates :description, presence:true #lenght:{in:20..1000}
	validates :price, presence:true  #lenght:{in:1..1000}
	validates :location, presence:true


	private

	def multiple_5
		if duration % 5 != 0
			return errors.add(:duration, 'Error,durate multiple of 5, retry again...')
		end
	end
	def date_valable
		if start_date < Time.now
			return errors.add(:start_date, 'Past event error, Retry to Futur event!')
		end
	end
end
