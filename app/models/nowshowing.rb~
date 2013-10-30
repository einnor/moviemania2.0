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
#  screening_time  :time
#

class Nowshowing < ActiveRecord::Base
	belongs_to :cinema
	has_many :comments, :dependent => :destroy
	has_many :reservations,:dependent => :destroy
	default_scope :order => "nowshowings.created_at DESC"

	searchable do
		text :title
	end

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
	validates :screening_time, :presence => true

end
