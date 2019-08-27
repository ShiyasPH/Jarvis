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

require 'rails_helper'

RSpec.describe Journal::Response, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
