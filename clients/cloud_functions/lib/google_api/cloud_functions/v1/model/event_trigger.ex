# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudFunctions.V1.Model.EventTrigger do
  @moduledoc """
  Describes EventTrigger, used to request events be sent from another service.

  ## Attributes

  - eventType (String.t): Required. The type of event to observe. For example: &#x60;providers/cloud.storage/eventTypes/object.change&#x60; and &#x60;providers/cloud.pubsub/eventTypes/topic.publish&#x60;.  Event types match pattern &#x60;providers/*/eventTypes/*.*&#x60;. The pattern contains:  1. namespace: For example, &#x60;cloud.storage&#x60; and    &#x60;google.firebase.analytics&#x60;. 2. resource type: The type of resource on which event occurs. For    example, the Google Cloud Storage API includes the type &#x60;object&#x60;. 3. action: The action that generates the event. For example, action for    a Google Cloud Storage Object is &#39;change&#39;. These parts are lower case. Defaults to: `null`.
  - failurePolicy (FailurePolicy): Specifies policy for failed executions. Defaults to: `null`.
  - resource (String.t): Required. The resource(s) from which to observe events, for example, &#x60;projects/_/buckets/myBucket&#x60;.  Not all syntactically correct values are accepted by all services. For example:  1. The authorization model must support it. Google Cloud Functions    only allows EventTriggers to be deployed that observe resources in the    same project as the &#x60;CloudFunction&#x60;. 2. The resource type must match the pattern expected for an    &#x60;event_type&#x60;. For example, an &#x60;EventTrigger&#x60; that has an    &#x60;event_type&#x60; of \&quot;google.pubsub.topic.publish\&quot; should have a resource    that matches Google Cloud Pub/Sub topics.  Additionally, some services may support short names when creating an &#x60;EventTrigger&#x60;. These will always be returned in the normalized \&quot;long\&quot; format.  See each *service&#39;s* documentation for supported formats. Defaults to: `null`.
  - service (String.t): The hostname of the service that should be observed.  If no string is provided, the default service implementing the API will be used. For example, &#x60;storage.googleapis.com&#x60; is the default for all event types in the &#x60;google.storage&#x60; namespace. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventType => any(),
          :failurePolicy => GoogleApi.CloudFunctions.V1.Model.FailurePolicy.t(),
          :resource => any(),
          :service => any()
        }

  field(:eventType)
  field(:failurePolicy, as: GoogleApi.CloudFunctions.V1.Model.FailurePolicy)
  field(:resource)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.EventTrigger do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.EventTrigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.EventTrigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
