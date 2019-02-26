defmodule Terminator.Repo.Migrations.CreatePerformersRolesTable do
  use Ecto.Migration
  import Terminator.Migrations

  def change do
    performer_roles()
  end
end
