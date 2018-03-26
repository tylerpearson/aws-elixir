# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Budgets do
  @moduledoc """
  Budgets enable you to plan your service usage, service costs, and your RI
  utilization. You can also track how close your plan is to your budgeted
  amount or to the free tier limits. Budgets provide you with a quick way to
  see your usage-to-date and current estimated charges from AWS and to see
  how much your predicted usage accrues in charges by the end of the month.
  Budgets also compare current estimates and charges to the amount that you
  indicated you want to use or spend and lets you see how much of your budget
  has been used. AWS updates your budget status several times a day. Budgets
  track your unblended costs, subscriptions, and refunds. You can create the
  following types of budgets:

  <ul> <li> Cost budgets allow you to say how much you want to spend on a
  service.

  </li> <li> Usage budgets allow you to say how many hours you want to use
  for one or more services.

  </li> <li> RI utilization budgets allow you to define a utilization
  threshold and receive alerts when RIs are tracking below that threshold.

  </li> </ul> You can create up to 20,000 budgets per AWS master account.
  Your first two budgets are free of charge. Each additional budget costs
  $0.02 per day. You can set up optional notifications that warn you if you
  exceed, or are forecasted to exceed, your budgeted amount. You can have
  notifications sent to an Amazon SNS topic, to an email address, or to both.
  For more information, see [Creating an Amazon SNS Topic for Budget
  Notifications](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-sns-policy.html).
  AWS Free Tier usage alerts via AWS Budgets are provided for you, and do not
  count toward your budget limits.

  Service Endpoint

  The AWS Budgets API provides the following endpoint:

  <ul> <li> https://budgets.us-east-1.amazonaws.com

  </li> </ul>
  """

  @doc """
  Creates a budget and, if included, notifications and subscribers.
  """
  def create_budget(client, input, options \\ []) do
    request(client, "CreateBudget", input, options)
  end

  @doc """
  Creates a notification. You must create the budget before you create the
  associated notification.
  """
  def create_notification(client, input, options \\ []) do
    request(client, "CreateNotification", input, options)
  end

  @doc """
  Creates a subscriber. You must create the associated budget and
  notification before you create the subscriber.
  """
  def create_subscriber(client, input, options \\ []) do
    request(client, "CreateSubscriber", input, options)
  end

  @doc """
  Deletes a budget. You can delete your budget at any time.

  **Deleting a budget also deletes the notifications and subscribers
  associated with that budget.**
  """
  def delete_budget(client, input, options \\ []) do
    request(client, "DeleteBudget", input, options)
  end

  @doc """
  Deletes a notification.

  **Deleting a notification also deletes the subscribers associated with the
  notification.**
  """
  def delete_notification(client, input, options \\ []) do
    request(client, "DeleteNotification", input, options)
  end

  @doc """
  Deletes a subscriber.

  **Deleting the last subscriber to a notification also deletes the
  notification.**
  """
  def delete_subscriber(client, input, options \\ []) do
    request(client, "DeleteSubscriber", input, options)
  end

  @doc """
  Describes a budget.
  """
  def describe_budget(client, input, options \\ []) do
    request(client, "DescribeBudget", input, options)
  end

  @doc """
  Lists the budgets associated with an account.
  """
  def describe_budgets(client, input, options \\ []) do
    request(client, "DescribeBudgets", input, options)
  end

  @doc """
  Lists the notifications associated with a budget.
  """
  def describe_notifications_for_budget(client, input, options \\ []) do
    request(client, "DescribeNotificationsForBudget", input, options)
  end

  @doc """
  Lists the subscribers associated with a notification.
  """
  def describe_subscribers_for_notification(client, input, options \\ []) do
    request(client, "DescribeSubscribersForNotification", input, options)
  end

  @doc """
  Updates a budget. You can change every part of a budget except for the
  `budgetName` and the `calculatedSpend`. When a budget is modified, the
  `calculatedSpend` drops to zero until AWS has new usage data to use for
  forecasting.
  """
  def update_budget(client, input, options \\ []) do
    request(client, "UpdateBudget", input, options)
  end

  @doc """
  Updates a notification.
  """
  def update_notification(client, input, options \\ []) do
    request(client, "UpdateNotification", input, options)
  end

  @doc """
  Updates a subscriber.
  """
  def update_subscriber(client, input, options \\ []) do
    request(client, "UpdateSubscriber", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "budgets"}
    host = get_host("budgets", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSBudgetServiceGateway.#{action}"}]
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
