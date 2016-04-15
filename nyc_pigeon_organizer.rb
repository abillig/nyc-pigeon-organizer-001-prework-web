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
      pigeons[name][key1] << key2.to_s
    end
  end
end

return pigeons

end