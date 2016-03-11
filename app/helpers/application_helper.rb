module ApplicationHelper
end

def euro(price)
	number_to_currency(price, :unit => "€")
end