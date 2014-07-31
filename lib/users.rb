require "active_record"

class User < ActiveRecord::Base
  has_one :fish

  validates :username, :presence => {message: "Username is required"}
  validates :username, :uniqueness => {message: "Username has already been taken"}
  validates :password, :length => {:minimum => 4, message: "Password must be at least 4 characters"}
  validates :password, :presence => {message: "Password is required"}

end