require "pry"
require "time"

    class Event
    attr_accessor :start_time, :duration, :title, :attendee
    @@guest_array=Array.new

    def initialize (new_time,duration_length,event_name,attendee_mail)
    @start_time = Time.parse(new_time)
    @duration = duration_length*60
    @title = event_name
    @attendee = attendee_mail
    @@guest_array<<attendee_mail

    end

    def postpone_24h
    @start_time = @start_time + 86400
    end

    def end_date
    return @start_time + @duration
    end

    def is_past?
    return @start_time < Time.now
    end 

    def is_future?
    return Time.now < @start_time
    end    

    def is_soon?
    return Time.now >= @start_time - 1800
    end

    def to_s

    duration_in_minutes = @duration /60

    puts "> Titre : #{@title} "
    puts "> Date de début : #{@start_time} "
    puts "> Durée : #{duration_in_minutes} minutes"
    puts "> Invités : #{@attendee}"

    end


end


    #binding.pry
    #puts "end of file"