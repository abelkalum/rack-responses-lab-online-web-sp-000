class Application
 
  def call(env)
    resp = Rack::Response.new
 
    if Time.now.to_i ? < 12:00 PM
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end