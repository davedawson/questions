class Answer < ActiveRecord::Base
  attr_accessible :content, :name, :question_id
  validates :content, presence: true
  belongs_to :question

end
