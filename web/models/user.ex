defmodule Discuss.User do
  use Discuss.Web, :model
  @fields [:title, :provider, :token]

  schema " users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |>cast(params, @fields) 
    |>validate_required(@fields)
  end
end
