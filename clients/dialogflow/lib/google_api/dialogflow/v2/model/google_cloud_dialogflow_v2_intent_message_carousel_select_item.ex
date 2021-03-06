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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem do
  @moduledoc """
  An item in the carousel.

  ## Attributes

  - info (GoogleCloudDialogflowV2IntentMessageSelectItemInfo): Required. Additional info about the option item. Defaults to: `null`.
  - description (String.t): Optional. The body text of the card. Defaults to: `null`.
  - image (GoogleCloudDialogflowV2IntentMessageImage): Optional. The image to display. Defaults to: `null`.
  - title (String.t): Required. Title of the carousel item. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :info =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSelectItemInfo.t(),
          :description => any(),
          :image => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t(),
          :title => any()
        }

  field(
    :info,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageSelectItemInfo
  )

  field(:description)
  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCarouselSelectItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
