class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/price/)
 
      item_price = req.path.split("/price/").last
      price = @@item.find{|s| s.price == item_price}
 
      resp.write item.price
      
    else
      resp.write "Item not foun"
      resp.status = 404
    end
 
    resp.finish
  end
end
