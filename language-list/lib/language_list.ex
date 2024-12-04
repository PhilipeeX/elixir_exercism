defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    list
    |> tl
  end

  def first(list) do
    list
    |> hd
  end

  def count(list) do
    list
    |> length
  end

  def functional_list?(list) do
    cond do
      Enum.member?(list, "Elixir") -> true
      true -> false
    end
  end
end
