defmodule LearnEcto.Repo.Migrations.CreateSubCategories do
  use Ecto.Migration

  def change do
    create table(:sub_categories) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
