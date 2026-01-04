defmodule RentWeb.UserSessionController do
  use RentWeb, :controller

  alias Rent.Accounts
  alias RentWeb.UserAuth

  def create(conn, %{"token" => token}) do
    case Accounts.login_user_by_magic_link(token) do
      {:ok, {user, tokens_to_disconnect}} ->
        UserAuth.disconnect_sessions(tokens_to_disconnect)

        conn
        |> put_flash(:info, "Welcome back!")
        |> UserAuth.log_in_user(user, %{"remember_me" => "true"})

      :error ->
        conn
        |> put_flash(:error, "The link is invalid or it has expired.")
        |> redirect(to: ~p"/users/log-in")
    end
  end

  def create(conn, %{"user" => %{"token" => token}}) do
    case Accounts.login_user_by_magic_link(token) do
      {:ok, {user, tokens_to_disconnect}} ->
        UserAuth.disconnect_sessions(tokens_to_disconnect)

        conn
        |> put_flash(:info, "Welcome back!")
        |> UserAuth.log_in_user(user, %{"remember_me" => "true"})

      :error ->
        conn
        |> put_flash(:error, "The link is invalid or it has expired.")
        |> redirect(to: ~p"/users/log-in")
    end
  end

  def delete(conn, _params) do
    conn
    |> put_flash(:info, "Logged out successfully.")
    |> UserAuth.log_out_user()
  end
end
