# == Schema Information
#
# Table name: outfits
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image       :text
#  user_id     :integer
#

class Outfit < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
end
