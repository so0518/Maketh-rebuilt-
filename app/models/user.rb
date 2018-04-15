class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :confirmable, :authentication_keys => [:login]
  attr_accessor :login
  
  #ログイン認証の条件をオーバーライド
    def self.find_first_by_auth_conditions(warden_conditions)
     conditions = warden_conditions.dup
      if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
      else
      where(conditions).first
      end
    end
  #バリデーション  
  validates :username,
  uniqueness: { case_sensitive: :false },
  length: { minimum: 1, maximum: 50 }
  
  #draftとの関係
  has_many :drafts
  accepts_nested_attributes_for :drafts
  
  #フォロー機能
  acts_as_followable # フォロワー機能
  acts_as_follower   # フォロー機能

end
