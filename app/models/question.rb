class Question < ActiveRecord::Base
	belongs_to :quiz
	has_one :answer, dependent: :destroy
	accepts_nested_attributes_for :answer

	validates :answer, :length => { :minimum => 1 }
end
