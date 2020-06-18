class Application

  def call(env)
    res = Rack::Response.new

    time = Time.now

    time.hour < 12 ? res.write('Morning') : res.write('Afternoon')

    res.finish
  end

end