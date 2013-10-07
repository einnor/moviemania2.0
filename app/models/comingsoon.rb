# == Schema Information
#
# Table name: comingsoons
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  synopsis        :text
#  category        :string(255)
#  youtubestub     :string(255)
#  cinemashowing   :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  comingsooncover :string(255)
#

class Comingsoon < ActiveRecord::Base
	mount_uploader :comingsooncover, ComingsooncoverUploader

	validates :title,	presence: true,
						length: {maximum: 50}
	validates :synopsis,	presence: true
	validates :category,	presence: true
	validates :youtubestub,	presence: true
	validates :cinemashowing,	presence: true
	validates :comingsooncover,	presence: true

end
