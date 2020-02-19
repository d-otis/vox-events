require_relative './spec_helper'
require_relative '../lib/event.rb'

describe "Event" do
	let(:event) {Event.new}

	context "instance methods" do
		describe '#title' do
			it "has a setter and a getter method for title" do
				event.title = "Aux: Ordet, Unguent, Autumn Casey, Stefan Maier"
			end
		end
		describe '#url' do
			it "has a setter and a getter method for url" do
				event.url = "http://voxpopuligallery.org/calendar-event/aux-ordet-unguent-autumn-casey-stefan-maier/"
			end
		end
		describe '#id' do
			it "has a setter and a getter method for id" do
				event.id = 11108
			end
		end
		describe '#start_date_details' do
			it "has a setter and a getter method for start_date_details" do
				event.start_date_details = {"year"=>"2020", "month"=>"02", "day"=>"18", "hour"=>"20", "minutes"=>"00", "seconds"=>"00"}
			end
		end
		# describe '#description' do
		# 	it "has a setter and a getter method for description" do
		# 		event.description = "/"<figure><a href="http://voxpopuligallery.org/wp-content/uploads/2020/02/Blanche1.jpg" class="no-border" data-rel="lightbox-image-0" data-rl_title="" data-rl_caption="" title=""><img src="http://voxpopuligallery.org/wp-content/uploads/2020/02/Blanche1.jpg" alt="" width="679" height="960" class="aligncenter size-full wp-image-11110" srcset="http://voxpopuligallery.org/wp-content/uploads/2020/02/Blanche1.jpg 679w, http://voxpopuligallery.org/wp-content/uploads/2020/02/Blanche1-300x424.jpg 300w, http://voxpopuligallery.org/wp-content/uploads/2020/02/Blanche1-620x877.jpg 620w" sizes="(max-width: 679px) 100vw, 679px" /></a></figure> <p><strong>Aux: Ordet, Unguent, Autumn Casey, Stefan Maier</strong><br /> Tuesday, February 18, 2019 | 8-11pm | $7-$10</p> <p>Come out for a lovely Tuesday evening of experimental sound and music.<br /> Local flowers : Ordet, Unguent, Autumn Casey<br /> Touring flower : Stefan Maier</p> <p>Will blossom on schedule.</p> <p><strong>ACCESSIBILITY STATEMENT</strong><br /> Please note that Vox Populi is located on the third floor of a historic warehouse building at 319 N. 11th Street and that there are five steps leading from the street-level to the first-floor landing where the passenger elevator picks-up/drops-off. The entry into/out of the elevator is 29-inches wide, so may not accommodate all wheelchairs or motorized chairs. Any individual requiring a ramp to navigate this entryway is encouraged to get in touch with Vox Populi ahead of time to coordinate ramp-access and discuss accessibility details. Our ramps may not be suitable for all wheelchairs or motorized chairs, so we strongly encourage anyone requiring a ramp to be in touch at: events@voxpopuligallery.org or 215.238.1236</p>/""
		# 	end
		# end
	end

	context "class methods" do
		describe ".all" do
			it "returns an array of all instances of the Event class" do
				Event.reset_all
				event_one = Event.new
				event_two = Event.new
				event_three = Event.new
				expect(Event.all).to match_array([event_one, event_two, event_three])
			end
		end
	end
end