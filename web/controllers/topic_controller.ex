defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, params) do
    changset = Topic.changeset(%Topic{}, %{})
  end

end