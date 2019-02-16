defmodule Terminator.Repo.Migrations.CreatePerformersTable do
  use Ecto.Migration

  def change do
    create_if_not_exists table(:terminator_performers) do
      add(:abilities, {:array, :string}, default: [])

      timestamps()
    end
  end
end
