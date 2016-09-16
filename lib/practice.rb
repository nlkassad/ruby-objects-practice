require 'csv'

# class stops_between_stations
#   def initialize
#   end

class Station
  attr_reader :type, :line, :station

  def initialize(system_data)
    @type = system_data[:type]
    @line = system_data[:line]
    @station = system_data[:station]
  end
end

class RedLine
  attr_reader :stations
  def initialize
    @stations = []
    CSV.foreach('data/mbtasubway.csv',
                headers: true,
                header_converters: -> (h) { h.downcase.to_sym }) do |station|
      #puts pet.to_s
      puts station.to_s
      @stations << Station.new(station.to_hash)
    end
  end
end

# A namespace
# module MBTA
#   module Subway
    # All of the subway lines
    # class System
    #   def initialize
    #   end
    #
    #   def stops_between_stations
    #   end

      # return true if handling multiple intersections
    #   def self.stretch
    #   end
    # end
    # One line, all the stations on that line
    # class Line
    # end
    # One station
#     class Station
#     end
#   end
# end
