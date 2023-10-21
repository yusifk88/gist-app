defmodule GistAppWeb.CreateGistLive do
  use GistAppWeb, :live_view

  alias GistApp.{Gists,Gists.Gist}

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do

    socket = assign(
      socket,
      form: to_form(Gists.change_gist(%Gist{}))
    )

    {:ok, socket}

  end

@impl true
  def handle_event("create", %{"gist" => params}, socket) do

      case Gists.create_gist(socket.assings.current_user,params) do
        {:ok, _gist} ->
          changeset = Gists.change_gist(%Gist{})

          {:noreply, assign(socket, :form, to_form(changeset))}

          {:error, %Ecto.Changeset{}=changeset}->

            {:noreply, assign(socket, :form, to_form(changeset))}

      end

  end




end
