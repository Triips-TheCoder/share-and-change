class Charity < ApplicationRecord
  has_many :capsules

  mount_uploader :logo, LogoUploader


  def to_s
    "#{name}"
  end
end
