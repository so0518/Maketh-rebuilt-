class Draft < ApplicationRecord
      belongs _to :user
      validates :user_id, presence: true
      #データを引き出す際の順序付け
      default_scope -> { order('created_at DESC') }
      
      has_many :draft_pics
      accepts_nested_attributes_for :draft_pics
end
