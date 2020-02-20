require_relative '../config/environment'

class Controller

	def call
		list_commands
		input = gets.chomp

		while input != "exit"
			case input
			when "list"
				Event.print_events
			when "select"
				select_event
			when "man" , "help"
				list_commands
			end
			# list_commands
			input = gets.chomp
		end
	end

	def list_commands
		puts "Welcome to the Event Listings Page"
		puts "List of Commands: "
		puts "==================="
		puts "list - to list all events"
		puts "select - to select en event and discover details"
		puts "man/help - to see list of commands"
		puts "exit - to quit program"
		puts "Please make a selection: "
	end

	def select_event
		puts "Select an Event by number list to read details: "
		input = gets.chomp.to_i
		if input <= Event.all.count && input > 0
			index = input - 1
			# binding.pry
			event = Event.all[index]
			raw_hour = event.start_date_details["hour"]
			hour = raw_hour.to_i <= 12 ? raw_hour : raw_hour.to_i - 12
			minutes = event.start_date_details["minutes"]
			date_time = "#{event.start_date_details["month"]}/#{event.start_date_details["day"]} @ #{hour}:#{minutes}"
			description = event.description ? event.description : "There is no description."
			puts "Event Title : #{event.title}"
			puts "Event Date/Time : #{date_time}"
			puts "Event Description : #{description}"
			puts "Event Link : #{event.url}"
		end
	end

end

# Controller.new.call