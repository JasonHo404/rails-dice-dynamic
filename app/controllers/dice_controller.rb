class DiceController < ApplicationController

  def home
    render({template: "game_templates/home"})
  end

  def roll
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("side").to_i
    @rolls = []
    @num_dice.times do
        
      @rolls.push(rand(1..@sides))
    end
    render({template: "game_templates/roll"})
  end
end
