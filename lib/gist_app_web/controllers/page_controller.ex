defmodule GistAppWeb.PageController do
  use GistAppWeb, :controller

  def home(conn, _params) do

    render(conn, :home)
  end

end
