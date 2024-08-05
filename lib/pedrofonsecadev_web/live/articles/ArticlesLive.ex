defmodule PedrofonsecadevWeb.ArticlesLive do
  alias Pedrofonsecadev.Blog
  use PedrofonsecadevWeb, :live_view

  def mount(_params, _session, socket) do
    articles = Blog.all_articles()

    {:ok, assign(socket, :articles, articles) |> assign(:page_title, "Articles")}
  end

  def handle_params(_unsigned_params, _uri, socket) do
    {:noreply, socket}
  end
end
