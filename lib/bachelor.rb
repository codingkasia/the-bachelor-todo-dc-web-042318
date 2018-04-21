require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |seasons, values|
    if(seasons.to_s === season)
      values.each do |info|
        if(info[:status] == "Winner")
          name = info[:name].split().first.to_s
          return name
        end
      end
    end
  end 
end

def get_contestant_name(data, occupation)
  data.each do |seasons, values| 
    values.each do |k|
      puts "K = #{k}"
    if(k[:occupation] == occupation)
      return k[:name]
    end
  end
end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |seasons, data|
    data.each do |info|
      if(info[:hometown] == hometown)
        #puts "HOMETOWN #{hometown}"
        counter += 1 
      end
    end
  end
  return counter
end


def get_occupation(data, hometown)
  data.each do |seasons, person|
    person.each do |info|
      #binding.pry 
      if info[:hometown] == hometown
        return info[:occupation]
      else 
        return "test"
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0 
  data.each do |seasons, data|
    puts "SEASONS type #{seasons.class}"
    if(seasons.to_s == season)
      data.each do |info|
        puts "AGE = #{info[:age].class}"
        total_age = info[:age].to_i
        total_age += 1 
      end
    end
  end
  return total_age
end

