defmodule Terminator.Repo.Migrations.CreateRolesTable do
  use Ecto.Migration
  import Terminator.Migrations

  def change do
    roles()
  end
end
