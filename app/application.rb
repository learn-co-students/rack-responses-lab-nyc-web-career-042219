 class Application

  def call(env)
    resp = Rack::Response.new
    rn = Time.now
    # resp.write "#{now}\n"
    if rn.hour <12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!!"
    end
    resp.finish
  end
end
