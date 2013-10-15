# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  nowshowing_id :integer
#  body          :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Comment < ActiveRecord::Base
	belongs_to :nowshowing
end
