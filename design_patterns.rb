
# 1. Creational Design Pattern: Singleton
class Logger
    @@instance = nil
  
    def initialize
      raise 'Singleton class, use Logger.instance instead.' if @@instance
      @@instance = self
    end
  
    def self.instance
      @@instance ||= Logger.new
    end
  
    def log(message)
     
    end
  end
  
  logger1 = Logger.instance
  logger1.log("Log message 1")
  
  logger2 = Logger.instance
  logger2.log("Log message 2")
  
  puts logger1 == logger2  
# 2. Structural Design Pattern: Proxy
# Subject Interface
class Image
    def display
      raise NotImplementedError, "Subclasses must implement this method"
    end
  end
  
  class RealImage < Image
    def initialize(filename)
      @filename = filename
      load_image_from_disk
    end
  
    def display
      puts "Displaying image #{@filename}"
    end
  
    private
  
    def load_image_from_disk
      puts "Loading image #{@filename} from disk"
    end
  end
  
  class ProxyImage < Image
    def initialize(filename)
      @filename = filename
      @real_image = nil
    end
  
    def display
    
      @real_image ||= RealImage.new(@filename)
      @real_image.display
    end
  end
  
 
  image1 = ProxyImage.new("image1.jpg")
  image2 = ProxyImage.new("image2.jpg")
  
  image1.display  
  image1.display  
  image2.display 
  


# 3. Behavioral Design Pattern: Observer
class Employee
    attr_reader :name, :title
    attr_reader :salary
    def initialize( name, title, salary)
      @name = name
      @title = title
      @salary = salary
      @observers = []
    end
    def salary=(new_salary)
      @salary = new_salary
      notify_observers
    end
    def add_observer(observer)
      @observers << observer
    end
    def delete_observer(observer)
      @observers.delete(observer)
    end
    def notify_observers
      @observers.each do |observer|
        observer.update(self)
      end
    end
  end

  class Payroll
  def update(employee)
    puts "#{employee.name}'s salary has been updated to $#{employee.salary}"
  end
end

employee = Employee.new("John Doe", "Developer", 50000)
payroll_observer = Payroll.new

employee.add_observer(payroll_observer)

employee.salary = 55000

  