# == Schema Information
#
# Table name: journal_entries
#
#  id         :bigint(8)        not null, primary key
#  date       :date
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Journal::Entry < ApplicationRecord
  QUESTIONS = {
    yesterday: 'What did you do yesterday?',
    blockers: 'Any blockers?',
    today: 'What will you do today?'
  }

  belongs_to :user
  has_many :responses, class_name: Journal::Response.name, dependent: :destroy
  accepts_nested_attributes_for :responses

  validates :date, uniqueness: { scope: :user_id }
end
