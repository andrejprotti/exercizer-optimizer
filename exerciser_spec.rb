# frozen_string_literal: true

require 'json'
require 'rspec'
require './exerciser'

describe '#maximize_workout' do
  before do
    @original_input = { time: 30,
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

    @miraculous_exercise = { time: 30,
                             exercises: [
                               { id: '1', name: 'Squats', average_span: 20,
                                 average_calorie_consumption: 120 },
                               { id: '2', name: 'Arm curls', average_span:
                               10, average_calorie_consumption: 25 },
                               { id: '3', name: 'magical secret exercise', average_span: 30,
                                 average_calorie_consumption: 9999 },
                               { id: '4', name: 'Jumping jacks',
                                 average_span: 10, average_calorie_consumption: 35 }
                             ] }

    @weird_ids = { time: 30,
                   exercises: [
                     { id: '1', name: 'Squats', average_span: 20,
                       average_calorie_consumption: 120 },
                     { id: 'sponge_bob', name: 'Crabby', average_span: 15,
                       average_calorie_consumption: 55 },
                     { id: 'patrick', name: 'Patty', average_span: 27,
                       average_calorie_consumption: 30 },
                     { id: '2', name: 'Arm curls', average_span:
                     10, average_calorie_consumption: 25 },
                     { id: '4', name: 'Jumping jacks',
                       average_span: 10, average_calorie_consumption: 35 }
                   ] }
  end

  context 'correctly calculates the best workout with different inputs' do
    it { expect(maximize_workout(@original_input)[:max_calories]).to eq(155) }
    it { expect(maximize_workout(@miraculous_exercise)[:max_calories]).to eq(9999) }
    it { expect(maximize_workout(@weird_ids)[:max_calories]).to eq(155) }
  end
end
