class Application

  def initialize
    @eval_template_instance = "%s.new"
    @array_class = []
    
    #include *.rb
    Dir['samples/*.rb'].each{ |f| require_relative f }
    
    #Add classes in an array
    Dir["samples/*.rb"].each do |file| require_relative file 
      file_name = File.basename(file, '.rb')
      @array_class.push(camel_case(file_name))
    end
    
    run
  end
  
  def run
    for some_class in @array_class
      instance_cmd = @eval_template_instance % some_class
      dynamic_instance = eval(instance_cmd)
      dynamic_instance.desc
      dynamic_instance.run
    end
  end
  
  def camel_case(str)
    return str if str !~ /_/ && str =~ /[A-Z]+.*/
    str.split('_').map{|e| e.capitalize}.join
  end
  
end

Application.new