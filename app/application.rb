class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/item/)
 
      item_price = req.path.split("/item/").last
      price = @@songs.find{|s| s.title == item_price}
 
      resp.write song.artist
      
    else
      resp.write "Route not found"
      resp.status = 400
    end
 
    resp.finish
  end
end
