require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date = @start_date + 86400
  end

  def end_date
    @start_date + @duration
  end

  def is_past?
    @start_date < Time.now
  end

  def is_futur?
    @start_date > Time.now
  end

  def is_soon
    if @start_date.day == Time.now.day && (@start_date.min - Time.now.min) <= 30
      return true 
    else
      return false
    end
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration}"
    puts "> Invités : #{@attendees.join(", ")}"
  end
end




