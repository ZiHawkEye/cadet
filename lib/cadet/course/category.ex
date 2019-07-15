defmodule Cadet.Course.Category do
  @moduledoc """
  Category represents a Material category
  """
  use Cadet, :model
  use Arc.Ecto.Schema

  alias Cadet.Course.{Material, Upload}

  schema "categories" do
    field(:name, :string)

    has_many(:child, Material)

    timestamps()
  end

  @required_fields ~w(name)a

  def changeset(category, params \\ %{}) do
    category
    |> cast(params, [:name])
    |> validate_required(@required_fields)
  end
end
