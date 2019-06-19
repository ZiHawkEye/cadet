defmodule Cadet.Repo.Migrations.CreateMaterials do
  use Ecto.Migration

  def change do
    create table(:materials) do
      add(:title, :string, null: false)
      add(:description, :string)
      add(:uploader_id, references(:users, on_delete: :nilify_all))
      add(:file, :string)
      timestamps()
    end

    create(index(:materials, [:uploader_id]))
  end
end
