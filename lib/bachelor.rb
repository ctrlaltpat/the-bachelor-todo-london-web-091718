def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant['name'].split(" ")[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season,contestant|
    contestant.each do |k,v|
      if k["occupation"] == occupation
        name = k['name']
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  contestants = 0
  data.each do |season,contestant|
    contestant.each do |k,v|
      if k["hometown"] == hometown
        contestants += 1
      end
    end
  end
  contestants
end

def get_occupation(data, hometown)
  data.each do |season,contestant|
    contestant.each do |k,v|
      if k["hometown"] == hometown
        return k['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  number_of_contestants = 0
  total = 0
  data[season].each do |contestant|
    total += contestant["age"].to_f
    number_of_contestants += 1
  end
  (total / number_of_contestants).round
end
