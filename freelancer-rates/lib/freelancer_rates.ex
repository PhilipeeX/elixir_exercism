defmodule FreelancerRates do
  @daily_base_rate 8.0
  @monthly_base_rate 22

  def daily_rate(hourly_rate) do
    @daily_base_rate * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    total = @monthly_base_rate * (@daily_base_rate * hourly_rate)
    Float.ceil(apply_discount(total, discount))
    |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily = daily_rate(hourly_rate)
    Float.floor(budget / apply_discount(daily, discount), 1)
  end
end
