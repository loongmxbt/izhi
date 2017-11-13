defmodule IzhiWeb.PageController do
  use IzhiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
