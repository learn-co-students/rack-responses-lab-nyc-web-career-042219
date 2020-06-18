class Application

  def call(env)
    resp = Rack::Response.new

    time_var = Time.now

    if time_var.hour > 11
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end


    resp.finish

  end

end
