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

defmodule GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  @moduledoc """
  General volume information.

  ## Attributes

  - allowAnonLogging (boolean()): Whether anonymous logging should be allowed. Defaults to: `null`.
  - authors ([String.t]): The names of the authors and/or editors for this volume. (In LITE projection) Defaults to: `null`.
  - averageRating (float()): The mean review rating for this volume. (min &#x3D; 1.0, max &#x3D; 5.0) Defaults to: `null`.
  - canonicalVolumeLink (String.t): Canonical URL for a volume. (In LITE projection.) Defaults to: `null`.
  - categories ([String.t]): A list of subject categories, such as \&quot;Fiction\&quot;, \&quot;Suspense\&quot;, etc. Defaults to: `null`.
  - contentVersion (String.t): An identifier for the version of the volume content (text &amp; images). (In LITE projection) Defaults to: `null`.
  - description (String.t): A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.) Defaults to: `null`.
  - dimensions (VolumeVolumeInfoDimensions):  Defaults to: `null`.
  - imageLinks (VolumeVolumeInfoImageLinks):  Defaults to: `null`.
  - industryIdentifiers ([VolumeVolumeInfoIndustryIdentifiers]): Industry standard identifiers for this volume. Defaults to: `null`.
  - infoLink (String.t): URL to view information about this volume on the Google Books site. (In LITE projection) Defaults to: `null`.
  - language (String.t): Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as &#39;fr&#39;, &#39;en&#39;, etc. Defaults to: `null`.
  - mainCategory (String.t): The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight. Defaults to: `null`.
  - maturityRating (String.t):  Defaults to: `null`.
  - pageCount (integer()): Total number of pages as per publisher metadata. Defaults to: `null`.
  - panelizationSummary (VolumeVolumeInfoPanelizationSummary):  Defaults to: `null`.
  - previewLink (String.t): URL to preview this volume on the Google Books site. Defaults to: `null`.
  - printType (String.t): Type of publication of this volume. Possible values are BOOK or MAGAZINE. Defaults to: `null`.
  - printedPageCount (integer()): Total number of printed pages in generated pdf representation. Defaults to: `null`.
  - publishedDate (String.t): Date of publication. (In LITE projection.) Defaults to: `null`.
  - publisher (String.t): Publisher of this volume. (In LITE projection.) Defaults to: `null`.
  - ratingsCount (integer()): The number of review ratings for this volume. Defaults to: `null`.
  - samplePageCount (integer()): Total number of sample pages as per publisher metadata. Defaults to: `null`.
  - seriesInfo (Volumeseriesinfo):  Defaults to: `null`.
  - subtitle (String.t): Volume subtitle. (In LITE projection.) Defaults to: `null`.
  - title (String.t): Volume title. (In LITE projection.) Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowAnonLogging => any(),
          :authors => list(any()),
          :averageRating => any(),
          :canonicalVolumeLink => any(),
          :categories => list(any()),
          :contentVersion => any(),
          :description => any(),
          :dimensions => GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions.t(),
          :imageLinks => GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks.t(),
          :industryIdentifiers =>
            list(GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers.t()),
          :infoLink => any(),
          :language => any(),
          :mainCategory => any(),
          :maturityRating => any(),
          :pageCount => any(),
          :panelizationSummary => GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary.t(),
          :previewLink => any(),
          :printType => any(),
          :printedPageCount => any(),
          :publishedDate => any(),
          :publisher => any(),
          :ratingsCount => any(),
          :samplePageCount => any(),
          :seriesInfo => GoogleApi.Books.V1.Model.Volumeseriesinfo.t(),
          :subtitle => any(),
          :title => any()
        }

  field(:allowAnonLogging)
  field(:authors, type: :list)
  field(:averageRating)
  field(:canonicalVolumeLink)
  field(:categories, type: :list)
  field(:contentVersion)
  field(:description)
  field(:dimensions, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoDimensions)
  field(:imageLinks, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoImageLinks)

  field(
    :industryIdentifiers,
    as: GoogleApi.Books.V1.Model.VolumeVolumeInfoIndustryIdentifiers,
    type: :list
  )

  field(:infoLink)
  field(:language)
  field(:mainCategory)
  field(:maturityRating)
  field(:pageCount)
  field(:panelizationSummary, as: GoogleApi.Books.V1.Model.VolumeVolumeInfoPanelizationSummary)
  field(:previewLink)
  field(:printType)
  field(:printedPageCount)
  field(:publishedDate)
  field(:publisher)
  field(:ratingsCount)
  field(:samplePageCount)
  field(:seriesInfo, as: GoogleApi.Books.V1.Model.Volumeseriesinfo)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeVolumeInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeVolumeInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
