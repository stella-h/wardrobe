# == Schema Information
#
# Table name: tags
#
#  id      :integer          not null, primary key
#  tag     :text
#  user_id :integer
#

class Tag < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :outfits
end
