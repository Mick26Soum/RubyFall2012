require "target_weight/version"

class TargetWeight
  #class CalcWeight
    # Base height for both sex is 5ft == 60inches

    #Target Weight Formula for Male
    # 110.23lbs + 5.07058lbs * additional inches above base of 60 inches (5ft)

    #Target Weight Formula for Female
    # 100.31lbs + 5.07058lbs * additional inches above base of 60 inches (5ft)

    attr_accessor :name, :height, :weight, :sex

    def name
      puts = "Please enter your name"
      @name = gets.chomp
    end

    def height
      puts = "Please enter your height in inches (i.e. 5ft = 60inches)"
      @height = gets.chomp
    end

    def weight
      puts = "Please enter your weight in lbs with out symbol (i.e. 150, 160)"
      @weight = gets.chomp
    end

    def sex
      puts = "Please enter your sex (M/F)"
      @sex = gets.chomp
    end


    def user_weight()
      if sex == "M"
       target = 110.23 +(5.0705 *((@height.to_i) - 60))
       puts "Your weight is #{@weight.to_i - target}lbs from your target of #{target}lbs"
      else
      target = 100.31 +(5.0705 *((@height.to_i) - 60))
      puts "Your weight is #{@weight.to_i - target}lbs from your target of #{target}lbs"
      end
    end

  #end
end
