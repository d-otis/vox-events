require_relative '../config/environment'
require 'pry'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'json'

class Event
	extend Findable

	attr_accessor :id, :title, :description, :start_date_details, :url

	@@all = []

	def initialize
		save
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def self.reset_all
		self.all.clear
	end

	# def self.find_by_id(id)
	# 	self.all.detect {|e| e.id == id}
	# end

end

# Event.new.create_events