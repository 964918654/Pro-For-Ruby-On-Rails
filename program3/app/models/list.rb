class List < ActiveRecord::Base
	require 'rails/all'
	require 'carrierwave'
	require 'carrierwave/orm/activerecord'
	belongs_to :pro
	mount_uploader:pic,AvatarUploader

	paginates_per 2
end
