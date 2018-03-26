# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Workspaces do
  @moduledoc """
  Amazon WorkSpaces Service

  Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
  Windows desktops for your users.
  """

  @doc """
  Creates tags for the specified WorkSpace.
  """
  def create_tags(client, input, options \\ []) do
    request(client, "CreateTags", input, options)
  end

  @doc """
  Creates one or more WorkSpaces.

  This operation is asynchronous and returns before the WorkSpaces are
  created.
  """
  def create_workspaces(client, input, options \\ []) do
    request(client, "CreateWorkspaces", input, options)
  end

  @doc """
  Deletes the specified tags from a WorkSpace.
  """
  def delete_tags(client, input, options \\ []) do
    request(client, "DeleteTags", input, options)
  end

  @doc """
  Describes the tags for the specified WorkSpace.
  """
  def describe_tags(client, input, options \\ []) do
    request(client, "DescribeTags", input, options)
  end

  @doc """
  Describes the available WorkSpace bundles.

  You can filter the results using either bundle ID or owner, but not both.
  """
  def describe_workspace_bundles(client, input, options \\ []) do
    request(client, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
  Describes the available AWS Directory Service directories that are
  registered with Amazon WorkSpaces.
  """
  def describe_workspace_directories(client, input, options \\ []) do
    request(client, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
  Describes the specified WorkSpaces.

  You can filter the results using bundle ID, directory ID, or owner, but you
  can specify only one filter at a time.
  """
  def describe_workspaces(client, input, options \\ []) do
    request(client, "DescribeWorkspaces", input, options)
  end

  @doc """
  Describes the connection status of the specified WorkSpaces.
  """
  def describe_workspaces_connection_status(client, input, options \\ []) do
    request(client, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
  Modifies the specified WorkSpace properties.
  """
  def modify_workspace_properties(client, input, options \\ []) do
    request(client, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
  Reboots the specified WorkSpaces.

  You cannot reboot a WorkSpace unless its state is `AVAILABLE`, `IMPAIRED`,
  or `INOPERABLE`.

  This operation is asynchronous and returns before the WorkSpaces have
  rebooted.
  """
  def reboot_workspaces(client, input, options \\ []) do
    request(client, "RebootWorkspaces", input, options)
  end

  @doc """
  Rebuilds the specified WorkSpaces.

  You cannot rebuild a WorkSpace unless its state is `AVAILABLE` or `ERROR`.

  Rebuilding a WorkSpace is a potentially destructive action that can result
  in the loss of data. For more information, see [Rebuild a
  WorkSpace](http://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

  This operation is asynchronous and returns before the WorkSpaces have been
  completely rebuilt.
  """
  def rebuild_workspaces(client, input, options \\ []) do
    request(client, "RebuildWorkspaces", input, options)
  end

  @doc """
  Starts the specified WorkSpaces.

  You cannot start a WorkSpace unless it has a running mode of `AutoStop` and
  a state of `STOPPED`.
  """
  def start_workspaces(client, input, options \\ []) do
    request(client, "StartWorkspaces", input, options)
  end

  @doc """
  Stops the specified WorkSpaces.

  You cannot stop a WorkSpace unless it has a running mode of `AutoStop` and
  a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
  """
  def stop_workspaces(client, input, options \\ []) do
    request(client, "StopWorkspaces", input, options)
  end

  @doc """
  Terminates the specified WorkSpaces.

  Terminating a WorkSpace is a permanent action and cannot be undone. The
  user's data is destroyed. If you need to archive any user data, contact
  Amazon Web Services before terminating the WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  This operation is asynchronous and returns before the WorkSpaces have been
  completely terminated.
  """
  def terminate_workspaces(client, input, options \\ []) do
    request(client, "TerminateWorkspaces", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "workspaces"}
    host = get_host("workspaces", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "WorkspacesService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
