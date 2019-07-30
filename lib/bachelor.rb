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



