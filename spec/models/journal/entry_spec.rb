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

require 'rails_helper'

RSpec.describe Journal::Entry, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
