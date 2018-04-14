class Sample < ApplicationRecord
      has_many :sample_pics
      accepts_nested_attributes_for :sample_pics
end
