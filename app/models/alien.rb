# == Schema Information
#
# Table name: aliens
#
#  id     :integer          not null, primary key
#  name   :string(255)
#  photo  :string(255)
#  avatar :string(255)
#

class Alien < ActiveRecord::Base
  attr_accessible :name, :photo 
  mount_uploader :photo, AvatarUploader

end
