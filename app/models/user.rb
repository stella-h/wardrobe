# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  picture    :text
#  created_at :datetime
#  updated_at :datetime
# has_secure_password set up within the class. add brcypt in gems. 

class User < ActiveRecord::Base
  has_many :outfits
  has_many :tags
end
