# == Schema Information
#
# Table name: roots
#
#  id         :integer          not null, primary key
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Root < QuranApiRecord
  has_many :word_roots
  has_many :words, through: :word_roots
  has_many :verses, through: :words
end
