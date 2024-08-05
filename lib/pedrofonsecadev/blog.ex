for app <- [:earmark, :makeup_elixir] do
  Application.ensure_all_started(app)
end

defmodule Pedrofonsecadev.Blog do
  alias Pedrofonsecadev.Blog.Article

  use NimblePublisher,
    build: Article,
    from: Application.app_dir(:pedrofonsecadev, "priv/posts/**/*.md"),
    as: :articles,
    highlighters: [:makeup_elixir, :makeup_erlang]

  @articles Enum.sort_by(@articles, & &1.date, {:desc, Date})

  def all_articles, do: @articles

  def get_article_by_id!(id) do
    Enum.find(all_articles(), &(&1.id == id) || nil)
  end
end
