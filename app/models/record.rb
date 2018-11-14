class Record < ApplicationRecord
  enum privacy: [:default, :sensitive, :very_private]
end
