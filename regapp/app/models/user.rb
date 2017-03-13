class User < ApplicationRecord
  has_many :phones

  validates :name, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  validates :country, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true

  def authenticate(password)
    password == self.password
  end

end
