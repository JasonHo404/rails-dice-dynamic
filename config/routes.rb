Rails.application.routes.draw do
  get("/", {controller: "dice", action: "home"})do
  end

  get("/dice/:number_of_dice/:side", {controller: "dice", action: "roll"}) do

  end
end
