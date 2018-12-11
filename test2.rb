def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, supply|
      dayray = day.to_s.split("_")
      dayray.each do |thing|
        thing = thing.capitalize!
      end
      stuff = dayray.join(" ")
      puts "  #{stuff}: #{supply}"
    end
  end
end


all_supplies_in_holidays({
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
})
