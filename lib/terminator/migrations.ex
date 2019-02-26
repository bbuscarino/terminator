defmodule Terminator.Migrations do
  @moduledoc """
  Allow Terminator's migrations to be included inside another app's migrations. Useful for the case of migrations being a release task.
  """

  defmacro performers() do
    quote do
      create_if_not_exists table(:terminator_performers) do
        add(:abilities, {:array, :string}, default: [])

        timestamps()
      end
    end
  end

  defmacro roles() do
    quote do
      create_if_not_exists table(:terminator_roles) do
        add(:identifier, :string)
        add(:name, :string, size: 255)
        add(:abilities, {:array, :string}, default: [])

        timestamps()
      end

      create_if_not_exists(unique_index(:terminator_roles, [:identifier]))
    end
  end

  defmacro performer_roles() do
    quote do
      create_if_not_exists table(:terminator_performers_roles) do
        add(:performer_id, references(:terminator_performers))
        add(:role_id, references(:terminator_roles))

        timestamps()
      end
    end
  end

  defmacro abilities() do
    quote do
      create_if_not_exists table(:terminator_abilities) do
        add(:identifier, :string)
        add(:name, :string, size: 255)

        timestamps()
      end

      create_if_not_exists(unique_index(:terminator_abilities, [:identifier]))
    end
  end

  defmacro entities() do
    quote do
      create_if_not_exists table(:terminator_performers_entities) do
        add(:performer_id, references(Terminator.Performer.table()))
        add(:assoc_id, :integer)
        add(:assoc_type, :string)
        add(:abilities, {:array, :string})

        timestamps()
      end
    end
  end
end
