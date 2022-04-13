class Need < ApplicationRecord
  has_many :capsules

  def to_s
    "#{name}"
  end
end
