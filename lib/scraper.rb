require_relative '../config/environment'
require 'pry'
# require_relative './event.rb'
# require 'nokogiri'
require 'open-uri'

require 'net/http'
require 'json'


class Scraper


	def get_json
		url = "http://voxpopuligallery.org/wp-json/tribe/events/v1/events?per_page=10"
		uri = URI(url)
		res = Net::HTTP.get(uri)
	end

	def get_events
		json = JSON.parse(get_json)
		events = json["events"]
	end

	def create_events
		get_events.each do |event|
			new_event = Event.new
			new_event.id = event['id']
			new_event.title = event['title']
			new_event.url = event['url']
			new_event.start_date_details = event["start_date_details"]
			new_event.url = event['url']
			raw_html = event['description']
			parsed_html = Nokogiri::HTML(raw_html)
			new_event.description = parsed_html.search('p').text.split('ACCESSIBILITY').first.split(" | ")[2]
		end
	end

end

binding.pry
Scraper.new.create_events
