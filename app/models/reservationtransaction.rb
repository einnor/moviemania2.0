# == Schema Information
#
# Table name: reservationtransactions
#
#  id             :integer          not null, primary key
#  action         :string(255)
#  amount         :integer
#  success        :boolean
#  authorization  :string(255)
#  message        :string(255)
#  params         :text
#  reservation_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Reservationtransaction < ActiveRecord::Base

	belongs_to :reservation

	def response=(response)
    self.success       = response.success?
    self.authorization = response.authorization
    self.message       = response.message
    self.params        = response.params
  rescue ActiveMerchant::ActiveMerchantError => e
    self.success       = false
    self.authorization = nil
    self.message       = e.message
    self.params        = {}
  end

end
