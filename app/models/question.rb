class Question < ActiveRecord::Base
	belongs_to :quiz
	has_one :answer, dependent: :destroy
	accepts_nested_attributes_for :answer, :reject_if => lambda { |a| a[:content].blank?}, allow_destroy: true
end
