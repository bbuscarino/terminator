defmodule Terminator.Repo.Migrations.CreateAbilitiesTable do
  use Ecto.Migration

  def change do
    create_if_not_exists table(:terminator_abilities) do
      add(:identifier, :string)
      add(:name, :string, size: 255)

      timestamps()
    end

    create_if_not_exists(unique_index(:terminator_abilities, [:identifier]))
  end
end
