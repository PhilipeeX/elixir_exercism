defmodule Secrets do
  import Bitwise

  def secret_add(secret) do
    fn adder ->
      adder + secret
    end
  end

  def secret_subtract(secret) do
    fn subtractor ->
      subtractor - secret
    end
  end

  def secret_multiply(secret) do
    fn multiplier ->
      multiplier * secret
    end
  end

  def secret_divide(secret) do
    fn divider ->
      div(divider, secret)
    end
  end

  def secret_and(secret) do
    fn param ->
      param &&& secret
    end
  end

  def secret_xor(secret) do
    fn param ->
      param ^^^ secret
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      param
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
