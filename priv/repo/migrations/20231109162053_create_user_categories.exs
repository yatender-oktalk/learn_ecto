defmodule LearnEcto.Repo.Migrations.CreateUserCategories do
  use Ecto.Migration

  def change do
    create table(:user_categories) do
      add :category_id, references(:categories, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:user_categories, [:category_id])
    create index(:user_categories, [:user_id])
  end
end
