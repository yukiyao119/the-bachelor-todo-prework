require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  if data[season][0]["status"] == "Winner"
    fullname = data[season][0]["name"]
  end 
  firstname = fullname.split(" ")[0]
  # binding.pry
end

def get_contestant_name(data, occupation)
  # code here
  data.collect do |season, contestants|
  # binding.pry
    contestants.collect do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.collect do |season, contestants|
    contestants.collect do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end 
    end 
  end 
  counter
end

# {
#   "season 19":[
#       {
#         "name":"Ashley Iaconetti",
#         "age":"26",
#         "hometown":"Great Falls, Virginia",
#         "occupation":"Nanny/Freelance Journalist",
#         "status":""
#       },
#       {
#         "name":"Becca Tilley",
#         "age":"26",
#         "hometown":"Shreveport, Louisiana[b]",
#         "occupation":"Chiropractic Assistant",
#         "status":""
#       },
#       {
#         "name":"Britt Nilsson",
#         "age":"27",
#         "hometown":"Hollywood, California",
#         "occupation":"Waitress",
#         "status":""
#       },
#       {
#         "name":"Carly Waddell",
#         "age":"29",
#         "hometown":"Arlington, Texas",
#         "occupation":"Cruise Ship Singer",
#         "status":""
#       },
#       {
#         "name":"Jade Roper",
#         "age":"28",
#         "hometown":"Los Angeles, California",
#         "occupation":"Cosmetics Developer",
#         "status":""
#       },
#       {
#         "name":"Kaitlyn Bristowe",
#         "age":"29",
#         "hometown":"Leduc, Alberta[c]",
#         "occupation":"Dance Instructor",
#         "status":""
#       },
#       {
#         "name":"Kelsey Poe",
#         "age":"28",
#         "hometown":"Hudsonville, Michigan[d]",
#         "occupation":"Guidance Counselor",
#         "status":""
#       },
#       {
#         "name":"Mackenzie Deonigi",
#         "age":"21",
#         "hometown":"Maple Valley, Washington",
#         "occupation":"Dental Assistant",
#         "status":""
#       },
#       {
#         "name":"Megan Bell",
#         "age":"24",
#         "hometown":"Nashville, Tennessee",
#         "occupation":"Make-Up Artist",
#         "status":""
#       },
#       {
#         "name":"Samantha Steffen",
#         "age":"27",
#         "hometown":"Indianapolis, Indiana[e]",
#         "occupation":"Fashion Designer",
#         "status":""
#       },
#       {
#         "name":"Whitney Bischoff",
#         "age":"29",
#         "hometown":"Chicago, Illinois",
#         "occupation":"Fertility Nurse",
#         "status":""
#       },
#       {
#         "name":"Ashley Salter",
#         "age":"24",
#         "hometown":"Brooklyn, New York",
#         "occupation":"Hair Stylist",
#         "status":"Eliminated in episode 4"
#       },
#       {
#         "name":"Juelia Kinney",
#         "age":"30",
#         "hometown":"Portland, Oregon",
#         "occupation":"Esthetician",
#         "status":"Eliminated in episode 4"
#       },
#       {
#         "name":"Nikki Delventhal",
#         "age":"26",
#         "hometown":"New York, New York",
#         "occupation":"Former NFL Cheerleader",
#         "status":"Eliminated in episode 4"
#       },
#       {
#         "name":"Jillian Anderson",
#         "age":"25",
#         "hometown":"Howland, Ohio[f]",
#         "occupation":"News Producer",
#         "status":"Eliminated in episode 4"
#       },
#       {
#         "name":"Amber James",
#         "age":"29",
#         "hometown":"Kankakee, Illinois[g]",
#         "occupation":"Bartender",
#         "status":"Eliminated in episode 3"
#       },
#       {
#         "name":"Tracy Darakis",
#         "age":"29",
#         "hometown":"Wellington, Florida",
#         "occupation":"Fourth Grade Teacher",
#         "status":"Eliminated in episode 3"
#       },
#       {
#         "name":"Trina Scherenberg",
#         "age":"33",
#         "hometown":"Algonquin, Illinois[h]",
#         "occupation":"Special Education Teacher",
#         "status":"Eliminated in episode 3"
#       },
#       {
#         "name":"Alissa Giambrone",
#         "age":"24",
#         "hometown":"Hamilton, New Jersey",
#         "occupation":"Flight Attendant",
#         "status":"Eliminated in episode 2"
#       },
#       {
#         "name":"Jordan Branch",
#         "age":"24",
#         "hometown":"Windsor, Colorado",
#         "occupation":"Student",
#         "status":"Eliminated in episode 2"
#       },
#       {
#         "name":"Kimberly Sherbach",
#         "age":"28",
#         "hometown":"Wantagh, New York",
#         "occupation":"Yoga Instructor",
#         "status":"Eliminated in episode 2\nReturned in episode 2\nEliminated in episode 1"
#       },
#       {
#         "name":"Tandra Steiner",
#         "age":"30",
#         "hometown":"Sandy, Utah",
#         "occupation":"Executive Assistant",
#         "status":"Eliminated in episode 2"
#       },
#       {
#         "name":"Tara Eddings",
#         "age":"26",
#         "hometown":"Fort Lauderdale, Florida",
#         "occupation":"Sport Fishing Enthusiast",
#         "status":"Eliminated in episode 2"
#       },
#       {
#         "name":"Amanda Goerlitz",
#         "age":"24",
#         "hometown":"Lake in the Hills, Illinois",
#         "occupation":"Ballet Teacher",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Bo Stanley",
#         "age":"25",
#         "hometown":"Carpinteria, California",
#         "occupation":"Plus-Size Model",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Brittany Fetkin",
#         "age":"26",
#         "hometown":"Orlando, Florida",
#         "occupation":"WWE Diva-in-Training",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Kara Wilson",
#         "age":"25",
#         "hometown":"Brownsville, Kentucky",
#         "occupation":"High School Soccer Coach",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Michelle Davis",
#         "age":"25",
#         "hometown":"Provo, Utah",
#         "occupation":"Wedding Cake Decorator",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Nicole",
#         "age":"31",
#         "hometown":"Scottsdale, Arizona",
#         "occupation":"Real Estate Agent",
#         "status":"Eliminated in episode 1"
#       },
#       {
#         "name":"Reegan Cornwell",
#         "age":"28",
#         "hometown":"Manhattan Beach, California",
#         "occupation":"Cadaver Tissue Saleswoman",
#         "status":"Eliminated in episode 1"
#       }
#   ],
#   "season 18":[
#       {
#         "name":"Nikki Ferrell",
#         "age":"26",
#         "hometown":"Kearney, Missouri",
#         "occupation":"Pediatric Nurse",
#         "status":"Winner"
#       },

def get_occupation(data, hometown)
  # code here
  data.collect do |season, contestants|
    contestants.collect do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
        break
      end 
    end 
  end   
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  counter = 0
  data[season].collect do |contestant_hash|
    total_age += contestant_hash["age"].to_f
    # binding.pry
    counter += 1
  end 
  total_age
  counter
  average = (total_age/counter).round
  # binding.pry
end



