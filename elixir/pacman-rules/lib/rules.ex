defmodule Rules do
  @moduledoc """
  This module provides the rules for the game of PacMan.
  """

  def eat_ghost?(_power_pellet_active? = true, _touching_ghost? = true), do: true
  def eat_ghost?(_, _), do: false

  def score?(touching_power_pellet?, touching_dot?)
      when touching_power_pellet? or touching_dot?,
      do: true

  def score?(_, _), do: false

  def lose?(_power_pellet_active? = false, _touching_ghost? = true), do: true
  def lose?(_, _), do: false

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    has_eaten_all_dots? and not lose?(power_pellet_active?, touching_ghost?)
  end
end
