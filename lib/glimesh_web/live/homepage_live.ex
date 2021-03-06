defmodule GlimeshWeb.HomepageLive do
  use GlimeshWeb, :live_view

  @impl true
  def mount(_params, session, socket) do
    # If the viewer is logged in set their locale, otherwise it defaults to English
    if session["locale"], do: Gettext.put_locale(session["locale"])

    {:ok, socket |> assign(:page_title, "Glimesh")}
  end
end
