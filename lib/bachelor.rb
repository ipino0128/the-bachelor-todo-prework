require 'pry'

def get_first_name_of_season_winner(data, season)
new_array = []
data.each do |seasons, all_people|
  if seasons == season
    all_people.each do |person|
      person.each do |statistic, value|
        if value == "Winner"
          new_array << person["name"].split(" ")
        end
      end
    end
  end
end
return new_array[0][0]
end

def get_contestant_name(data, occupation)
  # code here
new_array = []
  data.each do |seasons, all_people|
      all_people.each do |person|
        person.each do |statistic, value|
          if value == occupation
        new_array << person["name"]
          end
        end
      end
    end
return new_array[0]
end


def count_contestants_by_hometown(data, hometown)
  # code here
  new_array = []
  counter = 0
    data.each do |seasons, all_people|
        all_people.each do |person|
          person.each do |statistic, value|
            if value == hometown
              new_array << person["name"]
              counter += 1
            end
          end
        end
      end
  return counter
  end


def get_occupation(data, hometown)
  # code here
  new_array = []
    data.each do |seasons, all_people|
        all_people.each do |person|
          person.each do |statistic, value|
            if value == hometown
          new_array << person["occupation"]
            end
          end
        end
      end
  return new_array[0]
  end

def get_average_age_for_season(data, season)
  array = []
  number = nil
  counter = 0
  data.each do |seasons, all_people|
    if seasons == season
      all_people.each do |person|
        person.each do |statistic, value|
          if statistic == "age"
            array << person["age"].to_f
            counter +=1
            number = array.inject(0){|sum,x| sum + x } /array.size.to_f
            end
          end
        end
      end
    end
    return number.round
  end
