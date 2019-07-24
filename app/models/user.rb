class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save :normalize_first_name_and_last_name


  validates :email, presence: true, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
  has_and_belongs_to_many :events, -> {distinct }
  
  private
    def normalize_first_name_and_last_name
      self.first_name = self.first_name.titleize
      self.last_name  = self.last_name.titleize
    end
end
