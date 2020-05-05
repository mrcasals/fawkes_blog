defmodule FawkesBlog.BlogController do
  use FawkesBlog.Web, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end
