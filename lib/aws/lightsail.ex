# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Lightsail do
  @moduledoc """
  Amazon Lightsail is the easiest way to get started with AWS for developers
  who just need virtual private servers. Lightsail includes everything you
  need to launch your project quickly - a virtual machine, SSD-based storage,
  data transfer, DNS management, and a static IP - for a low, predictable
  price. You manage those Lightsail servers through the Lightsail console or
  by using the API or command-line interface (CLI).

  For more information about Lightsail concepts and tasks, see the [Lightsail
  Dev Guide](https://lightsail.aws.amazon.com/ls/docs/all).

  To use the Lightsail API or the CLI, you will need to use AWS Identity and
  Access Management (IAM) to generate access keys. For details about how to
  set this up, see the [Lightsail Dev
  Guide](http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).
  """

  @doc """
  Allocates a static IP address.
  """
  def allocate_static_ip(client, input, options \\ []) do
    request(client, "AllocateStaticIp", input, options)
  end

  @doc """
  Attaches a block storage disk to a running or stopped Lightsail instance
  and exposes it to the instance with the specified disk name.
  """
  def attach_disk(client, input, options \\ []) do
    request(client, "AttachDisk", input, options)
  end

  @doc """
  Attaches one or more Lightsail instances to a load balancer.

  After some time, the instances are attached to the load balancer and the
  health check status is available.
  """
  def attach_instances_to_load_balancer(client, input, options \\ []) do
    request(client, "AttachInstancesToLoadBalancer", input, options)
  end

  @doc """
  Attaches a Transport Layer Security (TLS) certificate to your load
  balancer. TLS is just an updated, more secure version of Secure Socket
  Layer (SSL).

  Once you create and validate your certificate, you can attach it to your
  load balancer. You can also use this API to rotate the certificates on your
  account. Use the `AttachLoadBalancerTlsCertificate` operation with the
  non-attached certificate, and it will replace the existing one and become
  the attached certificate.
  """
  def attach_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "AttachLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  def attach_static_ip(client, input, options \\ []) do
    request(client, "AttachStaticIp", input, options)
  end

  @doc """
  Closes the public ports on a specific Amazon Lightsail instance.
  """
  def close_instance_public_ports(client, input, options \\ []) do
    request(client, "CloseInstancePublicPorts", input, options)
  end

  @doc """
  Creates a block storage disk that can be attached to a Lightsail instance
  in the same Availability Zone (e.g., `us-east-2a`). The disk is created in
  the regional endpoint that you send the HTTP request to. For more
  information, see [Regions and Availability Zones in
  Lightsail](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
  """
  def create_disk(client, input, options \\ []) do
    request(client, "CreateDisk", input, options)
  end

  @doc """
  Creates a block storage disk from a disk snapshot that can be attached to a
  Lightsail instance in the same Availability Zone (e.g., `us-east-2a`). The
  disk is created in the regional endpoint that you send the HTTP request to.
  For more information, see [Regions and Availability Zones in
  Lightsail](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
  """
  def create_disk_from_snapshot(client, input, options \\ []) do
    request(client, "CreateDiskFromSnapshot", input, options)
  end

  @doc """
  Creates a snapshot of a block storage disk. You can use snapshots for
  backups, to make copies of disks, and to save data before shutting down a
  Lightsail instance.

  You can take a snapshot of an attached disk that is in use; however,
  snapshots only capture data that has been written to your disk at the time
  the snapshot command is issued. This may exclude any data that has been
  cached by any applications or the operating system. If you can pause any
  file systems on the disk long enough to take a snapshot, your snapshot
  should be complete. Nevertheless, if you cannot pause all file writes to
  the disk, you should unmount the disk from within the Lightsail instance,
  issue the create disk snapshot command, and then remount the disk to ensure
  a consistent and complete snapshot. You may remount and use your disk while
  the snapshot status is pending.
  """
  def create_disk_snapshot(client, input, options \\ []) do
    request(client, "CreateDiskSnapshot", input, options)
  end

  @doc """
  Creates a domain resource for the specified domain (e.g., example.com).
  """
  def create_domain(client, input, options \\ []) do
    request(client, "CreateDomain", input, options)
  end

  @doc """
  Creates one of the following entry records associated with the domain: A
  record, CNAME record, TXT record, or MX record.
  """
  def create_domain_entry(client, input, options \\ []) do
    request(client, "CreateDomainEntry", input, options)
  end

  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*. You
  can use a snapshot to create a new instance that is based on that snapshot.
  """
  def create_instance_snapshot(client, input, options \\ []) do
    request(client, "CreateInstanceSnapshot", input, options)
  end

  @doc """
  Creates one or more Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def create_instances(client, input, options \\ []) do
    request(client, "CreateInstances", input, options)
  end

  @doc """
  Uses a specific snapshot as a blueprint for creating one or more new
  instances that are based on that identical configuration.
  """
  def create_instances_from_snapshot(client, input, options \\ []) do
    request(client, "CreateInstancesFromSnapshot", input, options)
  end

  @doc """
  Creates sn SSH key pair.
  """
  def create_key_pair(client, input, options \\ []) do
    request(client, "CreateKeyPair", input, options)
  end

  @doc """
  Creates a Lightsail load balancer. To learn more about deciding whether to
  load balance your application, see [Configure your Lightsail instances for
  load
  balancing](https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing).
  You can create up to 5 load balancers per AWS Region in your account.

  When you create a load balancer, you can specify a unique name and port
  settings. To change additional load balancer settings, use the
  `UpdateLoadBalancerAttribute` operation.
  """
  def create_load_balancer(client, input, options \\ []) do
    request(client, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates a Lightsail load balancer TLS certificate.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).
  """
  def create_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "CreateLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Deletes the specified block storage disk. The disk must be in the
  `available` state (not attached to a Lightsail instance).

  <note> The disk may remain in the `deleting` state for several minutes.

  </note>
  """
  def delete_disk(client, input, options \\ []) do
    request(client, "DeleteDisk", input, options)
  end

  @doc """
  Deletes the specified disk snapshot.

  When you make periodic snapshots of a disk, the snapshots are incremental,
  and only the blocks on the device that have changed since your last
  snapshot are saved in the new snapshot. When you delete a snapshot, only
  the data not needed for any other snapshot is removed. So regardless of
  which prior snapshots have been deleted, all active snapshots will have
  access to all the information needed to restore the disk.
  """
  def delete_disk_snapshot(client, input, options \\ []) do
    request(client, "DeleteDiskSnapshot", input, options)
  end

  @doc """
  Deletes the specified domain recordset and all of its domain records.
  """
  def delete_domain(client, input, options \\ []) do
    request(client, "DeleteDomain", input, options)
  end

  @doc """
  Deletes a specific domain entry.
  """
  def delete_domain_entry(client, input, options \\ []) do
    request(client, "DeleteDomainEntry", input, options)
  end

  @doc """
  Deletes a specific Amazon Lightsail virtual private server, or *instance*.
  """
  def delete_instance(client, input, options \\ []) do
    request(client, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specific snapshot of a virtual private server (or *instance*).
  """
  def delete_instance_snapshot(client, input, options \\ []) do
    request(client, "DeleteInstanceSnapshot", input, options)
  end

  @doc """
  Deletes a specific SSH key pair.
  """
  def delete_key_pair(client, input, options \\ []) do
    request(client, "DeleteKeyPair", input, options)
  end

  @doc """
  Deletes a Lightsail load balancer and all its associated SSL/TLS
  certificates. Once the load balancer is deleted, you will need to create a
  new load balancer, create a new certificate, and verify domain ownership
  again.
  """
  def delete_load_balancer(client, input, options \\ []) do
    request(client, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes an SSL/TLS certificate associated with a Lightsail load balancer.
  """
  def delete_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "DeleteLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Detaches a stopped block storage disk from a Lightsail instance. Make sure
  to unmount any file systems on the device within your operating system
  before stopping the instance and detaching the disk.
  """
  def detach_disk(client, input, options \\ []) do
    request(client, "DetachDisk", input, options)
  end

  @doc """
  Detaches the specified instances from a Lightsail load balancer.

  This operation waits until the instances are no longer needed before they
  are detached from the load balancer.
  """
  def detach_instances_from_load_balancer(client, input, options \\ []) do
    request(client, "DetachInstancesFromLoadBalancer", input, options)
  end

  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is
  attached.
  """
  def detach_static_ip(client, input, options \\ []) do
    request(client, "DetachStaticIp", input, options)
  end

  @doc """
  Downloads the default SSH key pair from the user's account.
  """
  def download_default_key_pair(client, input, options \\ []) do
    request(client, "DownloadDefaultKeyPair", input, options)
  end

  @doc """
  Returns the names of all active (not deleted) resources.
  """
  def get_active_names(client, input, options \\ []) do
    request(client, "GetActiveNames", input, options)
  end

  @doc """
  Returns the list of available instance images, or *blueprints*. You can use
  a blueprint to create a new virtual private server already running a
  specific operating system, as well as a preinstalled app or development
  stack. The software each instance is running depends on the blueprint image
  you choose.
  """
  def get_blueprints(client, input, options \\ []) do
    request(client, "GetBlueprints", input, options)
  end

  @doc """
  Returns the list of bundles that are available for purchase. A bundle
  describes the specs for your virtual private server (or *instance*).
  """
  def get_bundles(client, input, options \\ []) do
    request(client, "GetBundles", input, options)
  end

  @doc """
  Returns information about a specific block storage disk.
  """
  def get_disk(client, input, options \\ []) do
    request(client, "GetDisk", input, options)
  end

  @doc """
  Returns information about a specific block storage disk snapshot.
  """
  def get_disk_snapshot(client, input, options \\ []) do
    request(client, "GetDiskSnapshot", input, options)
  end

  @doc """
  Returns information about all block storage disk snapshots in your AWS
  account and region.

  If you are describing a long list of disk snapshots, you can paginate the
  output to make the list more manageable. You can use the pageToken and
  nextPageToken values to retrieve the next items in the list.
  """
  def get_disk_snapshots(client, input, options \\ []) do
    request(client, "GetDiskSnapshots", input, options)
  end

  @doc """
  Returns information about all block storage disks in your AWS account and
  region.

  If you are describing a long list of disks, you can paginate the output to
  make the list more manageable. You can use the pageToken and nextPageToken
  values to retrieve the next items in the list.
  """
  def get_disks(client, input, options \\ []) do
    request(client, "GetDisks", input, options)
  end

  @doc """
  Returns information about a specific domain recordset.
  """
  def get_domain(client, input, options \\ []) do
    request(client, "GetDomain", input, options)
  end

  @doc """
  Returns a list of all domains in the user's account.
  """
  def get_domains(client, input, options \\ []) do
    request(client, "GetDomains", input, options)
  end

  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private server.
  """
  def get_instance(client, input, options \\ []) do
    request(client, "GetInstance", input, options)
  end

  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual
  private server, or *instance*.
  """
  def get_instance_access_details(client, input, options \\ []) do
    request(client, "GetInstanceAccessDetails", input, options)
  end

  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an instance name.
  """
  def get_instance_metric_data(client, input, options \\ []) do
    request(client, "GetInstanceMetricData", input, options)
  end

  @doc """
  Returns the port states for a specific virtual private server, or
  *instance*.
  """
  def get_instance_port_states(client, input, options \\ []) do
    request(client, "GetInstancePortStates", input, options)
  end

  @doc """
  Returns information about a specific instance snapshot.
  """
  def get_instance_snapshot(client, input, options \\ []) do
    request(client, "GetInstanceSnapshot", input, options)
  end

  @doc """
  Returns all instance snapshots for the user's account.
  """
  def get_instance_snapshots(client, input, options \\ []) do
    request(client, "GetInstanceSnapshots", input, options)
  end

  @doc """
  Returns the state of a specific instance. Works on one instance at a time.
  """
  def get_instance_state(client, input, options \\ []) do
    request(client, "GetInstanceState", input, options)
  end

  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def get_instances(client, input, options \\ []) do
    request(client, "GetInstances", input, options)
  end

  @doc """
  Returns information about a specific key pair.
  """
  def get_key_pair(client, input, options \\ []) do
    request(client, "GetKeyPair", input, options)
  end

  @doc """
  Returns information about all key pairs in the user's account.
  """
  def get_key_pairs(client, input, options \\ []) do
    request(client, "GetKeyPairs", input, options)
  end

  @doc """
  Returns information about the specified Lightsail load balancer.
  """
  def get_load_balancer(client, input, options \\ []) do
    request(client, "GetLoadBalancer", input, options)
  end

  @doc """
  Returns information about health metrics for your Lightsail load balancer.
  """
  def get_load_balancer_metric_data(client, input, options \\ []) do
    request(client, "GetLoadBalancerMetricData", input, options)
  end

  @doc """
  Returns information about the TLS certificates that are associated with the
  specified Lightsail load balancer.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).

  You can have a maximum of 2 certificates associated with a Lightsail load
  balancer. One is active and the other is inactive.
  """
  def get_load_balancer_tls_certificates(client, input, options \\ []) do
    request(client, "GetLoadBalancerTlsCertificates", input, options)
  end

  @doc """
  Returns information about all load balancers in an account.

  If you are describing a long list of load balancers, you can paginate the
  output to make the list more manageable. You can use the pageToken and
  nextPageToken values to retrieve the next items in the list.
  """
  def get_load_balancers(client, input, options \\ []) do
    request(client, "GetLoadBalancers", input, options)
  end

  @doc """
  Returns information about a specific operation. Operations include events
  such as when you create an instance, allocate a static IP, attach a static
  IP, and so on.
  """
  def get_operation(client, input, options \\ []) do
    request(client, "GetOperation", input, options)
  end

  @doc """
  Returns information about all operations.

  Results are returned from oldest to newest, up to a maximum of 200. Results
  can be paged by making each subsequent call to `GetOperations` use the
  maximum (last) `statusChangedAt` value from the previous request.
  """
  def get_operations(client, input, options \\ []) do
    request(client, "GetOperations", input, options)
  end

  @doc """
  Gets operations for a specific resource (e.g., an instance or a static IP).
  """
  def get_operations_for_resource(client, input, options \\ []) do
    request(client, "GetOperationsForResource", input, options)
  end

  @doc """
  Returns a list of all valid regions for Amazon Lightsail. Use the `include
  availability zones` parameter to also return the availability zones in a
  region.
  """
  def get_regions(client, input, options \\ []) do
    request(client, "GetRegions", input, options)
  end

  @doc """
  Returns information about a specific static IP.
  """
  def get_static_ip(client, input, options \\ []) do
    request(client, "GetStaticIp", input, options)
  end

  @doc """
  Returns information about all static IPs in the user's account.
  """
  def get_static_ips(client, input, options \\ []) do
    request(client, "GetStaticIps", input, options)
  end

  @doc """
  Imports a public SSH key from a specific key pair.
  """
  def import_key_pair(client, input, options \\ []) do
    request(client, "ImportKeyPair", input, options)
  end

  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  def is_vpc_peered(client, input, options \\ []) do
    request(client, "IsVpcPeered", input, options)
  end

  @doc """
  Adds public ports to an Amazon Lightsail instance.
  """
  def open_instance_public_ports(client, input, options \\ []) do
    request(client, "OpenInstancePublicPorts", input, options)
  end

  @doc """
  Tries to peer the Lightsail VPC with the user's default VPC.
  """
  def peer_vpc(client, input, options \\ []) do
    request(client, "PeerVpc", input, options)
  end

  @doc """
  Sets the specified open ports for an Amazon Lightsail instance, and closes
  all ports for every protocol not included in the current request.
  """
  def put_instance_public_ports(client, input, options \\ []) do
    request(client, "PutInstancePublicPorts", input, options)
  end

  @doc """
  Restarts a specific instance. When your Amazon Lightsail instance is
  finished rebooting, Lightsail assigns a new public IP address. To use the
  same IP address after restarting, create a static IP address and attach it
  to the instance.
  """
  def reboot_instance(client, input, options \\ []) do
    request(client, "RebootInstance", input, options)
  end

  @doc """
  Deletes a specific static IP from your account.
  """
  def release_static_ip(client, input, options \\ []) do
    request(client, "ReleaseStaticIp", input, options)
  end

  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state. To
  restart an instance, use the reboot instance operation.
  """
  def start_instance(client, input, options \\ []) do
    request(client, "StartInstance", input, options)
  end

  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.
  """
  def stop_instance(client, input, options \\ []) do
    request(client, "StopInstance", input, options)
  end

  @doc """
  Attempts to unpeer the Lightsail VPC from the user's default VPC.
  """
  def unpeer_vpc(client, input, options \\ []) do
    request(client, "UnpeerVpc", input, options)
  end

  @doc """
  Updates a domain recordset after it is created.
  """
  def update_domain_entry(client, input, options \\ []) do
    request(client, "UpdateDomainEntry", input, options)
  end

  @doc """
  Updates the specified attribute for a load balancer. You can only update
  one attribute at a time.
  """
  def update_load_balancer_attribute(client, input, options \\ []) do
    request(client, "UpdateLoadBalancerAttribute", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "lightsail"}
    host = get_host("lightsail", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Lightsail_20161128.#{action}"}]
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
