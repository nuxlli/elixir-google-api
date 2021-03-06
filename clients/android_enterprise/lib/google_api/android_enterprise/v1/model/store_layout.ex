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

defmodule GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  @moduledoc """
  General setting for the managed Google Play store layout, currently only specifying the page to display the first time the store is opened.

  ## Attributes

  - homepageId (String.t): The ID of the store page to be used as the homepage. The homepage is the first page shown in the managed Google Play Store.  Not specifying a homepage is equivalent to setting the store layout type to \&quot;basic\&quot;. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#storeLayout\&quot;. Defaults to: `null`.
  - storeLayoutType (String.t): The store layout type. By default, this value is set to \&quot;basic\&quot; if the homepageId field is not set, and to \&quot;custom\&quot; otherwise. If set to \&quot;basic\&quot;, the layout will consist of all approved apps that have been whitelisted for the user. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :homepageId => any(),
          :kind => any(),
          :storeLayoutType => any()
        }

  field(:homepageId)
  field(:kind)
  field(:storeLayoutType)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.StoreLayout.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
