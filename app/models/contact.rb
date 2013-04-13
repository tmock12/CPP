class Contact < ActiveRecord::Base
  has_and_belongs_to_many :properties
  attr_accessible :cell, :email, :name
end
