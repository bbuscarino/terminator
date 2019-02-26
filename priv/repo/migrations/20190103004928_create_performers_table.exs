defmodule Terminator.Repo.Migrations.CreatePerformersTable do
  use Ecto.Migration
  import Terminator.Migrations

  def change do
    performers()
  end
end
