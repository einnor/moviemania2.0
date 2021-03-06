# == Schema Information
#
# Table name: enquiries
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  body       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  head       :string(255)
#

class Enquiry < ActiveRecord::Base


	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email,									presence: true,
																		format: {with: email_regex}
	validates :head,									presence: true,
																		length: {maximum: 60}
	validates :body,									presence: true,
																		length: {maximum: 512}


end
