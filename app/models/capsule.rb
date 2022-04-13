class Capsule < ApplicationRecord
  belongs_to :charity
  belongs_to :need

  def to_s
    "#{quote}"
  end
end
