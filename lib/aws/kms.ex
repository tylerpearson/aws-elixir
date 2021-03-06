# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.KMS do
  @moduledoc """
  AWS Key Management Service

  AWS Key Management Service (AWS KMS) is an encryption and key management
  web service. This guide describes the AWS KMS operations that you can call
  programmatically. For general information about AWS KMS, see the [AWS Key
  Management Service Developer
  Guide](http://docs.aws.amazon.com/kms/latest/developerguide/).

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, iOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to AWS KMS and other AWS services. For example, the SDKs take care
  of tasks such as signing requests (see below), managing errors, and
  retrying requests automatically. For more information about the AWS SDKs,
  including how to download and install them, see [Tools for Amazon Web
  Services](http://aws.amazon.com/tools/).

  </note> We recommend that you use the AWS SDKs to make programmatic API
  calls to AWS KMS.

  Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS
  1.2. Clients must also support cipher suites with Perfect Forward Secrecy
  (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral
  Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later
  support these modes.

  **Signing Requests**

  Requests must be signed by using an access key ID and a secret access key.
  We strongly recommend that you *do not* use your AWS account (root) access
  key ID and secret key for everyday work with AWS KMS. Instead, use the
  access key ID and secret access key for an IAM user, or you can use the AWS
  Security Token Service to generate temporary security credentials that you
  can use to sign requests.

  All AWS KMS operations require [Signature Version
  4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  **Logging API Requests**

  AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
  related events for your AWS account and delivers them to an Amazon S3
  bucket that you specify. By using the information collected by CloudTrail,
  you can determine what requests were made to AWS KMS, who made the request,
  when it was made, and so on. To learn more about CloudTrail, including how
  to turn it on and find your log files, see the [AWS CloudTrail User
  Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

  **Additional Resources**

  For more information about credentials and request signing, see the
  following:

  <ul> <li> [AWS Security
  Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
  - This topic provides general information about the types of credentials
  used for accessing AWS.

  </li> <li> [Temporary Security
  Credentials](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
  - This section of the *IAM User Guide* describes how to create and use
  temporary security credentials.

  </li> <li> [Signature Version 4 Signing
  Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  - This set of topics walks you through the process of signing a request
  using an access key ID and a secret access key.

  </li> </ul> **Commonly Used APIs**

  Of the APIs discussed in this guide, the following will prove the most
  useful for most applications. You will likely perform actions other than
  these, such as creating keys and assigning policies, by using the console.

  <ul> <li> `Encrypt`

  </li> <li> `Decrypt`

  </li> <li> `GenerateDataKey`

  </li> <li> `GenerateDataKeyWithoutPlaintext`

  </li> </ul>
  """

  @doc """
  Cancels the deletion of a customer master key (CMK). When this operation is
  successful, the CMK is set to the `Disabled` state. To enable a CMK, use
  `EnableKey`. You cannot perform this operation on a CMK in a different AWS
  account.

  For more information about scheduling and canceling deletion of a CMK, see
  [Deleting Customer Master
  Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def cancel_key_deletion(client, input, options \\ []) do
    request(client, "CancelKeyDeletion", input, options)
  end

  @doc """
  Creates a display name for a customer master key (CMK). You can use an
  alias to identify a CMK in selected operations, such as `Encrypt` and
  `GenerateDataKey`.

  Each CMK can have multiple aliases, but each alias points to only one CMK.
  The alias name must be unique in the AWS account and region. To simplify
  code that runs in multiple regions, use the same alias name, but point it
  to a different CMK in each region.

  Because an alias is not a property of a CMK, you can delete and change the
  aliases of a CMK without affecting the CMK. Also, aliases do not appear in
  the response from the `DescribeKey` operation. To get the aliases of all
  CMKs, use the `ListAliases` operation.

  An alias must start with the word `alias` followed by a forward slash
  (`alias/`). The alias name can contain only alphanumeric characters,
  forward slashes (/), underscores (_), and dashes (-). Alias names cannot
  begin with `aws`; that alias name prefix is reserved by Amazon Web Services
  (AWS).

  The alias and the CMK it is mapped to must be in the same AWS account and
  the same region. You cannot perform this operation on an alias in a
  different AWS account.

  To map an existing alias to a different CMK, call `UpdateAlias`.
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Adds a grant to a customer master key (CMK). The grant specifies who can
  use the CMK and under what conditions. When setting permissions, grants are
  an alternative to key policies.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the KeyId parameter. For more information about
  grants, see
  [Grants](http://docs.aws.amazon.com/kms/latest/developerguide/grants.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def create_grant(client, input, options \\ []) do
    request(client, "CreateGrant", input, options)
  end

  @doc """
  Creates a customer master key (CMK) in the caller's AWS account.

  You can use a CMK to encrypt small amounts of data (4 KiB or less)
  directly, but CMKs are more commonly used to encrypt data encryption keys
  (DEKs), which are used to encrypt raw data. For more information about DEKs
  and the difference between CMKs and DEKs, see the following:

  <ul> <li> The `GenerateDataKey` operation

  </li> <li> [AWS Key Management Service
  Concepts](http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html)
  in the *AWS Key Management Service Developer Guide*

  </li> </ul> You cannot use this operation to create a CMK in a different
  AWS account.
  """
  def create_key(client, input, options \\ []) do
    request(client, "CreateKey", input, options)
  end

  @doc """
  Decrypts ciphertext. Ciphertext is plaintext that has been previously
  encrypted by using any of the following operations:

  <ul> <li> `GenerateDataKey`

  </li> <li> `GenerateDataKeyWithoutPlaintext`

  </li> <li> `Encrypt`

  </li> </ul> Note that if a caller has been granted access permissions to
  all keys (through, for example, IAM user policies that grant `Decrypt`
  permission on all resources), then ciphertext encrypted by using keys in
  other accounts where the key grants access to the caller can be decrypted.
  To remedy this, we recommend that you do not grant `Decrypt` access in an
  IAM user policy. Instead grant `Decrypt` access only in key policies. If
  you must grant `Decrypt` access in an IAM user policy, you should scope the
  resource to specific keys or to specific trusted accounts.
  """
  def decrypt(client, input, options \\ []) do
    request(client, "Decrypt", input, options)
  end

  @doc """
  Deletes the specified alias. You cannot perform this operation on an alias
  in a different AWS account.

  Because an alias is not a property of a CMK, you can delete and change the
  aliases of a CMK without affecting the CMK. Also, aliases do not appear in
  the response from the `DescribeKey` operation. To get the aliases of all
  CMKs, use the `ListAliases` operation.

  Each CMK can have multiple aliases. To change the alias of a CMK, use
  `DeleteAlias` to delete the current alias and `CreateAlias` to create a new
  alias. To associate an existing alias with a different customer master key
  (CMK), call `UpdateAlias`.
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Deletes key material that you previously imported. This operation makes the
  specified customer master key (CMK) unusable. For more information about
  importing key material into AWS KMS, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*. You cannot perform
  this operation on a CMK in a different AWS account.

  When the specified CMK is in the `PendingDeletion` state, this operation
  does not change the CMK's state. Otherwise, it changes the CMK's state to
  `PendingImport`.

  After you delete key material, you can use `ImportKeyMaterial` to reimport
  the same key material into the CMK.
  """
  def delete_imported_key_material(client, input, options \\ []) do
    request(client, "DeleteImportedKeyMaterial", input, options)
  end

  @doc """
  Provides detailed information about the specified customer master key
  (CMK).

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN or alias ARN in the value of the KeyId parameter.
  """
  def describe_key(client, input, options \\ []) do
    request(client, "DescribeKey", input, options)
  end

  @doc """
  Sets the state of a customer master key (CMK) to disabled, thereby
  preventing its use for cryptographic operations. You cannot perform this
  operation on a CMK in a different AWS account.

  For more information about how key state affects the use of a CMK, see [How
  Key State Affects the Use of a Customer Master
  Key](http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def disable_key(client, input, options \\ []) do
    request(client, "DisableKey", input, options)
  end

  @doc """
  Disables automatic rotation of the key material for the specified customer
  master key (CMK). You cannot perform this operation on a CMK in a different
  AWS account.
  """
  def disable_key_rotation(client, input, options \\ []) do
    request(client, "DisableKeyRotation", input, options)
  end

  @doc """
  Sets the state of a customer master key (CMK) to enabled, thereby
  permitting its use for cryptographic operations. You cannot perform this
  operation on a CMK in a different AWS account.
  """
  def enable_key(client, input, options \\ []) do
    request(client, "EnableKey", input, options)
  end

  @doc """
  Enables automatic rotation of the key material for the specified customer
  master key (CMK). You cannot perform this operation on a CMK in a different
  AWS account.
  """
  def enable_key_rotation(client, input, options \\ []) do
    request(client, "EnableKeyRotation", input, options)
  end

  @doc """
  Encrypts plaintext into ciphertext by using a customer master key (CMK).
  The `Encrypt` operation has two primary use cases:

  <ul> <li> You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data
  such as an RSA key, a database password, or other sensitive information.

  </li> <li> To move encrypted data from one AWS region to another, you can
  use this operation to encrypt in the new region the plaintext data key that
  was used to encrypt the data in the original region. This provides you with
  an encrypted copy of the data key that can be decrypted in the new region
  and used there to decrypt the encrypted data.

  </li> </ul> To perform this operation on a CMK in a different AWS account,
  specify the key ARN or alias ARN in the value of the KeyId parameter.

  Unless you are moving encrypted data from one region to another, you don't
  use this operation to encrypt a generated data key within a region. To get
  data keys that are already encrypted, call the `GenerateDataKey` or
  `GenerateDataKeyWithoutPlaintext` operation. Data keys don't need to be
  encrypted again by calling `Encrypt`.

  To encrypt data locally in your application, use the `GenerateDataKey`
  operation to return a plaintext data encryption key and a copy of the key
  encrypted under the CMK of your choosing.
  """
  def encrypt(client, input, options \\ []) do
    request(client, "Encrypt", input, options)
  end

  @doc """
  Returns a data encryption key that you can use in your application to
  encrypt data locally.

  You must specify the customer master key (CMK) under which to generate the
  data key. You must also specify the length of the data key using either the
  `KeySpec` or `NumberOfBytes` field. You must specify one field or the
  other, but not both. For common key lengths (128-bit and 256-bit symmetric
  keys), we recommend that you use `KeySpec`. To perform this operation on a
  CMK in a different AWS account, specify the key ARN or alias ARN in the
  value of the KeyId parameter.

  This operation returns a plaintext copy of the data key in the `Plaintext`
  field of the response, and an encrypted copy of the data key in the
  `CiphertextBlob` field. The data key is encrypted under the CMK specified
  in the `KeyId` field of the request.

  We recommend that you use the following pattern to encrypt data locally in
  your application:

  <ol> <li> Use this operation (`GenerateDataKey`) to get a data encryption
  key.

  </li> <li> Use the plaintext data encryption key (returned in the
  `Plaintext` field of the response) to encrypt data locally, then erase the
  plaintext data key from memory.

  </li> <li> Store the encrypted data key (returned in the `CiphertextBlob`
  field of the response) alongside the locally encrypted data.

  </li> </ol> To decrypt data locally:

  <ol> <li> Use the `Decrypt` operation to decrypt the encrypted data key
  into a plaintext copy of the data key.

  </li> <li> Use the plaintext data key to decrypt data locally, then erase
  the plaintext data key from memory.

  </li> </ol> To return only an encrypted copy of the data key, use
  `GenerateDataKeyWithoutPlaintext`. To return a random byte string that is
  cryptographically secure, use `GenerateRandom`.

  If you use the optional `EncryptionContext` field, you must store at least
  enough information to be able to reconstruct the full encryption context
  when you later send the ciphertext to the `Decrypt` operation. It is a good
  practice to choose an encryption context that you can reconstruct on the
  fly to better secure the ciphertext. For more information, see [Encryption
  Context](http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def generate_data_key(client, input, options \\ []) do
    request(client, "GenerateDataKey", input, options)
  end

  @doc """
  Returns a data encryption key encrypted under a customer master key (CMK).
  This operation is identical to `GenerateDataKey` but returns only the
  encrypted copy of the data key.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN or alias ARN in the value of the KeyId parameter.

  This operation is useful in a system that has multiple components with
  different degrees of trust. For example, consider a system that stores
  encrypted data in containers. Each container stores the encrypted data and
  an encrypted copy of the data key. One component of the system, called the
  *control plane*, creates new containers. When it creates a new container,
  it uses this operation (`GenerateDataKeyWithoutPlaintext`) to get an
  encrypted data key and then stores it in the container. Later, a different
  component of the system, called the *data plane*, puts encrypted data into
  the containers. To do this, it passes the encrypted data key to the
  `Decrypt` operation, then uses the returned plaintext data key to encrypt
  data, and finally stores the encrypted data in the container. In this
  system, the control plane never sees the plaintext data key.
  """
  def generate_data_key_without_plaintext(client, input, options \\ []) do
    request(client, "GenerateDataKeyWithoutPlaintext", input, options)
  end

  @doc """
  Returns a random byte string that is cryptographically secure.

  For more information about entropy and random number generation, see the
  [AWS Key Management Service Cryptographic
  Details](https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf)
  whitepaper.
  """
  def generate_random(client, input, options \\ []) do
    request(client, "GenerateRandom", input, options)
  end

  @doc """
  Gets a key policy attached to the specified customer master key (CMK). You
  cannot perform this operation on a CMK in a different AWS account.
  """
  def get_key_policy(client, input, options \\ []) do
    request(client, "GetKeyPolicy", input, options)
  end

  @doc """
  Gets a Boolean value that indicates whether automatic rotation of the key
  material is enabled for the specified customer master key (CMK).

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the KeyId parameter.
  """
  def get_key_rotation_status(client, input, options \\ []) do
    request(client, "GetKeyRotationStatus", input, options)
  end

  @doc """
  Returns the items you need in order to import key material into AWS KMS
  from your existing key management infrastructure. For more information
  about importing key material into AWS KMS, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  You must specify the key ID of the customer master key (CMK) into which you
  will import key material. This CMK's `Origin` must be `EXTERNAL`. You must
  also specify the wrapping algorithm and type of wrapping key (public key)
  that you will use to encrypt the key material. You cannot perform this
  operation on a CMK in a different AWS account.

  This operation returns a public key and an import token. Use the public key
  to encrypt the key material. Store the import token to send with a
  subsequent `ImportKeyMaterial` request. The public key and import token
  from the same response must be used together. These items are valid for 24
  hours. When they expire, they cannot be used for a subsequent
  `ImportKeyMaterial` request. To get new ones, send another
  `GetParametersForImport` request.
  """
  def get_parameters_for_import(client, input, options \\ []) do
    request(client, "GetParametersForImport", input, options)
  end

  @doc """
  Imports key material into an existing AWS KMS customer master key (CMK)
  that was created without key material. You cannot perform this operation on
  a CMK in a different AWS account. For more information about creating CMKs
  with no key material and then importing key material, see [Importing Key
  Material](http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
  in the *AWS Key Management Service Developer Guide*.

  Before using this operation, call `GetParametersForImport`. Its response
  includes a public key and an import token. Use the public key to encrypt
  the key material. Then, submit the import token from the same
  `GetParametersForImport` response.

  When calling this operation, you must specify the following values:

  <ul> <li> The key ID or key ARN of a CMK with no key material. Its `Origin`
  must be `EXTERNAL`.

  To create a CMK with no key material, call `CreateKey` and set the value of
  its `Origin` parameter to `EXTERNAL`. To get the `Origin` of a CMK, call
  `DescribeKey`.)

  </li> <li> The encrypted key material. To get the public key to encrypt the
  key material, call `GetParametersForImport`.

  </li> <li> The import token that `GetParametersForImport` returned. This
  token and the public key used to encrypt the key material must have come
  from the same response.

  </li> <li> Whether the key material expires and if so, when. If you set an
  expiration date, you can change it only by reimporting the same key
  material and specifying a new expiration date. If the key material expires,
  AWS KMS deletes the key material and the CMK becomes unusable. To use the
  CMK again, you must reimport the same key material.

  </li> </ul> When this operation is successful, the CMK's key state changes
  from `PendingImport` to `Enabled`, and you can use the CMK. After you
  successfully import key material into a CMK, you can reimport the same key
  material into that CMK, but you cannot import different key material.
  """
  def import_key_material(client, input, options \\ []) do
    request(client, "ImportKeyMaterial", input, options)
  end

  @doc """
  Gets a list of all aliases in the caller's AWS account and region. You
  cannot list aliases in other accounts. For more information about aliases,
  see `CreateAlias`.

  The response might include several aliases that do not have a `TargetKeyId`
  field because they are not associated with a CMK. These are predefined
  aliases that are reserved for CMKs managed by AWS services. If an alias is
  not associated with a CMK, the alias does not count against the [alias
  limit](http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit)
  for your account.
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  Gets a list of all grants for the specified customer master key (CMK).

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the KeyId parameter.
  """
  def list_grants(client, input, options \\ []) do
    request(client, "ListGrants", input, options)
  end

  @doc """
  Gets the names of the key policies that are attached to a customer master
  key (CMK). This operation is designed to get policy names that you can use
  in a `GetKeyPolicy` operation. However, the only valid policy name is
  `default`. You cannot perform this operation on a CMK in a different AWS
  account.
  """
  def list_key_policies(client, input, options \\ []) do
    request(client, "ListKeyPolicies", input, options)
  end

  @doc """
  Gets a list of all customer master keys (CMKs) in the caller's AWS account
  and region.
  """
  def list_keys(client, input, options \\ []) do
    request(client, "ListKeys", input, options)
  end

  @doc """
  Returns a list of all tags for the specified customer master key (CMK).

  You cannot perform this operation on a CMK in a different AWS account.
  """
  def list_resource_tags(client, input, options \\ []) do
    request(client, "ListResourceTags", input, options)
  end

  @doc """
  Returns a list of all grants for which the grant's `RetiringPrincipal`
  matches the one specified.

  A typical use is to list all grants that you are able to retire. To retire
  a grant, use `RetireGrant`.
  """
  def list_retirable_grants(client, input, options \\ []) do
    request(client, "ListRetirableGrants", input, options)
  end

  @doc """
  Attaches a key policy to the specified customer master key (CMK). You
  cannot perform this operation on a CMK in a different AWS account.

  For more information about key policies, see [Key
  Policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def put_key_policy(client, input, options \\ []) do
    request(client, "PutKeyPolicy", input, options)
  end

  @doc """
  Encrypts data on the server side with a new customer master key (CMK)
  without exposing the plaintext of the data on the client side. The data is
  first decrypted and then reencrypted. You can also use this operation to
  change the encryption context of a ciphertext.

  You can reencrypt data using CMKs in different AWS accounts.

  Unlike other operations, `ReEncrypt` is authorized twice, once as
  `ReEncryptFrom` on the source CMK and once as `ReEncryptTo` on the
  destination CMK. We recommend that you include the `"kms:ReEncrypt*"`
  permission in your [key
  policies](http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
  to permit reencryption from or to the CMK. This permission is automatically
  included in the key policy when you create a CMK through the console, but
  you must include it manually when you create a CMK programmatically or when
  you set a key policy with the `PutKeyPolicy` operation.
  """
  def re_encrypt(client, input, options \\ []) do
    request(client, "ReEncrypt", input, options)
  end

  @doc """
  Retires a grant. To clean up, you can retire a grant when you're done using
  it. You should revoke a grant when you intend to actively deny operations
  that depend on it. The following are permitted to call this API:

  <ul> <li> The AWS account (root user) under which the grant was created

  </li> <li> The `RetiringPrincipal`, if present in the grant

  </li> <li> The `GranteePrincipal`, if `RetireGrant` is an operation
  specified in the grant

  </li> </ul> You must identify the grant to retire by its grant token or by
  a combination of the grant ID and the Amazon Resource Name (ARN) of the
  customer master key (CMK). A grant token is a unique variable-length
  base64-encoded string. A grant ID is a 64 character unique identifier of a
  grant. The `CreateGrant` operation returns both.
  """
  def retire_grant(client, input, options \\ []) do
    request(client, "RetireGrant", input, options)
  end

  @doc """
  Revokes the specified grant for the specified customer master key (CMK).
  You can revoke a grant to actively deny operations that depend on it.

  To perform this operation on a CMK in a different AWS account, specify the
  key ARN in the value of the KeyId parameter.
  """
  def revoke_grant(client, input, options \\ []) do
    request(client, "RevokeGrant", input, options)
  end

  @doc """
  Schedules the deletion of a customer master key (CMK). You may provide a
  waiting period, specified in days, before deletion occurs. If you do not
  provide a waiting period, the default period of 30 days is used. When this
  operation is successful, the state of the CMK changes to `PendingDeletion`.
  Before the waiting period ends, you can use `CancelKeyDeletion` to cancel
  the deletion of the CMK. After the waiting period ends, AWS KMS deletes the
  CMK and all AWS KMS data associated with it, including all aliases that
  refer to it.

  You cannot perform this operation on a CMK in a different AWS account.

  <important> Deleting a CMK is a destructive and potentially dangerous
  operation. When a CMK is deleted, all data that was encrypted under the CMK
  is rendered unrecoverable. To restrict the use of a CMK without deleting
  it, use `DisableKey`.

  </important> For more information about scheduling a CMK for deletion, see
  [Deleting Customer Master
  Keys](http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
  in the *AWS Key Management Service Developer Guide*.
  """
  def schedule_key_deletion(client, input, options \\ []) do
    request(client, "ScheduleKeyDeletion", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified customer master key
  (CMK). You cannot perform this operation on a CMK in a different AWS
  account.

  Each tag consists of a tag key and a tag value. Tag keys and tag values are
  both required, but tag values can be empty (null) strings.

  You cannot use the same tag key more than once per CMK. For example,
  consider a CMK with one tag whose tag key is `Purpose` and tag value is
  `Test`. If you send a `TagResource` request for this CMK with a tag key of
  `Purpose` and a tag value of `Prod`, it does not create a second tag.
  Instead, the original tag is overwritten with the new tag value.

  For information about the rules that apply to tag keys and tag values, see
  [User-Defined Tag
  Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the specified tag or tags from the specified customer master key
  (CMK). You cannot perform this operation on a CMK in a different AWS
  account.

  To remove a tag, you specify the tag key for each tag to remove. You do not
  specify the tag value. To overwrite the tag value for an existing tag, use
  `TagResource`.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Associates an existing alias with a different customer master key (CMK).
  Each CMK can have multiple aliases, but the aliases must be unique within
  the account and region. You cannot perform this operation on an alias in a
  different AWS account.

  This operation works only on existing aliases. To change the alias of a CMK
  to a new value, use `CreateAlias` to create a new alias and `DeleteAlias`
  to delete the old alias.

  Because an alias is not a property of a CMK, you can create, update, and
  delete the aliases of a CMK without affecting the CMK. Also, aliases do not
  appear in the response from the `DescribeKey` operation. To get the aliases
  of all CMKs in the account, use the `ListAliases` operation.

  An alias name can contain only alphanumeric characters, forward slashes
  (/), underscores (_), and dashes (-). An alias must start with the word
  `alias` followed by a forward slash (`alias/`). The alias name can contain
  only alphanumeric characters, forward slashes (/), underscores (_), and
  dashes (-). Alias names cannot begin with `aws`; that alias name prefix is
  reserved by Amazon Web Services (AWS).
  """
  def update_alias(client, input, options \\ []) do
    request(client, "UpdateAlias", input, options)
  end

  @doc """
  Updates the description of a customer master key (CMK). To see the
  decription of a CMK, use `DescribeKey`.

  You cannot perform this operation on a CMK in a different AWS account.
  """
  def update_key_description(client, input, options \\ []) do
    request(client, "UpdateKeyDescription", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "kms"}
    host = get_host("kms", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "TrentService.#{action}"}]
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
