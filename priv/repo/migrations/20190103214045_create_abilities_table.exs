defmodule Terminator.Repo.Migrations.CreateAbilitiesTable do
  use Ecto.Migration
  import Terminator.Migrations

  def change do
    abilities()
  end
end
