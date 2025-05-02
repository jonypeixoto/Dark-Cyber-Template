defmodule DarkCyber do
  @moduledoc """
  In a land shrouded in mystery...
  """

  defstruct [:name, :construction_year, :destruction_year, :features]

  def new(props) do
    %__MODULE__{
      name: props[:name],
      construction_year: props[:construction_year],
      destruction_year: props[:destruction_year],
      features: props[:features]
    }
  end
  
  def age(cyber) do
    calc_age(cyber)
  end

  defp calc_age(cyber) do
    cyber.destruction_year - cyber.construction_year
  end
end

# ...there stood a Dark Cyber

windfall_keep = DarkCyber.new(
  name: "Windfall Keep",
  construction_year: 1100,
  destruction_year: 1678,
  features: ["Mystical Lights", "Ancient Walls"]
)

IO.puts("The age of #{windfall_keep.name} is #{DarkCyber.age(windfall_keep)} years.")
