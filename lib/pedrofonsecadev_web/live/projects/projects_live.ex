defmodule PedrofonsecadevWeb.ProjectsLive do
  use PedrofonsecadevWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Projects")}
  end

  def handle_params(_unsigned_params, _uri, socket) do
    {:noreply, socket}
  end
end
