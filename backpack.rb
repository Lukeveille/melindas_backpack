class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end
  
  def items
    @items
  end
  
  def check_gym_shoes(day_of_week)
    # Ensure gym shoes are added to backpack if it's a gym day
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end
  
  def check_food(day_of_week)
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  def check_weather(weather)
    # Ensure appropriate clothing is added to backpack
    if weather == 'rainy'
      @items += ['pants', 'shirt', 'umbrella']
    elsif weather == 'cold'
      @items += ['pants', 'shirt', 'jacket']
    else
      @items += ['pants', 'shirt']
    end
  end

  def prepare
    # Set up local variables used by rest of prepare method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    check_weather(weather)
    check_gym_shoes(day_of_week)
    check_food(day_of_week)
  end

  def print_packing_list
  # Prints a summary packing list for Melinda's backpack
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
