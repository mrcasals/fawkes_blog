defmodule FawkesBlog.Router do
  use FawkesBlog.Web, :router

  defmacro __using__(_opts \\ []) do
    quote do
      import unquote(__MODULE__)
    end
  end

  defmacro blog_routes(_opts \\ []) do
    quote do
      pipeline :blog_layout do
        plug(:put_layout, {FawkesBlog.BlogLayoutView, "app.html"})
      end

      scope "/blog", FawkesBlog do
        pipe_through(:browser)
        pipe_through(:blog_layout)

        get("/", BlogController, :index)
      end
    end
  end
end
