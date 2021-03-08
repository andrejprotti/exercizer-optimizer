# frozen_string_literal: true

require 'json'

sample_input = [time: 30,
                exercises: [
                  { id: '1', name: 'Squats', average_span: 20,
                    average_calorie_consumption: 120 },
                  { id: '2', name: 'Arm curls', average_span:
                  10, average_calorie_consumption: 25 },
                  { id: '3', name: 'Plank', average_span: 2,
                    average_calorie_consumption: 10 },
                  { id: '4', name: 'Jumping jacks',
                    average_span: 10, average_calorie_consumption: 35 }
                ]]

def maximize_workout(exercises_hash)
  # total_time = exercises_hash['time']
  # go through each exercise
    # current_time = total_time
      # go through each exercise again
        # try to add it to workout
          # is it = current_time?
            # then add it to possible_solutions and break
          # is it > current_time?
            # break
          # is it < current_time?
            # then add it to possible_solutions[ex1] and subtract from current time

  # max_calories_spent = 0

  # go through each possible_solution
    # calculate calories_spent
    # is calories_spent > max_calories_spent? max_calories_spent = calories_spent

  # return optimal solution in a cool json!
end

puts maximize_workout(sample_input)