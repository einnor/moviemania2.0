# == Schema Information
#
# Table name: forumcomingsoons
#
#  id            :integer          not null, primary key
#  comingsoon_id :integer
#  body          :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Forumcomingsoon < ActiveRecord::Base
	belongs_to :comingsoon
end
