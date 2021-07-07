class Application


  def call (env)
    resp = Rack::Response.new
    t = Time.now.hour
      if t <= 12
        resp.write 'Good Morning!'
      else
        resp.write 'Good Afternoon!'
    end
  resp.finish
  end
end
# if hour == 12 pm -11 am
# puts 'good morning'
#
# elsif hour == 12-4 pm
# puts 'good afternoon'
#
# elsif hour == 5-8 pm
# puts 'good evening'
