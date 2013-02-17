require_relative "../interface/Test_Runner"

class LoopTest < TestRunner
  def run
    
    loop_for
    loop_while
    loop_until
    loop_each
    loop_times
    loop_begin_while
    
  end
  
  def desc
    puts "\n----- Loop Test ----\n"
  end
  
  def loop_for
    puts "-- loop for--\n"
    puts "['apples', 'oranges', 'pears', 'apricots']\n"
    fruits = ['apples', 'oranges', 'pears', 'apricots']
    
    for fruit in fruits
      puts fruit
    end 
  end
  
  def loop_while
    puts "\n-- loop while--\n"    
    
    puts "0 .. 4"
    
    i = 0
    while i < 5
      puts "cont #{i}"
      i +=1
    end
    
    def loop_until
      puts "\n-- until --\n"
      puts "0 .. 4"
      
      i = 0
      until i == 5
      puts "cont #{i}"
        i += 1
      end
    end
    
    def loop_each
      puts "\n-- each --"
      puts "['joao', 'maria', 'pedro', 'madalena']"
      
      names = ['joao', 'maria', 'pedro', 'madalena']
      
      names.each do |name|
        puts "each: #{name}"
      end
    end
    
    def loop_times
      puts "\n-- times --"
      puts "3.times"
      
      3.times do
        puts "exibir 3 vezes"
      end
    end
    
    def loop_begin_while
      puts "\n-- begin while --"
      
      puts "5 .. 1"
      
      i = 5
      
      begin
        puts i
        
        i -=1
      end while i != 0
    end
    
  end
end