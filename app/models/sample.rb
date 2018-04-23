class Sample < ApplicationRecord
      belongs_to :draft
      has_many :sample_pics
      accepts_nested_attributes_for :sample_pics

end
