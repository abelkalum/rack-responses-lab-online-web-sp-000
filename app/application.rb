class Application
 
  def call(env)
    resp = Rack::Response.new
 
    if Time.now.to_i ? < 12:00 PM
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end