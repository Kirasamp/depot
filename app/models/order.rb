class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	PAYMENT_TYPES = [ "Check", "Credit Card", "Purchase Order" ]
	
	validates :name, :email, :address, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES
end
