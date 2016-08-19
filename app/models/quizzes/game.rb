# == Schema Information
#
# Table name: quizzes_games
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  level_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require_dependency "quizzes/application_record"

module Quizzes
  class Game < ApplicationRecord

    belongs_to :user
    belongs_to :level
    has_many :game_questions, dependent: :destroy
    has_many :questions, through: :game_questions

    validates :user, presence: true

  end
end
