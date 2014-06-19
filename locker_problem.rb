class LockerProblem

  def initialize
    @lockers = Array.new(100, false)
  end

  def problem
    students_turn
    print_result
  end

  private
  def students_turn
    1.upto(100) do |student|
      iterate_through_lockers(student)
    end
  end

  def iterate_through_lockers(student)
    @lockers.each_with_index do |locker, number|
      toggle(locker, number, student)
    end
  end

  def toggle(locker, number, student)
    if (number + 1) % student == 0
      @lockers[number] = !locker
    end
  end

  def print_result
    @lockers.each_with_index do |locker, number|
      if locker == true
        locker = "open"
      else
        locker = "closed"
      end
      puts "#{number + 1}. #{locker}"
    end
  end
end

LockerProblem.new.problem
