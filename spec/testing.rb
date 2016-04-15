def nyc_pigeon_organizer(data)

    pigeons=Hash.new(0)
  # write your code here!
  data.each do |key, val|
    val.each do |key1, val1|
      val1.each do |val|
        if pigeons.keys.include?(val) == false
          pigeons[val]={}
        end
      end
    end
  end

data.each do |key1, val1|
  val1.each do |key2, val2|
    val2.each do |name|
      pigeons[name][key1] = []
    end
  end
end

data.each do |key1, val1|
  val1.each do |key2, val2|
    val2.each do |name|
      pigeons[name][key1] << key2
    end
  end
end



return pigeons

end

puts nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })