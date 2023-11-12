defmodule LearnEcto.RegistrationFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `LearnEcto.Registration` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> LearnEcto.Registration.create_category()

    category
  end

  @doc """
  Generate a sub_category.
  """
  def sub_category_fixture(attrs \\ %{}) do
    {:ok, sub_category} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> LearnEcto.Registration.create_sub_category()

    sub_category
  end

  @doc """
  Generate a user_category.
  """
  def user_category_fixture(attrs \\ %{}) do
    {:ok, user_category} =
      attrs
      |> Enum.into(%{

      })
      |> LearnEcto.Registration.create_user_category()

    user_category
  end
end
