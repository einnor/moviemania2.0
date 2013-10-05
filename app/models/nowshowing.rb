class Nowshowing < ActiveRecord::Base
	belongs_to :cinema

	mount_uploader :nowshowingcover, NowshowingcoverUploader
end
