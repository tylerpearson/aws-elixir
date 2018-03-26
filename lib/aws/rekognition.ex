# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Rekognition do
  @moduledoc """
  This is the Amazon Rekognition API reference.
  """

  @doc """
  Compares a face in the *source* input image with each of the 100 largest
  faces detected in the *target* input image.

  <note> If the source image contains multiple faces, the service detects the
  largest face and compares it with each face detected in the target image.

  </note> You pass the input and target images either as base64-encoded image
  bytes or as a references to images in an Amazon S3 bucket. If you use the
  Amazon CLI to call Amazon Rekognition operations, passing image bytes is
  not supported. The image must be either a PNG or JPEG formatted file.

  In response, the operation returns an array of face matches ordered by
  similarity score in descending order. For each face match, the response
  provides a bounding box of the face, facial landmarks, pose details (pitch,
  role, and yaw), quality (brightness and sharpness), and confidence value
  (indicating the level of confidence that the bounding box contains a face).
  The response also provides a similarity score, which indicates how closely
  the faces match.

  <note> By default, only faces with a similarity score of greater than or
  equal to 80% are returned in the response. You can change this value by
  specifying the `SimilarityThreshold` parameter.

  </note> `CompareFaces` also returns an array of faces that don't match the
  source image. For each face, it returns a bounding box, confidence value,
  landmarks, pose details, and quality. The response also returns information
  about the face in the source image, including the bounding box of the face
  and confidence value.

  If the image doesn't contain Exif metadata, `CompareFaces` returns
  orientation information for the source and target images. Use these values
  to display the images with the correct image orientation.

  If no faces are detected in the source or target images, `CompareFaces`
  returns an `InvalidParameterException` error.

  <note> This is a stateless API operation. That is, data returned by this
  operation doesn't persist.

  </note> For an example, see `faces-compare-images`.

  This operation requires permissions to perform the
  `rekognition:CompareFaces` action.
  """
  def compare_faces(client, input, options \\ []) do
    request(client, "CompareFaces", input, options)
  end

  @doc """
  Creates a collection in an AWS Region. You can add faces to the collection
  using the operation.

  For example, you might create collections, one for each of your application
  users. A user can then index faces using the `IndexFaces` operation and
  persist results in a specific collection. Then, a user can search the
  collection for faces in the user-specific container.

  <note> Collection names are case-sensitive.

  </note> This operation requires permissions to perform the
  `rekognition:CreateCollection` action.
  """
  def create_collection(client, input, options \\ []) do
    request(client, "CreateCollection", input, options)
  end

  @doc """
  Creates an Amazon Rekognition stream processor that you can use to detect
  and recognize faces in a streaming video.

  Rekognition Video is a consumer of live video from Amazon Kinesis Video
  Streams. Rekognition Video sends analysis results to Amazon Kinesis Data
  Streams.

  You provide as input a Kinesis video stream (`Input`) and a Kinesis data
  stream (`Output`) stream. You also specify the face recognition criteria in
  `Settings`. For example, the collection containing faces that you want to
  recognize. Use `Name` to assign an identifier for the stream processor. You
  use `Name` to manage the stream processor. For example, you can start
  processing the source video by calling with the `Name` field.

  After you have finished analyzing a streaming video, use to stop
  processing. You can delete the stream processor by calling .
  """
  def create_stream_processor(client, input, options \\ []) do
    request(client, "CreateStreamProcessor", input, options)
  end

  @doc """
  Deletes the specified collection. Note that this operation removes all
  faces in the collection. For an example, see `delete-collection-procedure`.

  This operation requires permissions to perform the
  `rekognition:DeleteCollection` action.
  """
  def delete_collection(client, input, options \\ []) do
    request(client, "DeleteCollection", input, options)
  end

  @doc """
  Deletes faces from a collection. You specify a collection ID and an array
  of face IDs to remove from the collection.

  This operation requires permissions to perform the
  `rekognition:DeleteFaces` action.
  """
  def delete_faces(client, input, options \\ []) do
    request(client, "DeleteFaces", input, options)
  end

  @doc """
  Deletes the stream processor identified by `Name`. You assign the value for
  `Name` when you create the stream processor with . You might not be able to
  use the same name for a stream processor for a few seconds after calling
  `DeleteStreamProcessor`.
  """
  def delete_stream_processor(client, input, options \\ []) do
    request(client, "DeleteStreamProcessor", input, options)
  end

  @doc """
  Provides information about a stream processor created by . You can get
  information about the input and output streams, the input parameters for
  the face recognition being performed, and the current status of the stream
  processor.
  """
  def describe_stream_processor(client, input, options \\ []) do
    request(client, "DescribeStreamProcessor", input, options)
  end

  @doc """
  Detects faces within an image that is provided as input.

  `DetectFaces` detects the 100 largest faces in the image. For each face
  detected, the operation returns face details including a bounding box of
  the face, a confidence value (that the bounding box contains a face), and a
  fixed set of attributes such as facial landmarks (for example, coordinates
  of eye and mouth), gender, presence of beard, sunglasses, etc.

  The face-detection algorithm is most effective on frontal faces. For
  non-frontal or obscured faces, the algorithm may not detect the faces or
  might detect faces with lower confidence.

  You pass the input image either as base64-encoded image bytes or as a
  reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to
  call Amazon Rekognition operations, passing image bytes is not supported.
  The image must be either a PNG or JPEG formatted file.

  <note> This is a stateless API operation. That is, the operation does not
  persist any data.

  </note> For an example, see `procedure-detecting-faces-in-images`.

  This operation requires permissions to perform the
  `rekognition:DetectFaces` action.
  """
  def detect_faces(client, input, options \\ []) do
    request(client, "DetectFaces", input, options)
  end

  @doc """
  Detects instances of real-world entities within an image (JPEG or PNG)
  provided as input. This includes objects like flower, tree, and table;
  events like wedding, graduation, and birthday party; and concepts like
  landscape, evening, and nature. For an example, see `images-s3`.

  <note> `DetectLabels` does not support the detection of activities.
  However, activity detection is supported for label detection in videos. For
  more information, see .

  </note> You pass the input image as base64-encoded image bytes or as a
  reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to
  call Amazon Rekognition operations, passing image bytes is not supported.
  The image must be either a PNG or JPEG formatted file.

  For each object, scene, and concept the API returns one or more labels.
  Each label provides the object name, and the level of confidence that the
  image contains the object. For example, suppose the input image has a
  lighthouse, the sea, and a rock. The response will include all three
  labels, one for each object.

  `{Name: lighthouse, Confidence: 98.4629}`

  `{Name: rock,Confidence: 79.2097}`

  ` {Name: sea,Confidence: 75.061}`

  In the preceding example, the operation returns one label for each of the
  three objects. The operation can also return multiple labels for the same
  object in the image. For example, if the input image shows a flower (for
  example, a tulip), the operation might return the following three labels.

  `{Name: flower,Confidence: 99.0562}`

  `{Name: plant,Confidence: 99.0562}`

  `{Name: tulip,Confidence: 99.0562}`

  In this example, the detection algorithm more precisely identifies the
  flower as a tulip.

  In response, the API returns an array of labels. In addition, the response
  also includes the orientation correction. Optionally, you can specify
  `MinConfidence` to control the confidence threshold for the labels
  returned. The default is 50%. You can also add the `MaxLabels` parameter to
  limit the number of labels returned.

  <note> If the object detected is a person, the operation doesn't provide
  the same facial details that the `DetectFaces` operation provides.

  </note> This is a stateless API operation. That is, the operation does not
  persist any data.

  This operation requires permissions to perform the
  `rekognition:DetectLabels` action.
  """
  def detect_labels(client, input, options \\ []) do
    request(client, "DetectLabels", input, options)
  end

  @doc """
  Detects explicit or suggestive adult content in a specified JPEG or PNG
  format image. Use `DetectModerationLabels` to moderate images depending on
  your requirements. For example, you might want to filter images that
  contain nudity, but not images containing suggestive content.

  To filter images, use the labels returned by `DetectModerationLabels` to
  determine which types of content are appropriate. For information about
  moderation labels, see `moderation`.

  You pass the input image either as base64-encoded image bytes or as a
  reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to
  call Amazon Rekognition operations, passing image bytes is not supported.
  The image must be either a PNG or JPEG formatted file.
  """
  def detect_moderation_labels(client, input, options \\ []) do
    request(client, "DetectModerationLabels", input, options)
  end

  @doc """
  Detects text in the input image and converts it into machine-readable text.

  Pass the input image as base64-encoded image bytes or as a reference to an
  image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
  Rekognition operations, you must pass it as a reference to an image in an
  Amazon S3 bucket. For the AWS CLI, passing image bytes is not supported.
  The image must be either a .png or .jpeg formatted file.

  The `DetectText` operation returns text in an array of elements,
  `TextDetections`. Each `TextDetection` element provides information about a
  single word or line of text that was detected in the image.

  A word is one or more ISO basic latin script characters that are not
  separated by spaces. `DetectText` can detect up to 50 words in an image.

  A line is a string of equally spaced words. A line isn't necessarily a
  complete sentence. For example, a driver's license number is detected as a
  line. A line ends when there is no aligned text after it. Also, a line ends
  when there is a large gap between words, relative to the length of the
  words. This means, depending on the gap between words, Amazon Rekognition
  may detect multiple lines in text aligned in the same direction. Periods
  don't represent the end of a line. If a sentence spans multiple lines, the
  `DetectText` operation returns multiple lines.

  To determine whether a `TextDetection` element is a line of text or a word,
  use the `TextDetection` object `Type` field.

  To be detected, text must be within +/- 30 degrees orientation of the
  horizontal axis.

  For more information, see `text-detection`.
  """
  def detect_text(client, input, options \\ []) do
    request(client, "DetectText", input, options)
  end

  @doc """
  Gets the name and additional information about a celebrity based on his or
  her Rekognition ID. The additional information is returned as an array of
  URLs. If there is no additional information about the celebrity, this list
  is empty. For more information, see `get-celebrity-info-procedure`.

  This operation requires permissions to perform the
  `rekognition:GetCelebrityInfo` action.
  """
  def get_celebrity_info(client, input, options \\ []) do
    request(client, "GetCelebrityInfo", input, options)
  end

  @doc """
  Gets the celebrity recognition results for a Rekognition Video analysis
  started by .

  Celebrity recognition in a video is an asynchronous operation. Analysis is
  started by a call to which returns a job identifier (`JobId`). When the
  celebrity recognition operation finishes, Rekognition Video publishes a
  completion status to the Amazon Simple Notification Service topic
  registered in the initial call to `StartCelebrityRecognition`. To get the
  results of the celebrity recognition analysis, first check that the status
  value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetCelebrityDetection` and pass the job identifier (`JobId`) from the
  initial call to `StartCelebrityDetection`. For more information, see
  `video`.

  `GetCelebrityRecognition` returns detected celebrities and the time(s) they
  are detected in an array (`Celebrities`) of objects. Each
  `CelebrityRecognition` contains information about the celebrity in a object
  and the time, `Timestamp`, the celebrity was detected.

  By default, the `Celebrities` array is sorted by time (milliseconds from
  the start of the video). You can also sort the array by celebrity by
  specifying the value `ID` in the `SortBy` input parameter.

  The `CelebrityDetail` object includes the celebrity identifer and
  additional information urls. If you don't store the additional information
  urls, you can get them later by calling with the celebrity identifer.

  No information is returned for faces not recognized as celebrities.

  Use MaxResults parameter to limit the number of labels returned. If there
  are more results than specified in `MaxResults`, the value of `NextToken`
  in the operation response contains a pagination token for getting the next
  set of results. To get the next page of results, call
  `GetCelebrityDetection` and populate the `NextToken` request parameter with
  the token value returned from the previous call to
  `GetCelebrityRecognition`.
  """
  def get_celebrity_recognition(client, input, options \\ []) do
    request(client, "GetCelebrityRecognition", input, options)
  end

  @doc """
  Gets the content moderation analysis results for a Rekognition Video
  analysis started by .

  Content moderation analysis of a video is an asynchronous operation. You
  start analysis by calling . which returns a job identifier (`JobId`). When
  analysis finishes, Rekognition Video publishes a completion status to the
  Amazon Simple Notification Service topic registered in the initial call to
  `StartContentModeration`. To get the results of the content moderation
  analysis, first check that the status value published to the Amazon SNS
  topic is `SUCCEEDED`. If so, call `GetCelebrityDetection` and pass the job
  identifier (`JobId`) from the initial call to `StartCelebrityDetection`.
  For more information, see `video`.

  `GetContentModeration` returns detected content moderation labels, and the
  time they are detected, in an array, `ModerationLabels`, of objects.

  By default, the moderated labels are returned sorted by time, in
  milliseconds from the start of the video. You can also sort them by
  moderated label by specifying `NAME` for the `SortBy` input parameter.

  Since video analysis can return a large number of results, use the
  `MaxResults` parameter to limit the number of labels returned in a single
  call to `GetContentModeration`. If there are more results than specified in
  `MaxResults`, the value of `NextToken` in the operation response contains a
  pagination token for getting the next set of results. To get the next page
  of results, call `GetContentModeration` and populate the `NextToken`
  request parameter with the value of `NextToken` returned from the previous
  call to `GetContentModeration`.

  For more information, see `moderation`.
  """
  def get_content_moderation(client, input, options \\ []) do
    request(client, "GetContentModeration", input, options)
  end

  @doc """
  Gets face detection results for a Rekognition Video analysis started by .

  Face detection with Rekognition Video is an asynchronous operation. You
  start face detection by calling which returns a job identifier (`JobId`).
  When the face detection operation finishes, Rekognition Video publishes a
  completion status to the Amazon Simple Notification Service topic
  registered in the initial call to `StartFaceDetection`. To get the results
  of the face detection operation, first check that the status value
  published to the Amazon SNS topic is `SUCCEEDED`. If so, call and pass the
  job identifier (`JobId`) from the initial call to `StartFaceDetection`.

  `GetFaceDetection` returns an array of detected faces (`Faces`) sorted by
  the time the faces were detected.

  Use MaxResults parameter to limit the number of labels returned. If there
  are more results than specified in `MaxResults`, the value of `NextToken`
  in the operation response contains a pagination token for getting the next
  set of results. To get the next page of results, call `GetFaceDetection`
  and populate the `NextToken` request parameter with the token value
  returned from the previous call to `GetFaceDetection`.
  """
  def get_face_detection(client, input, options \\ []) do
    request(client, "GetFaceDetection", input, options)
  end

  @doc """
  Gets the face search results for Rekognition Video face search started by .
  The search returns faces in a collection that match the faces of persons
  detected in a video. It also includes the time(s) that faces are matched in
  the video.

  Face search in a video is an asynchronous operation. You start face search
  by calling to which returns a job identifier (`JobId`). When the search
  operation finishes, Rekognition Video publishes a completion status to the
  Amazon Simple Notification Service topic registered in the initial call to
  `StartFaceSearch`. To get the search results, first check that the status
  value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetFaceSearch` and pass the job identifier (`JobId`) from the initial call
  to `StartFaceSearch`. For more information, see `collections`.

  The search results are retured in an array, `Persons`, of objects.
  Each`PersonMatch` element contains details about the matching faces in the
  input collection, person information for the matched person, and the time
  the person was matched in the video.

  By default, the `Persons` array is sorted by the time, in milliseconds from
  the start of the video, persons are matched. You can also sort by persons
  by specifying `INDEX` for the `SORTBY` input parameter.
  """
  def get_face_search(client, input, options \\ []) do
    request(client, "GetFaceSearch", input, options)
  end

  @doc """
  Gets the label detection results of a Rekognition Video analysis started by
  .

  The label detection operation is started by a call to which returns a job
  identifier (`JobId`). When the label detection operation finishes, Amazon
  Rekognition publishes a completion status to the Amazon Simple Notification
  Service topic registered in the initial call to `StartlabelDetection`. To
  get the results of the label detection operation, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartLabelDetection`.

  `GetLabelDetection` returns an array of detected labels (`Labels`) sorted
  by the time the labels were detected. You can also sort by the label name
  by specifying `NAME` for the `SortBy` input parameter.

  The labels returned include the label name, the percentage confidence in
  the accuracy of the detected label, and the time the label was detected in
  the video.

  Use MaxResults parameter to limit the number of labels returned. If there
  are more results than specified in `MaxResults`, the value of `NextToken`
  in the operation response contains a pagination token for getting the next
  set of results. To get the next page of results, call `GetlabelDetection`
  and populate the `NextToken` request parameter with the token value
  returned from the previous call to `GetLabelDetection`.
  """
  def get_label_detection(client, input, options \\ []) do
    request(client, "GetLabelDetection", input, options)
  end

  @doc """
  Gets the person tracking results of a Rekognition Video analysis started by
  .

  The person detection operation is started by a call to
  `StartPersonTracking` which returns a job identifier (`JobId`). When the
  person detection operation finishes, Rekognition Video publishes a
  completion status to the Amazon Simple Notification Service topic
  registered in the initial call to `StartPersonTracking`.

  To get the results of the person tracking operation, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartPersonTracking`.

  `GetPersonTracking` returns an array, `Persons`, of tracked persons and the
  time(s) they were tracked in the video.

  By default, the array is sorted by the time(s) a person is tracked in the
  video. You can sort by tracked persons by specifying `INDEX` for the
  `SortBy` input parameter.

  Use the `MaxResults` parameter to limit the number of items returned. If
  there are more results than specified in `MaxResults`, the value of
  `NextToken` in the operation response contains a pagination token for
  getting the next set of results. To get the next page of results, call
  `GetPersonTracking` and populate the `NextToken` request parameter with the
  token value returned from the previous call to `GetPersonTracking`.
  """
  def get_person_tracking(client, input, options \\ []) do
    request(client, "GetPersonTracking", input, options)
  end

  @doc """
  Detects faces in the input image and adds them to the specified collection.

  Amazon Rekognition does not save the actual faces detected. Instead, the
  underlying detection algorithm first detects the faces in the input image,
  and for each face extracts facial features into a feature vector, and
  stores it in the back-end database. Amazon Rekognition uses feature vectors
  when performing face match and search operations using the and operations.

  If you are using version 1.0 of the face detection model, `IndexFaces`
  indexes the 15 largest faces in the input image. Later versions of the face
  detection model index the 100 largest faces in the input image. To
  determine which version of the model you are using, check the the value of
  `FaceModelVersion` in the response from `IndexFaces`. For more information,
  see `face-detection-model`.

  If you provide the optional `ExternalImageID` for the input image you
  provided, Amazon Rekognition associates this ID with all faces that it
  detects. When you call the operation, the response returns the external ID.
  You can use this external image ID to create a client-side index to
  associate the faces with each image. You can then use the index to find all
  faces in an image.

  In response, the operation returns an array of metadata for all detected
  faces. This includes, the bounding box of the detected face, confidence
  value (indicating the bounding box contains a face), a face ID assigned by
  the service for each face that is detected and stored, and an image ID
  assigned by the service for the input image. If you request all facial
  attributes (using the `detectionAttributes` parameter, Amazon Rekognition
  returns detailed facial attributes such as facial landmarks (for example,
  location of eye and mount) and other facial attributes such gender. If you
  provide the same image, specify the same collection, and use the same
  external ID in the `IndexFaces` operation, Amazon Rekognition doesn't save
  duplicate face metadata.

  The input image is passed either as base64-encoded image bytes or as a
  reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to
  call Amazon Rekognition operations, passing image bytes is not supported.
  The image must be either a PNG or JPEG formatted file.

  This operation requires permissions to perform the `rekognition:IndexFaces`
  action.
  """
  def index_faces(client, input, options \\ []) do
    request(client, "IndexFaces", input, options)
  end

  @doc """
  Returns list of collection IDs in your account. If the result is truncated,
  the response also provides a `NextToken` that you can use in the subsequent
  request to fetch the next set of collection IDs.

  For an example, see `list-collection-procedure`.

  This operation requires permissions to perform the
  `rekognition:ListCollections` action.
  """
  def list_collections(client, input, options \\ []) do
    request(client, "ListCollections", input, options)
  end

  @doc """
  Returns metadata for faces in the specified collection. This metadata
  includes information such as the bounding box coordinates, the confidence
  (that the bounding box contains a face), and face ID. For an example, see
  `list-faces-in-collection-procedure`.

  This operation requires permissions to perform the `rekognition:ListFaces`
  action.
  """
  def list_faces(client, input, options \\ []) do
    request(client, "ListFaces", input, options)
  end

  @doc """
  Gets a list of stream processors that you have created with .
  """
  def list_stream_processors(client, input, options \\ []) do
    request(client, "ListStreamProcessors", input, options)
  end

  @doc """
  Returns an array of celebrities recognized in the input image. For more
  information, see `celebrities`.

  `RecognizeCelebrities` returns the 100 largest faces in the image. It lists
  recognized celebrities in the `CelebrityFaces` array and unrecognized faces
  in the `UnrecognizedFaces` array. `RecognizeCelebrities` doesn't return
  celebrities whose faces are not amongst the largest 100 faces in the image.

  For each celebrity recognized, the `RecognizeCelebrities` returns a
  `Celebrity` object. The `Celebrity` object contains the celebrity name, ID,
  URL links to additional information, match confidence, and a `ComparedFace`
  object that you can use to locate the celebrity's face on the image.

  Rekognition does not retain information about which images a celebrity has
  been recognized in. Your application must store this information and use
  the `Celebrity` ID property as a unique identifier for the celebrity. If
  you don't store the celebrity name or additional information URLs returned
  by `RecognizeCelebrities`, you will need the ID to identify the celebrity
  in a call to the operation.

  You pass the imput image either as base64-encoded image bytes or as a
  reference to an image in an Amazon S3 bucket. If you use the Amazon CLI to
  call Amazon Rekognition operations, passing image bytes is not supported.
  The image must be either a PNG or JPEG formatted file.

  For an example, see `celebrities-procedure-image`.

  This operation requires permissions to perform the
  `rekognition:RecognizeCelebrities` operation.
  """
  def recognize_celebrities(client, input, options \\ []) do
    request(client, "RecognizeCelebrities", input, options)
  end

  @doc """
  For a given input face ID, searches for matching faces in the collection
  the face belongs to. You get a face ID when you add a face to the
  collection using the `IndexFaces` operation. The operation compares the
  features of the input face with faces in the specified collection.

  <note> You can also search faces without indexing faces by using the
  `SearchFacesByImage` operation.

  </note> The operation response returns an array of faces that match,
  ordered by similarity score with the highest similarity first. More
  specifically, it is an array of metadata for each face match that is found.
  Along with the metadata, the response also includes a `confidence` value
  for each face match, indicating the confidence that the specific face
  matches the input face.

  For an example, see `search-face-with-id-procedure`.

  This operation requires permissions to perform the
  `rekognition:SearchFaces` action.
  """
  def search_faces(client, input, options \\ []) do
    request(client, "SearchFaces", input, options)
  end

  @doc """
  For a given input image, first detects the largest face in the image, and
  then searches the specified collection for matching faces. The operation
  compares the features of the input face with faces in the specified
  collection.

  <note> To search for all faces in an input image, you might first call the
  operation, and then use the face IDs returned in subsequent calls to the
  operation.

  You can also call the `DetectFaces` operation and use the bounding boxes in
  the response to make face crops, which then you can pass in to the
  `SearchFacesByImage` operation.

  </note> You pass the input image either as base64-encoded image bytes or as
  a reference to an image in an Amazon S3 bucket. If you use the Amazon CLI
  to call Amazon Rekognition operations, passing image bytes is not
  supported. The image must be either a PNG or JPEG formatted file.

  The response returns an array of faces that match, ordered by similarity
  score with the highest similarity first. More specifically, it is an array
  of metadata for each face match found. Along with the metadata, the
  response also includes a `similarity` indicating how similar the face is to
  the input face. In the response, the operation also returns the bounding
  box (and a confidence level that the bounding box contains a face) of the
  face that Amazon Rekognition used for the input image.

  For an example, see `search-face-with-image-procedure`.

  This operation requires permissions to perform the
  `rekognition:SearchFacesByImage` action.
  """
  def search_faces_by_image(client, input, options \\ []) do
    request(client, "SearchFacesByImage", input, options)
  end

  @doc """
  Starts asynchronous recognition of celebrities in a stored video.

  Rekognition Video can detect celebrities in a video must be stored in an
  Amazon S3 bucket. Use `Video` to specify the bucket name and the filename
  of the video. `StartCelebrityRecognition` returns a job identifier
  (`JobId`) which you use to get the results of the analysis. When celebrity
  recognition analysis is finished, Rekognition Video publishes a completion
  status to the Amazon Simple Notification Service topic that you specify in
  `NotificationChannel`. To get the results of the celebrity recognition
  analysis, first check that the status value published to the Amazon SNS
  topic is `SUCCEEDED`. If so, call and pass the job identifier (`JobId`)
  from the initial call to `StartCelebrityRecognition`. For more information,
  see `celebrities`.
  """
  def start_celebrity_recognition(client, input, options \\ []) do
    request(client, "StartCelebrityRecognition", input, options)
  end

  @doc """
  Starts asynchronous detection of explicit or suggestive adult content in a
  stored video.

  Rekognition Video can moderate content in a video stored in an Amazon S3
  bucket. Use `Video` to specify the bucket name and the filename of the
  video. `StartContentModeration` returns a job identifier (`JobId`) which
  you use to get the results of the analysis. When content moderation
  analysis is finished, Rekognition Video publishes a completion status to
  the Amazon Simple Notification Service topic that you specify in
  `NotificationChannel`.

  To get the results of the content moderation analysis, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartContentModeration`. For more information, see `moderation`.
  """
  def start_content_moderation(client, input, options \\ []) do
    request(client, "StartContentModeration", input, options)
  end

  @doc """
  Starts asynchronous detection of faces in a stored video.

  Rekognition Video can detect faces in a video stored in an Amazon S3
  bucket. Use `Video` to specify the bucket name and the filename of the
  video. `StartFaceDetection` returns a job identifier (`JobId`) that you use
  to get the results of the operation. When face detection is finished,
  Rekognition Video publishes a completion status to the Amazon Simple
  Notification Service topic that you specify in `NotificationChannel`. To
  get the results of the label detection operation, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartFaceDetection`. For more information, see `faces-video`.
  """
  def start_face_detection(client, input, options \\ []) do
    request(client, "StartFaceDetection", input, options)
  end

  @doc """
  Starts the asynchronous search for faces in a collection that match the
  faces of persons detected in a stored video.

  The video must be stored in an Amazon S3 bucket. Use `Video` to specify the
  bucket name and the filename of the video. `StartFaceSearch` returns a job
  identifier (`JobId`) which you use to get the search results once the
  search has completed. When searching is finished, Rekognition Video
  publishes a completion status to the Amazon Simple Notification Service
  topic that you specify in `NotificationChannel`. To get the search results,
  first check that the status value published to the Amazon SNS topic is
  `SUCCEEDED`. If so, call and pass the job identifier (`JobId`) from the
  initial call to `StartFaceSearch`. For more information, see
  `collections-search-person`.
  """
  def start_face_search(client, input, options \\ []) do
    request(client, "StartFaceSearch", input, options)
  end

  @doc """
  Starts asynchronous detection of labels in a stored video.

  Rekognition Video can detect labels in a video. Labels are instances of
  real-world entities. This includes objects like flower, tree, and table;
  events like wedding, graduation, and birthday party; concepts like
  landscape, evening, and nature; and activities like a person getting out of
  a car or a person skiing.

  The video must be stored in an Amazon S3 bucket. Use `Video` to specify the
  bucket name and the filename of the video. `StartLabelDetection` returns a
  job identifier (`JobId`) which you use to get the results of the operation.
  When label detection is finished, Rekognition Video publishes a completion
  status to the Amazon Simple Notification Service topic that you specify in
  `NotificationChannel`.

  To get the results of the label detection operation, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartLabelDetection`.

  <p/>
  """
  def start_label_detection(client, input, options \\ []) do
    request(client, "StartLabelDetection", input, options)
  end

  @doc """
  Starts the asynchronous tracking of persons in a stored video.

  Rekognition Video can track persons in a video stored in an Amazon S3
  bucket. Use `Video` to specify the bucket name and the filename of the
  video. `StartPersonTracking` returns a job identifier (`JobId`) which you
  use to get the results of the operation. When label detection is finished,
  Amazon Rekognition publishes a completion status to the Amazon Simple
  Notification Service topic that you specify in `NotificationChannel`.

  To get the results of the person detection operation, first check that the
  status value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  and pass the job identifier (`JobId`) from the initial call to
  `StartPersonTracking`.
  """
  def start_person_tracking(client, input, options \\ []) do
    request(client, "StartPersonTracking", input, options)
  end

  @doc """
  Starts processing a stream processor. You create a stream processor by
  calling . To tell `StartStreamProcessor` which stream processor to start,
  use the value of the `Name` field specified in the call to
  `CreateStreamProcessor`.
  """
  def start_stream_processor(client, input, options \\ []) do
    request(client, "StartStreamProcessor", input, options)
  end

  @doc """
  Stops a running stream processor that was created by .
  """
  def stop_stream_processor(client, input, options \\ []) do
    request(client, "StopStreamProcessor", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "rekognition"}
    host = get_host("rekognition", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "RekognitionService.#{action}"}]
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
