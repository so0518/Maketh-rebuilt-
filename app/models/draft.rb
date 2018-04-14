class Draft < ApplicationRecord
      has_many :draft_pics
      accepts_nested_attributes_for :draft_pics
end
