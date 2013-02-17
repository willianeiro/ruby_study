require_relative "../interface/Test_Runner"

class RescueTest < TestRunner
  
  def run
    divisor = 0
    begin
      puts "try 1/#{divisor}"
      result = 1/divisor
      puts "Division result: #{result}"
    rescue
      puts "divisor is zero, changing to 1"
      divisor = 1
      retry
    end
  end
  
  def desc
    puts "\n---- Begin Rescue Test ----\n\n"
  end
  
end