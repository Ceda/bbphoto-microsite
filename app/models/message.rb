class Message < ActiveRecord::Base
  validates :email, :message, presence: true
  validates :email, format: Devise.email_regexp
end
