defmodule SmexTrack.Production.ProductionBatch do
  use Ecto.Schema
  import Ecto.Changeset

  schema "production_batches" do
    field :date, :date
    field :total_cost, :float

    has_many :production_items, SmexTrack.Production.ProductionItem
    has_many :products, SmexTrack.Production.Products

    timestamps()
  end

  @doc false
  def changeset(production_batch, attrs) do
    production_batch
    |> cast(attrs, [:date, :total_cost])
    |> validate_required([:date, :total_cost])
  end
end