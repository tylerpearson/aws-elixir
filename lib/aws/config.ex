# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Config do
  @moduledoc """
  AWS Config

  AWS Config provides a way to keep track of the configurations of all the
  AWS resources associated with your AWS account. You can use AWS Config to
  get the current and historical configurations of each AWS resource and also
  to get information about the relationship between the resources. An AWS
  resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic
  Block Store (EBS) volume, an Elastic network Interface (ENI), or a security
  group. For a complete list of resources currently supported by AWS Config,
  see [Supported AWS
  Resources](http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

  You can access and manage AWS Config through the AWS Management Console,
  the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS
  SDKs for AWS Config

  This reference guide contains documentation for the AWS Config API and the
  AWS CLI commands that you can use to manage AWS Config.

  The AWS Config API uses the Signature Version 4 protocol for signing
  requests. For more information about how to sign a request with this
  protocol, see [Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  For detailed information about AWS Config features and their associated
  actions or commands, as well as how to work with AWS Management Console,
  see [What Is AWS
  Config?](http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
  in the *AWS Config Developer Guide*.
  """

  @doc """
  Returns the current configuration for one or more requested resources. The
  operation also returns a list of resources that are not processed in the
  current request. If there are no unprocessed resources, the operation
  returns an empty unprocessedResourceKeys list.

  <note> <ul> <li> The API does not return results for deleted resources.

  </li> <li> The API does not return any tags for the requested resources.
  This information is filtered out of the supplementaryConfiguration section
  of the API response.

  </li> </ul> </note>
  """
  def batch_get_resource_config(client, input, options \\ []) do
    request(client, "BatchGetResourceConfig", input, options)
  end

  @doc """
  Deletes the specified AWS Config rule and all of its evaluation results.

  AWS Config sets the state of a rule to `DELETING` until the deletion is
  complete. You cannot update a rule while it is in this state. If you make a
  `PutConfigRule` or `DeleteConfigRule` request for the rule, you will
  receive a `ResourceInUseException`.

  You can check the state of a rule by using the `DescribeConfigRules`
  request.
  """
  def delete_config_rule(client, input, options \\ []) do
    request(client, "DeleteConfigRule", input, options)
  end

  @doc """
  Deletes the configuration recorder.

  After the configuration recorder is deleted, AWS Config will not record
  resource configuration changes until you create a new configuration
  recorder.

  This action does not delete the configuration information that was
  previously recorded. You will be able to access the previously recorded
  information by using the `GetResourceConfigHistory` action, but you will
  not be able to access this information in the AWS Config console until you
  create a new configuration recorder.
  """
  def delete_configuration_recorder(client, input, options \\ []) do
    request(client, "DeleteConfigurationRecorder", input, options)
  end

  @doc """
  Deletes the delivery channel.

  Before you can delete the delivery channel, you must stop the configuration
  recorder by using the `StopConfigurationRecorder` action.
  """
  def delete_delivery_channel(client, input, options \\ []) do
    request(client, "DeleteDeliveryChannel", input, options)
  end

  @doc """
  Deletes the evaluation results for the specified Config rule. You can
  specify one Config rule per request. After you delete the evaluation
  results, you can call the `StartConfigRulesEvaluation` API to start
  evaluating your AWS resources against the rule.
  """
  def delete_evaluation_results(client, input, options \\ []) do
    request(client, "DeleteEvaluationResults", input, options)
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in
  the specified delivery channel. After the delivery has started, AWS Config
  sends following notifications using an Amazon SNS topic that you have
  specified.

  <ul> <li> Notification of starting the delivery.

  </li> <li> Notification of delivery completed, if the delivery was
  successfully completed.

  </li> <li> Notification of delivery failure, if the delivery failed to
  complete.

  </li> </ul>
  """
  def deliver_config_snapshot(client, input, options \\ []) do
    request(client, "DeliverConfigSnapshot", input, options)
  end

  @doc """
  Indicates whether the specified AWS Config rules are compliant. If a rule
  is noncompliant, this action returns the number of AWS resources that do
  not comply with the rule.

  A rule is compliant if all of the evaluated resources comply with it, and
  it is noncompliant if any of these resources do not comply.

  If AWS Config has no current evaluation results for the rule, it returns
  `INSUFFICIENT_DATA`. This result might indicate one of the following
  conditions:

  <ul> <li> AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get
  the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

  </li> <li> The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role that you assigned to your
  configuration recorder includes the `config:PutEvaluations` permission. If
  the rule is a custom rule, verify that the AWS Lambda execution role
  includes the `config:PutEvaluations` permission.

  </li> <li> The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or
  removed from the rule's scope.

  </li> </ul>
  """
  def describe_compliance_by_config_rule(client, input, options \\ []) do
    request(client, "DescribeComplianceByConfigRule", input, options)
  end

  @doc """
  Indicates whether the specified AWS resources are compliant. If a resource
  is noncompliant, this action returns the number of AWS Config rules that
  the resource does not comply with.

  A resource is compliant if it complies with all the AWS Config rules that
  evaluate it. It is noncompliant if it does not comply with one or more of
  these rules.

  If AWS Config has no current evaluation results for the resource, it
  returns `INSUFFICIENT_DATA`. This result might indicate one of the
  following conditions about the rules that evaluate the resource:

  <ul> <li> AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get
  the `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

  </li> <li> The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role that you assigned to your
  configuration recorder includes the `config:PutEvaluations` permission. If
  the rule is a custom rule, verify that the AWS Lambda execution role
  includes the `config:PutEvaluations` permission.

  </li> <li> The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or
  removed from the rule's scope.

  </li> </ul>
  """
  def describe_compliance_by_resource(client, input, options \\ []) do
    request(client, "DescribeComplianceByResource", input, options)
  end

  @doc """
  Returns status information for each of your AWS managed Config rules. The
  status includes information such as the last time AWS Config invoked the
  rule, the last time AWS Config failed to invoke the rule, and the related
  error for the last failure.
  """
  def describe_config_rule_evaluation_status(client, input, options \\ []) do
    request(client, "DescribeConfigRuleEvaluationStatus", input, options)
  end

  @doc """
  Returns details about your AWS Config rules.
  """
  def describe_config_rules(client, input, options \\ []) do
    request(client, "DescribeConfigRules", input, options)
  end

  @doc """
  Returns the current status of the specified configuration recorder. If a
  configuration recorder is not specified, this action returns the status of
  all configuration recorder associated with the account.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  </note>
  """
  def describe_configuration_recorder_status(client, input, options \\ []) do
    request(client, "DescribeConfigurationRecorderStatus", input, options)
  end

  @doc """
  Returns the details for the specified configuration recorders. If the
  configuration recorder is not specified, this action returns the details
  for all configuration recorders associated with the account.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  </note>
  """
  def describe_configuration_recorders(client, input, options \\ []) do
    request(client, "DescribeConfigurationRecorders", input, options)
  end

  @doc """
  Returns the current status of the specified delivery channel. If a delivery
  channel is not specified, this action returns the current status of all
  delivery channels associated with the account.

  <note> Currently, you can specify only one delivery channel per region in
  your account.

  </note>
  """
  def describe_delivery_channel_status(client, input, options \\ []) do
    request(client, "DescribeDeliveryChannelStatus", input, options)
  end

  @doc """
  Returns details about the specified delivery channel. If a delivery channel
  is not specified, this action returns the details of all delivery channels
  associated with the account.

  <note> Currently, you can specify only one delivery channel per region in
  your account.

  </note>
  """
  def describe_delivery_channels(client, input, options \\ []) do
    request(client, "DescribeDeliveryChannels", input, options)
  end

  @doc """
  Returns the evaluation results for the specified AWS Config rule. The
  results indicate which AWS resources were evaluated by the rule, when each
  resource was last evaluated, and whether each resource complies with the
  rule.
  """
  def get_compliance_details_by_config_rule(client, input, options \\ []) do
    request(client, "GetComplianceDetailsByConfigRule", input, options)
  end

  @doc """
  Returns the evaluation results for the specified AWS resource. The results
  indicate which AWS Config rules were used to evaluate the resource, when
  each rule was last used, and whether the resource complies with each rule.
  """
  def get_compliance_details_by_resource(client, input, options \\ []) do
    request(client, "GetComplianceDetailsByResource", input, options)
  end

  @doc """
  Returns the number of AWS Config rules that are compliant and noncompliant,
  up to a maximum of 25 for each.
  """
  def get_compliance_summary_by_config_rule(client, input, options \\ []) do
    request(client, "GetComplianceSummaryByConfigRule", input, options)
  end

  @doc """
  Returns the number of resources that are compliant and the number that are
  noncompliant. You can specify one or more resource types to get these
  numbers for each resource type. The maximum number returned is 100.
  """
  def get_compliance_summary_by_resource_type(client, input, options \\ []) do
    request(client, "GetComplianceSummaryByResourceType", input, options)
  end

  @doc """
  Returns the resource types, the number of each resource type, and the total
  number of resources that AWS Config is recording in this region for your
  AWS account.

  <p class="title"> **Example**

  <ol> <li> AWS Config is recording three resource types in the US East
  (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
  buckets.

  </li> <li> You make a call to the `GetDiscoveredResourceCounts` action and
  specify that you want all resource types.

  </li> <li> AWS Config returns the following:

  <ul> <li> The resource types (EC2 instances, IAM users, and S3 buckets)

  </li> <li> The number of each resource type (25, 20, and 15)

  </li> <li> The total number of all resources (60)

  </li> </ul> </li> </ol> The response is paginated. By default, AWS Config
  lists 100 `ResourceCount` objects on each page. You can customize this
  number with the `limit` parameter. The response includes a `nextToken`
  string. To get the next page of results, run the request again and specify
  the string for the `nextToken` parameter.

  <note> If you make a call to the `GetDiscoveredResourceCounts` action, you
  may not immediately receive resource counts in the following situations:

  <ul> <li> You are a new AWS Config customer

  </li> <li> You just enabled resource recording

  </li> </ul> It may take a few minutes for AWS Config to record and count
  your resources. Wait a few minutes and then retry the
  `GetDiscoveredResourceCounts` action.

  </note>
  """
  def get_discovered_resource_counts(client, input, options \\ []) do
    request(client, "GetDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns a list of configuration items for the specified resource. The list
  contains details about each state of the resource during the specified time
  interval.

  The response is paginated. By default, AWS Config returns a limit of 10
  configuration items per page. You can customize this number with the
  `limit` parameter. The response includes a `nextToken` string. To get the
  next page of results, run the request again and specify the string for the
  `nextToken` parameter.

  <note> Each call to the API is limited to span a duration of seven days. It
  is likely that the number of records returned is smaller than the specified
  `limit`. In such cases, you can make another call, using the `nextToken`.

  </note>
  """
  def get_resource_config_history(client, input, options \\ []) do
    request(client, "GetResourceConfigHistory", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers for the
  resources of that type. A resource identifier includes the resource type,
  ID, and (if available) the custom resource name. The results consist of
  resources that AWS Config has discovered, including those that AWS Config
  is not currently recording. You can narrow the results to include only
  resources that have specific resource IDs or a resource name.

  <note> You can specify either resource IDs or a resource name but not both
  in the same request.

  </note> The response is paginated. By default, AWS Config lists 100
  resource identifiers on each page. You can customize this number with the
  `limit` parameter. The response includes a `nextToken` string. To get the
  next page of results, run the request again and specify the string for the
  `nextToken` parameter.
  """
  def list_discovered_resources(client, input, options \\ []) do
    request(client, "ListDiscoveredResources", input, options)
  end

  @doc """
  Adds or updates an AWS Config rule for evaluating whether your AWS
  resources comply with your desired configurations.

  You can use this action for custom Config rules and AWS managed Config
  rules. A custom Config rule is a rule that you develop and maintain. An AWS
  managed Config rule is a customizable, predefined rule that AWS Config
  provides.

  If you are adding a new custom Config rule, you must first create the AWS
  Lambda function that the rule invokes to evaluate your resources. When you
  use the `PutConfigRule` action to add the rule to AWS Config, you must
  specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the
  function. Specify the ARN for the `SourceIdentifier` key. This key is part
  of the `Source` object, which is part of the `ConfigRule` object.

  If you are adding an AWS managed Config rule, specify the rule's identifier
  for the `SourceIdentifier` key. To reference AWS managed Config rule
  identifiers, see [About AWS Managed Config
  Rules](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).

  For any new rule that you add, specify the `ConfigRuleName` in the
  `ConfigRule` object. Do not specify the `ConfigRuleArn` or the
  `ConfigRuleId`. These values are generated by AWS Config for new rules.

  If you are updating a rule that you added previously, you can specify the
  rule by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the
  `ConfigRule` data type that you use in this request.

  The maximum number of rules that AWS Config supports is 50.

  For more information about requesting a rule limit increase, see [AWS
  Config
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config)
  in the *AWS General Reference Guide*.

  For more information about developing and using AWS Config rules, see
  [Evaluating AWS Resource Configurations with AWS
  Config](http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
  in the *AWS Config Developer Guide*.
  """
  def put_config_rule(client, input, options \\ []) do
    request(client, "PutConfigRule", input, options)
  end

  @doc """
  Creates a new configuration recorder to record the selected resource
  configurations.

  You can use this action to change the role `roleARN` and/or the
  `recordingGroup` of an existing recorder. To change the role, call the
  action on the existing configuration recorder and specify a role.

  <note> Currently, you can specify only one configuration recorder per
  region in your account.

  If `ConfigurationRecorder` does not have the **recordingGroup** parameter
  specified, the default is to record all supported resource types.

  </note>
  """
  def put_configuration_recorder(client, input, options \\ []) do
    request(client, "PutConfigurationRecorder", input, options)
  end

  @doc """
  Creates a delivery channel object to deliver configuration information to
  an Amazon S3 bucket and Amazon SNS topic.

  Before you can create a delivery channel, you must create a configuration
  recorder.

  You can use this action to change the Amazon S3 bucket or an Amazon SNS
  topic of the existing delivery channel. To change the Amazon S3 bucket or
  an Amazon SNS topic, call this action and specify the changed values for
  the S3 bucket and the SNS topic. If you specify a different value for
  either the S3 bucket or the SNS topic, this action will keep the existing
  value for the parameter that is not changed.

  <note> You can have only one delivery channel per region in your account.

  </note>
  """
  def put_delivery_channel(client, input, options \\ []) do
    request(client, "PutDeliveryChannel", input, options)
  end

  @doc """
  Used by an AWS Lambda function to deliver evaluation results to AWS Config.
  This action is required in every AWS Lambda function that is invoked by an
  AWS Config rule.
  """
  def put_evaluations(client, input, options \\ []) do
    request(client, "PutEvaluations", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified Config rules against the
  last known configuration state of the resources. Use
  `StartConfigRulesEvaluation` when you want to test a rule that you updated
  is working as expected. `StartConfigRulesEvaluation` does not re-record the
  latest configuration state for your resources; it re-runs an evaluation
  against the last known state of your resources.

  You can specify up to 25 Config rules per request.

  An existing `StartConfigRulesEvaluation` call must complete for the
  specified rules before you can call the API again. If you chose to have AWS
  Config stream to an Amazon SNS topic, you will receive a
  `ConfigRuleEvaluationStarted` notification when the evaluation starts.

  <note> You don't need to call the `StartConfigRulesEvaluation` API to run
  an evaluation for a new rule. When you create a new rule, AWS Config
  automatically evaluates your resources against the rule.

  </note> The `StartConfigRulesEvaluation` API is useful if you want to run
  on-demand evaluations, such as the following example:

  <ol> <li> You have a custom rule that evaluates your IAM resources every 24
  hours.

  </li> <li> You update your Lambda function to add additional conditions to
  your rule.

  </li> <li> Instead of waiting for the next periodic evaluation, you call
  the `StartConfigRulesEvaluation` API.

  </li> <li> AWS Config invokes your Lambda function and evaluates your IAM
  resources.

  </li> <li> Your custom rule will still run periodic evaluations every 24
  hours.

  </li> </ol>
  """
  def start_config_rules_evaluation(client, input, options \\ []) do
    request(client, "StartConfigRulesEvaluation", input, options)
  end

  @doc """
  Starts recording configurations of the AWS resources you have selected to
  record in your AWS account.

  You must have created at least one delivery channel to successfully start
  the configuration recorder.
  """
  def start_configuration_recorder(client, input, options \\ []) do
    request(client, "StartConfigurationRecorder", input, options)
  end

  @doc """
  Stops recording configurations of the AWS resources you have selected to
  record in your AWS account.
  """
  def stop_configuration_recorder(client, input, options \\ []) do
    request(client, "StopConfigurationRecorder", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "config"}
    host = get_host("config", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "StarlingDoveService.#{action}"}]
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
