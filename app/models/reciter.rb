class Reciter < QuranApiRecord
  has_many :translated_names, as: :resource
end
