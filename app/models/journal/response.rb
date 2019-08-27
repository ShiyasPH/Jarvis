# == Schema Information
#
# Table name: journal_responses
#
#  id         :bigint(8)        not null, primary key
#  entry_id   :bigint(8)
#  question   :string
#  answer     :text
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Journal::Response < ApplicationRecord
  belongs_to :entry
end
