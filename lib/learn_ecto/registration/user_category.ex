defmodule LearnEcto.Registration.UserCategory do
  use Ecto.Schema
  import Ecto.Changeset

  alias LearnEcto.Accounts.User
  alias LearnEcto.Registration.Category

  @required [:cateogry_id, :user_id]
  @already_exists "ALREADY_EXISTS"

  @primary_key false
  schema "user_categories" do
    belongs_to :user, User, primary_key: true
    belongs_to :category, Category, primary_key: true

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user_category, attrs) do
    user_category
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> foreign_key_constraint(:user_id)
    |> foreign_key_constraint(:category_id)
    |> unique_constraint(
      [:user, :category],
      name: :user_categories_user_id_category_id_index,
      message: @already_exists
    )
  end

  def map_user_categories(user, categories) do
    user_categories_existing = user.categories

    user
    |> LearnEcto.Repo.preload(:categories)
    |> Ecto.Changeset.change()
    |> Ecto.Changeset.put_assoc(:categories, user_categories_existing ++ [categories])
    |> LearnEcto.Repo.update()
  end
end
