class Promoter < ApplicationRecord
  has_many :referrees, dependent: :destroy
end
