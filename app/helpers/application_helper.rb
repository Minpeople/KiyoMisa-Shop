module ApplicationHelper

    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
           # current_user.orders.last
        else 
            Order.new
        end
    end

end
