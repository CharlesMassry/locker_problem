class LockerProblem
  def initialize
    @lockers = Array.new(100, false)
  end
  def problem
    1.upto(100) do |student|
      @lockers.each_with_index do |locker, number|
        if (number + 1) % student == 0
          @lockers[number] = !locker
        end
          puts "#{number + 1}. #{locker}"
      end
    end
  end
end

LockerProblem.new.problem
