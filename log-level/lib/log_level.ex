defmodule LogLevel do
  @log_codes [:trace, :debug, :info, :warning, :error, :fatal]

  def to_label(level, legacy?) do
    x =
      cond do
        level > 5
        (legacy? && level == 0) || level == 5
      end

    if x == true do
      :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  end
end
