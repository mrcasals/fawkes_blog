defmodule FawkesBlog.Web do
  def router do
    quote do
      use Phoenix.Router
    end
  end

  def controller do
    quote do
      use Phoenix.Controller
    end
  end

  def view do
    quote do
      require Logger

      file_path =
        __ENV__.file
        |> Path.dirname()
        |> String.split("/views")
        |> hd
        |> Path.join("templates")

      use Phoenix.View, root: file_path
      # use Phoenix.View, root: "web/templates"

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
