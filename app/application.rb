class Application

    def call(env)
      resp = Rack::Response.new
     
      time = time_now = Time.now.strftime('%H:%M')
      time_comparison = '12:00'

      if time < time_comparison
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end