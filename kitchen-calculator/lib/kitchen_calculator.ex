defmodule KitchenCalculator do

  def get_volume(volume_pair) do
    {_, numeric_component} = volume_pair
    numeric_component
  end

  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}
  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15}
  def to_milliliter(_), do: :error

  def from_milliliter({:milliliter, milliliters}, :milliliter), do: {:milliliter, milliliters}
  def from_milliliter({:milliliter, milliliters}, :cup), do: {:cup, milliliters / 240}
  def from_milliliter({:milliliter, milliliters}, :fluid_ounce), do: {:fluid_ounce, milliliters / 30}
  def from_milliliter({:milliliter, milliliters}, :teaspoon), do: {:teaspoon, milliliters / 5}
  def from_milliliter({:milliliter, milliliters}, :tablespoon), do: {:tablespoon, milliliters / 15}

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
