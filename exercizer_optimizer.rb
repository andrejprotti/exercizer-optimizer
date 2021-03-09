# frozen_string_literal: true

require './exerciser'

input = { time: 30,
          exercises: [
            { id: '1', name: 'Squats', average_span: 20,
              average_calorie_consumption: 120 },
            { id: '2', name: 'Arm curls', average_span:
            10, average_calorie_consumption: 25 },
            { id: '3', name: 'Plank', average_span: 2,
              average_calorie_consumption: 10 },
            { id: '4', name: 'Jumping jacks',
              average_span: 10, average_calorie_consumption: 35 }
          ] }

puts maximize_workout(input)
