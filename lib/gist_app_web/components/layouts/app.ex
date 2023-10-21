defmodule GistAppWeb.Layouts.App do
  alias Phoenix.LiveView.JS

  def toggle_menu(target) do

    JS.toggle(
    to: target
    )
  end


end
