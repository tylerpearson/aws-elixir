# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Inspector do
  @moduledoc """
  Amazon Inspector

  Amazon Inspector enables you to analyze the behavior of your AWS resources
  and to identify potential security issues. For more information, see [
  Amazon Inspector User
  Guide](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
  """

  @doc """
  Assigns attributes (key and value pairs) to the findings that are specified
  by the ARNs of the findings.
  """
  def add_attributes_to_findings(client, input, options \\ []) do
    request(client, "AddAttributesToFindings", input, options)
  end

  @doc """
  Creates a new assessment target using the ARN of the resource group that is
  generated by `CreateResourceGroup`. If the [service-linked
  role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, also creates and registers a service-linked role
  to grant Amazon Inspector access to AWS Services needed to perform security
  assessments. You can create up to 50 assessment targets per AWS account.
  You can run up to 500 concurrent agents per AWS account. For more
  information, see [ Amazon Inspector Assessment
  Targets](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def create_assessment_target(client, input, options \\ []) do
    request(client, "CreateAssessmentTarget", input, options)
  end

  @doc """
  Creates an assessment template for the assessment target that is specified
  by the ARN of the assessment target. If the [service-linked
  role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html)
  isn’t already registered, also creates and registers a service-linked role
  to grant Amazon Inspector access to AWS Services needed to perform security
  assessments.
  """
  def create_assessment_template(client, input, options \\ []) do
    request(client, "CreateAssessmentTemplate", input, options)
  end

  @doc """
  Creates a resource group using the specified set of tags (key and value
  pairs) that are used to select the EC2 instances to be included in an
  Amazon Inspector assessment target. The created resource group is then used
  to create an Amazon Inspector assessment target. For more information, see
  `CreateAssessmentTarget`.
  """
  def create_resource_group(client, input, options \\ []) do
    request(client, "CreateResourceGroup", input, options)
  end

  @doc """
  Deletes the assessment run that is specified by the ARN of the assessment
  run.
  """
  def delete_assessment_run(client, input, options \\ []) do
    request(client, "DeleteAssessmentRun", input, options)
  end

  @doc """
  Deletes the assessment target that is specified by the ARN of the
  assessment target.
  """
  def delete_assessment_target(client, input, options \\ []) do
    request(client, "DeleteAssessmentTarget", input, options)
  end

  @doc """
  Deletes the assessment template that is specified by the ARN of the
  assessment template.
  """
  def delete_assessment_template(client, input, options \\ []) do
    request(client, "DeleteAssessmentTemplate", input, options)
  end

  @doc """
  Describes the assessment runs that are specified by the ARNs of the
  assessment runs.
  """
  def describe_assessment_runs(client, input, options \\ []) do
    request(client, "DescribeAssessmentRuns", input, options)
  end

  @doc """
  Describes the assessment targets that are specified by the ARNs of the
  assessment targets.
  """
  def describe_assessment_targets(client, input, options \\ []) do
    request(client, "DescribeAssessmentTargets", input, options)
  end

  @doc """
  Describes the assessment templates that are specified by the ARNs of the
  assessment templates.
  """
  def describe_assessment_templates(client, input, options \\ []) do
    request(client, "DescribeAssessmentTemplates", input, options)
  end

  @doc """
  Describes the IAM role that enables Amazon Inspector to access your AWS
  account.
  """
  def describe_cross_account_access_role(client, input, options \\ []) do
    request(client, "DescribeCrossAccountAccessRole", input, options)
  end

  @doc """
  Describes the findings that are specified by the ARNs of the findings.
  """
  def describe_findings(client, input, options \\ []) do
    request(client, "DescribeFindings", input, options)
  end

  @doc """
  Describes the resource groups that are specified by the ARNs of the
  resource groups.
  """
  def describe_resource_groups(client, input, options \\ []) do
    request(client, "DescribeResourceGroups", input, options)
  end

  @doc """
  Describes the rules packages that are specified by the ARNs of the rules
  packages.
  """
  def describe_rules_packages(client, input, options \\ []) do
    request(client, "DescribeRulesPackages", input, options)
  end

  @doc """
  Produces an assessment report that includes detailed and comprehensive
  results of a specified assessment run.
  """
  def get_assessment_report(client, input, options \\ []) do
    request(client, "GetAssessmentReport", input, options)
  end

  @doc """
  Information about the data that is collected for the specified assessment
  run.
  """
  def get_telemetry_metadata(client, input, options \\ []) do
    request(client, "GetTelemetryMetadata", input, options)
  end

  @doc """
  Lists the agents of the assessment runs that are specified by the ARNs of
  the assessment runs.
  """
  def list_assessment_run_agents(client, input, options \\ []) do
    request(client, "ListAssessmentRunAgents", input, options)
  end

  @doc """
  Lists the assessment runs that correspond to the assessment templates that
  are specified by the ARNs of the assessment templates.
  """
  def list_assessment_runs(client, input, options \\ []) do
    request(client, "ListAssessmentRuns", input, options)
  end

  @doc """
  Lists the ARNs of the assessment targets within this AWS account. For more
  information about assessment targets, see [Amazon Inspector Assessment
  Targets](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
  """
  def list_assessment_targets(client, input, options \\ []) do
    request(client, "ListAssessmentTargets", input, options)
  end

  @doc """
  Lists the assessment templates that correspond to the assessment targets
  that are specified by the ARNs of the assessment targets.
  """
  def list_assessment_templates(client, input, options \\ []) do
    request(client, "ListAssessmentTemplates", input, options)
  end

  @doc """
  Lists all the event subscriptions for the assessment template that is
  specified by the ARN of the assessment template. For more information, see
  `SubscribeToEvent` and `UnsubscribeFromEvent`.
  """
  def list_event_subscriptions(client, input, options \\ []) do
    request(client, "ListEventSubscriptions", input, options)
  end

  @doc """
  Lists findings that are generated by the assessment runs that are specified
  by the ARNs of the assessment runs.
  """
  def list_findings(client, input, options \\ []) do
    request(client, "ListFindings", input, options)
  end

  @doc """
  Lists all available Amazon Inspector rules packages.
  """
  def list_rules_packages(client, input, options \\ []) do
    request(client, "ListRulesPackages", input, options)
  end

  @doc """
  Lists all tags associated with an assessment template.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Previews the agents installed on the EC2 instances that are part of the
  specified assessment target.
  """
  def preview_agents(client, input, options \\ []) do
    request(client, "PreviewAgents", input, options)
  end

  @doc """
  Registers the IAM role that grants Amazon Inspector access to AWS Services
  needed to perform security assessments.
  """
  def register_cross_account_access_role(client, input, options \\ []) do
    request(client, "RegisterCrossAccountAccessRole", input, options)
  end

  @doc """
  Removes entire attributes (key and value pairs) from the findings that are
  specified by the ARNs of the findings where an attribute with the specified
  key exists.
  """
  def remove_attributes_from_findings(client, input, options \\ []) do
    request(client, "RemoveAttributesFromFindings", input, options)
  end

  @doc """
  Sets tags (key and value pairs) to the assessment template that is
  specified by the ARN of the assessment template.
  """
  def set_tags_for_resource(client, input, options \\ []) do
    request(client, "SetTagsForResource", input, options)
  end

  @doc """
  Starts the assessment run specified by the ARN of the assessment template.
  For this API to function properly, you must not exceed the limit of running
  up to 500 concurrent agents per AWS account.
  """
  def start_assessment_run(client, input, options \\ []) do
    request(client, "StartAssessmentRun", input, options)
  end

  @doc """
  Stops the assessment run that is specified by the ARN of the assessment
  run.
  """
  def stop_assessment_run(client, input, options \\ []) do
    request(client, "StopAssessmentRun", input, options)
  end

  @doc """
  Enables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def subscribe_to_event(client, input, options \\ []) do
    request(client, "SubscribeToEvent", input, options)
  end

  @doc """
  Disables the process of sending Amazon Simple Notification Service (SNS)
  notifications about a specified event to a specified SNS topic.
  """
  def unsubscribe_from_event(client, input, options \\ []) do
    request(client, "UnsubscribeFromEvent", input, options)
  end

  @doc """
  Updates the assessment target that is specified by the ARN of the
  assessment target.
  """
  def update_assessment_target(client, input, options \\ []) do
    request(client, "UpdateAssessmentTarget", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "inspector"}
    host = get_host("inspector", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "InspectorService.#{action}"}]
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
