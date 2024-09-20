defmodule Lasagna do
  @moduledoc """
  Lasagna is a delicious and popular dish in Italy. This module provides a
  way to calculate the expected oven time for a delicious lasagna.
  """

  @minutes_to_prepare_per_layer 2

  @spec expected_minutes_in_oven :: pos_integer()
  def expected_minutes_in_oven, do: 40

  @spec remaining_minutes_in_oven(pos_integer()) :: pos_integer()
  def remaining_minutes_in_oven(minutes_spent_in_oven),
    do: expected_minutes_in_oven() - minutes_spent_in_oven

  @spec preparation_time_in_minutes(pos_integer()) :: pos_integer()
  def preparation_time_in_minutes(layers), do: @minutes_to_prepare_per_layer * layers

  @spec total_time_in_minutes(pos_integer(), pos_integer()) :: pos_integer()
  def total_time_in_minutes(layers, minutes_spent_in_oven),
    do: preparation_time_in_minutes(layers) + minutes_spent_in_oven

  @spec alarm :: String.t()
  def alarm, do: "Ding!"
end
