defmodule LearnEcto.RegistrationTest do
  use LearnEcto.DataCase

  alias LearnEcto.Registration

  describe "categories" do
    alias LearnEcto.Registration.Category

    import LearnEcto.RegistrationFixtures

    @invalid_attrs %{name: nil}

    test "list_categories/0 returns all categories" do
      category = category_fixture()
      assert Registration.list_categories() == [category]
    end

    test "get_category!/1 returns the category with given id" do
      category = category_fixture()
      assert Registration.get_category!(category.id) == category
    end

    test "create_category/1 with valid data creates a category" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Category{} = category} = Registration.create_category(valid_attrs)
      assert category.name == "some name"
    end

    test "create_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Registration.create_category(@invalid_attrs)
    end

    test "update_category/2 with valid data updates the category" do
      category = category_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Category{} = category} = Registration.update_category(category, update_attrs)
      assert category.name == "some updated name"
    end

    test "update_category/2 with invalid data returns error changeset" do
      category = category_fixture()
      assert {:error, %Ecto.Changeset{}} = Registration.update_category(category, @invalid_attrs)
      assert category == Registration.get_category!(category.id)
    end

    test "delete_category/1 deletes the category" do
      category = category_fixture()
      assert {:ok, %Category{}} = Registration.delete_category(category)
      assert_raise Ecto.NoResultsError, fn -> Registration.get_category!(category.id) end
    end

    test "change_category/1 returns a category changeset" do
      category = category_fixture()
      assert %Ecto.Changeset{} = Registration.change_category(category)
    end
  end

  describe "sub_categories" do
    alias LearnEcto.Registration.SubCategory

    import LearnEcto.RegistrationFixtures

    @invalid_attrs %{name: nil}

    test "list_sub_categories/0 returns all sub_categories" do
      sub_category = sub_category_fixture()
      assert Registration.list_sub_categories() == [sub_category]
    end

    test "get_sub_category!/1 returns the sub_category with given id" do
      sub_category = sub_category_fixture()
      assert Registration.get_sub_category!(sub_category.id) == sub_category
    end

    test "create_sub_category/1 with valid data creates a sub_category" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %SubCategory{} = sub_category} = Registration.create_sub_category(valid_attrs)
      assert sub_category.name == "some name"
    end

    test "create_sub_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Registration.create_sub_category(@invalid_attrs)
    end

    test "update_sub_category/2 with valid data updates the sub_category" do
      sub_category = sub_category_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %SubCategory{} = sub_category} = Registration.update_sub_category(sub_category, update_attrs)
      assert sub_category.name == "some updated name"
    end

    test "update_sub_category/2 with invalid data returns error changeset" do
      sub_category = sub_category_fixture()
      assert {:error, %Ecto.Changeset{}} = Registration.update_sub_category(sub_category, @invalid_attrs)
      assert sub_category == Registration.get_sub_category!(sub_category.id)
    end

    test "delete_sub_category/1 deletes the sub_category" do
      sub_category = sub_category_fixture()
      assert {:ok, %SubCategory{}} = Registration.delete_sub_category(sub_category)
      assert_raise Ecto.NoResultsError, fn -> Registration.get_sub_category!(sub_category.id) end
    end

    test "change_sub_category/1 returns a sub_category changeset" do
      sub_category = sub_category_fixture()
      assert %Ecto.Changeset{} = Registration.change_sub_category(sub_category)
    end
  end

  describe "user_categories" do
    alias LearnEcto.Registration.UserCategory

    import LearnEcto.RegistrationFixtures

    @invalid_attrs %{}

    test "list_user_categories/0 returns all user_categories" do
      user_category = user_category_fixture()
      assert Registration.list_user_categories() == [user_category]
    end

    test "get_user_category!/1 returns the user_category with given id" do
      user_category = user_category_fixture()
      assert Registration.get_user_category!(user_category.id) == user_category
    end

    test "create_user_category/1 with valid data creates a user_category" do
      valid_attrs = %{}

      assert {:ok, %UserCategory{} = user_category} = Registration.create_user_category(valid_attrs)
    end

    test "create_user_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Registration.create_user_category(@invalid_attrs)
    end

    test "update_user_category/2 with valid data updates the user_category" do
      user_category = user_category_fixture()
      update_attrs = %{}

      assert {:ok, %UserCategory{} = user_category} = Registration.update_user_category(user_category, update_attrs)
    end

    test "update_user_category/2 with invalid data returns error changeset" do
      user_category = user_category_fixture()
      assert {:error, %Ecto.Changeset{}} = Registration.update_user_category(user_category, @invalid_attrs)
      assert user_category == Registration.get_user_category!(user_category.id)
    end

    test "delete_user_category/1 deletes the user_category" do
      user_category = user_category_fixture()
      assert {:ok, %UserCategory{}} = Registration.delete_user_category(user_category)
      assert_raise Ecto.NoResultsError, fn -> Registration.get_user_category!(user_category.id) end
    end

    test "change_user_category/1 returns a user_category changeset" do
      user_category = user_category_fixture()
      assert %Ecto.Changeset{} = Registration.change_user_category(user_category)
    end
  end
end
