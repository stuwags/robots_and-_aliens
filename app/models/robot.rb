# == Schema Information
#
# Table name: robots
#
#  id     :integer          not null, primary key
#  name   :string(255)
#  photo  :string(255)
#  avatar :string(255)
#

class Robot < ActiveRecord::Base
  attr_accessible :name, :photo
  mount_uploader :photo, AvatarUploader

end
