class QuestionOptionAnswer < ActiveRecord::Base

  belongs_to :question_option
  belongs_to :user, class_name: Spree.user_class.to_s

  attr_accessible :answer, :user_id, :question_option_id

  validates :answer, presence: true, if: :is_required

  def is_required
    question_option.required
  end

end