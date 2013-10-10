# == Schema Information
#
# Table name: nowshowings
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  synopsis        :text
#  youtubestub     :string(255)
#  price           :decimal(, )
#  created_at      :datetime
#  updated_at      :datetime
#  category        :string(255)
#  nowshowingcover :string(255)
#  cinema_id       :integer
#

class Nowshowing < ActiveRecord::Base
	belongs_to :cinema
	default_scope :order => "nowshowings.created_at DESC"

	mount_uploader :nowshowingcover, NowshowingcoverUploader

	validates :title,	presence: true,
						length: {maximum: 50}
	validates :synopsis,	presence: true
	validates :youtubestub,	presence: true
	validates :price,	presence: true
	#validates :cinemashowing,	presence: true
	validates :category,	presence: true
	validates :nowshowingcover,	presence: true
	validates :cinema_id, :presence => true

end
