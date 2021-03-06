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

defmodule GoogleApi.AppEngine.V1.Model.ListInstancesResponse do
  @moduledoc """
  Response message for Instances.ListInstances.

  ## Attributes

  - instances ([Instance]): The instances belonging to the requested version. Defaults to: `null`.
  - nextPageToken (String.t): Continuation token for fetching the next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(GoogleApi.AppEngine.V1.Model.Instance.t()),
          :nextPageToken => any()
        }

  field(:instances, as: GoogleApi.AppEngine.V1.Model.Instance, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ListInstancesResponse do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ListInstancesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ListInstancesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
