defmodule Lasagna do
  @minutes_per_layer 2

  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(minutes) do
    expected_minutes_in_oven() - minutes
  end

  def preparation_time_in_minutes(layers) do
    @minutes_per_layer * layers
  end

  def total_time_in_minutes(layers, minutes_in_the_oven) do
    preparation_time_in_minutes(layers) + minutes_in_the_oven
  end

  def alarm do
    "Ding!"
  end
end
