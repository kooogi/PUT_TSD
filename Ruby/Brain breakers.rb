#Task 3
class Integer
  def hours
    self * 60 * 60
  end

  def minutes
    self * 60
  end

  def seconds
    self
  end
end

#Task 1
class Clock
  attr_accessor :hours, :minutes, :seconds

  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def print
    puts "The current time is #{format('%02d:%02d:%02d', @hours, @minutes, @seconds)}"
  end
  #Task 1/3
  def +(time)
    total_seconds = @hours * 60 * 60 + @minutes * 60 + @seconds + time
    @hours = (total_seconds / 3600) % 24
    @minutes = (total_seconds / 60) % 60
    @seconds = total_seconds % 60
    self
  end
  #Task 3
  def -(time)
    total_seconds = @hours * 60 * 60 + @minutes * 60 + @seconds - time
    @hours = (total_seconds / 3600) % 24
    @minutes = (total_seconds / 60) % 60
    @seconds = total_seconds % 60
    self
  end

  def ==(other)
    puts @hours == other.hours && @minutes == other.minutes && @seconds == other.seconds
  end

  #Task 2
  def self.measure_time
    start_time = Time.now
    yield if block_given?
    end_time = Time.now
    elapsed_time = end_time - start_time
    puts "#{elapsed_time.round} seconds elapsed"
  end
end

puts 'Task 1:'
clock = Clock.new(10, 0, 0)
clock.print  # The current time is 10:00:00
clock += 30.minutes #modified because of the last task that allows adding and substacting time
clock.print  # The current time is 10:30:00
clock == Clock.new(10, 30, 0)  # true
puts ''

puts 'Task 2:'
Clock.measure_time do
  puts "Something is happening here"
  sleep 3
end
# Result: 3 seconds elapsed
puts ''

puts 'Task 3:'
clock += 10.hours
clock.print  # The current time is 20:30:00
clock -= 20.hours
clock -= 31.minutes
clock.print  # The current time is 20:30:00
