# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.AppStream do
  @moduledoc """
  Amazon AppStream 2.0

  You can use Amazon AppStream 2.0 to stream desktop applications to any
  device running a web browser, without rewriting them.
  """

  @doc """
  Associates the specified fleet with the specified stack.
  """
  def associate_fleet(client, input, options \\ []) do
    request(client, "AssociateFleet", input, options)
  end

  @doc """
  Copies the image within the same region or to a new region within the same
  AWS account. Note that any tags you added to the image will not be copied.
  """
  def copy_image(client, input, options \\ []) do
    request(client, "CopyImage", input, options)
  end

  @doc """
  Creates a directory configuration.
  """
  def create_directory_config(client, input, options \\ []) do
    request(client, "CreateDirectoryConfig", input, options)
  end

  @doc """
  Creates a fleet.
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Creates an image builder.

  The initial state of the builder is `PENDING`. When it is ready, the state
  is `RUNNING`.
  """
  def create_image_builder(client, input, options \\ []) do
    request(client, "CreateImageBuilder", input, options)
  end

  @doc """
  Creates a URL to start an image builder streaming session.
  """
  def create_image_builder_streaming_u_r_l(client, input, options \\ []) do
    request(client, "CreateImageBuilderStreamingURL", input, options)
  end

  @doc """
  Creates a stack.
  """
  def create_stack(client, input, options \\ []) do
    request(client, "CreateStack", input, options)
  end

  @doc """
  Creates a URL to start a streaming session for the specified user.
  """
  def create_streaming_u_r_l(client, input, options \\ []) do
    request(client, "CreateStreamingURL", input, options)
  end

  @doc """
  Deletes the specified directory configuration.
  """
  def delete_directory_config(client, input, options \\ []) do
    request(client, "DeleteDirectoryConfig", input, options)
  end

  @doc """
  Deletes the specified fleet.
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  Deletes the specified image. You cannot delete an image that is currently
  in use. After you delete an image, you cannot provision new capacity using
  the image.
  """
  def delete_image(client, input, options \\ []) do
    request(client, "DeleteImage", input, options)
  end

  @doc """
  Deletes the specified image builder and releases the capacity.
  """
  def delete_image_builder(client, input, options \\ []) do
    request(client, "DeleteImageBuilder", input, options)
  end

  @doc """
  Deletes the specified stack. After this operation completes, the
  environment can no longer be activated and any reservations made for the
  stack are released.
  """
  def delete_stack(client, input, options \\ []) do
    request(client, "DeleteStack", input, options)
  end

  @doc """
  Describes the specified directory configurations. Note that although the
  response syntax in this topic includes the account password, this password
  is not returned in the actual response.
  """
  def describe_directory_configs(client, input, options \\ []) do
    request(client, "DescribeDirectoryConfigs", input, options)
  end

  @doc """
  Describes the specified fleets or all fleets in the account.
  """
  def describe_fleets(client, input, options \\ []) do
    request(client, "DescribeFleets", input, options)
  end

  @doc """
  Describes the specified image builders or all image builders in the
  account.
  """
  def describe_image_builders(client, input, options \\ []) do
    request(client, "DescribeImageBuilders", input, options)
  end

  @doc """
  Describes the specified images or all images in the account.
  """
  def describe_images(client, input, options \\ []) do
    request(client, "DescribeImages", input, options)
  end

  @doc """
  Describes the streaming sessions for the specified stack and fleet. If a
  user ID is provided, only the streaming sessions for only that user are
  returned. If an authentication type is not provided, the default is to
  authenticate users using a streaming URL.
  """
  def describe_sessions(client, input, options \\ []) do
    request(client, "DescribeSessions", input, options)
  end

  @doc """
  Describes the specified stacks or all stacks in the account.
  """
  def describe_stacks(client, input, options \\ []) do
    request(client, "DescribeStacks", input, options)
  end

  @doc """
  Disassociates the specified fleet from the specified stack.
  """
  def disassociate_fleet(client, input, options \\ []) do
    request(client, "DisassociateFleet", input, options)
  end

  @doc """
  Stops the specified streaming session.
  """
  def expire_session(client, input, options \\ []) do
    request(client, "ExpireSession", input, options)
  end

  @doc """
  Lists the fleets associated with the specified stack.
  """
  def list_associated_fleets(client, input, options \\ []) do
    request(client, "ListAssociatedFleets", input, options)
  end

  @doc """
  Lists the stacks associated with the specified fleet.
  """
  def list_associated_stacks(client, input, options \\ []) do
    request(client, "ListAssociatedStacks", input, options)
  end

  @doc """
  Lists the tags for the specified AppStream 2.0 resource. You can tag
  AppStream 2.0 image builders, images, fleets, and stacks.

  For more information about tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Developer Guide*.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Starts the specified fleet.
  """
  def start_fleet(client, input, options \\ []) do
    request(client, "StartFleet", input, options)
  end

  @doc """
  Starts the specified image builder.
  """
  def start_image_builder(client, input, options \\ []) do
    request(client, "StartImageBuilder", input, options)
  end

  @doc """
  Stops the specified fleet.
  """
  def stop_fleet(client, input, options \\ []) do
    request(client, "StopFleet", input, options)
  end

  @doc """
  Stops the specified image builder.
  """
  def stop_image_builder(client, input, options \\ []) do
    request(client, "StopImageBuilder", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AppStream 2.0
  resource. You can tag AppStream 2.0 image builders, images, fleets, and
  stacks.

  Each tag consists of a key and an optional value. If a resource already has
  a tag with the same key, this operation updates its value.

  To list the current tags for your resources, use `ListTagsForResource`. To
  disassociate tags from your resources, use `UntagResource`.

  For more information about tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Developer Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Disassociates the specified tags from the specified AppStream 2.0 resource.

  To list the current tags for your resources, use `ListTagsForResource`.

  For more information about tags, see [Tagging Your
  Resources](http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Developer Guide*.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the specified directory configuration.
  """
  def update_directory_config(client, input, options \\ []) do
    request(client, "UpdateDirectoryConfig", input, options)
  end

  @doc """
  Updates the specified fleet.

  If the fleet is in the `STOPPED` state, you can update any attribute except
  the fleet name. If the fleet is in the `RUNNING` state, you can update the
  `DisplayName` and `ComputeCapacity` attributes. If the fleet is in the
  `STARTING` or `STOPPING` state, you can't update it.
  """
  def update_fleet(client, input, options \\ []) do
    request(client, "UpdateFleet", input, options)
  end

  @doc """
  Updates the specified stack.
  """
  def update_stack(client, input, options \\ []) do
    request(client, "UpdateStack", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "appstream2"}
    host = get_host("appstream2", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "PhotonAdminProxyService.#{action}"}]
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
