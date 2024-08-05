defmodule PedrofonsecadevWeb.ArticleLive do
  alias Pedrofonsecadev.Blog
  use PedrofonsecadevWeb, :live_view

  def mount(params, _session, socket) do
    article = Blog.get_article_by_id!(params["id"])

    {:ok, assign(socket, :article, article) |> assign(:page_title, article.title)}
  end

  def handle_params(_unsigned_params, _uri, socket) do
    {:noreply, socket}
  end
end
