class Lock < ActiveRecord::Base
	validates :name, presence: true
	validates :note, presence: true
end
