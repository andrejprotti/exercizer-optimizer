# frozen_string_literal: true

def add_to_workout(id, current_time, exercise, possible_solutions)
  return current_time if (current_time <= 0) || (exercise[:average_span] > current_time)

  possible_solutions[id].push(exercise)
  current_time - exercise[:average_span]
end

def maximize_workout(exercises_hash)
  total_workout_time = exercises_hash[:time]
  available_exercises = exercises_hash[:exercises]

  exercise_ids = []
  possible_combinations = []
  possible_solutions = {}

  available_exercises.each do |lead_exercise|
    exercise_ids.push(lead_exercise[:id])
  end

  (1..available_exercises.length).each do |counter|
    possible_combinations.push(exercise_ids.combination(counter).to_a)
  end

  possible_combinations.each do |combination|
    combination.each do |solution|
      current_time = total_workout_time
      solution_key = solution.to_s
      possible_solutions[solution_key] = []
      solution.to_a.each do |exercise_id|
        exercise = available_exercises.select { |exs| exs[:id] == exercise_id }
        current_time = add_to_workout(solution_key, current_time, exercise[0], possible_solutions)
      end
    end
  end

  max_calories = 0
  best_workout = []

  possible_solutions.each do |solution|
    current_calories = 0

    solution[1].each do |exercise|
      current_calories += exercise[:average_calorie_consumption]
    end

    if current_calories > max_calories
      best_workout = solution[1]
      max_calories = current_calories
    end
  end

  { max_calories: max_calories, exercises: best_workout }
end
