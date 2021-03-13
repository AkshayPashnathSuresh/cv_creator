# frozen_string_literal: true

class User < ApplicationRecord
  has_one :address
  has_one :education
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
