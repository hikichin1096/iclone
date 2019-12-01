class Insclone < ApplicationRecord

  #本文が空の場合、エラー
  validates :content, presence: true
end
