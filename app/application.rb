class Application

	def call(env)
		resp = Rack::Response.new

		timex = Time.now

		current_hour = timex.hour
		current_mins = timex.min

		if current_hour > 12 
			resp.write "Good Afternoon!"
			resp.write "#{current_hour}:#{current_mins}"
		else
			resp.write "Good Morning!"
			resp.write "#{current_hour}:#{current_mins}"
		end
		resp.finish
	end

end