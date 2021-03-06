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

defmodule GoogleApi.Reseller.V1.Model.Customer do
  @moduledoc """
  JSON template for a customer.

  ## Attributes

  - alternateEmail (String.t): Like the \&quot;Customer email\&quot; in the reseller tools, this email is the secondary contact used if something happens to the customer&#39;s service such as service outage or a security issue. This property is required when creating a new customer and should not use the same domain as customerDomain. Defaults to: `null`.
  - customerDomain (String.t): The customer&#39;s primary domain name string. customerDomain is required when creating a new customer. Do not include the www prefix in the domain when adding a customer. Defaults to: `null`.
  - customerDomainVerified (boolean()): Whether the customer&#39;s primary domain has been verified. Defaults to: `null`.
  - customerId (String.t): This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google. Defaults to: `null`.
  - kind (String.t): Identifies the resource as a customer. Value: reseller#customer Defaults to: `null`.
  - phoneNumber (String.t): Customer contact phone number. This can be continuous numbers, with spaces, etc. But it must be a real phone number and not, for example, \&quot;123\&quot;. See phone  local format conventions. Defaults to: `null`.
  - postalAddress (Address): A customer&#39;s address information. Each field has a limit of 255 charcters. Defaults to: `null`.
  - resourceUiUrl (String.t): URL to customer&#39;s Admin console dashboard. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task in the Admin console. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateEmail => any(),
          :customerDomain => any(),
          :customerDomainVerified => any(),
          :customerId => any(),
          :kind => any(),
          :phoneNumber => any(),
          :postalAddress => GoogleApi.Reseller.V1.Model.Address.t(),
          :resourceUiUrl => any()
        }

  field(:alternateEmail)
  field(:customerDomain)
  field(:customerDomainVerified)
  field(:customerId)
  field(:kind)
  field(:phoneNumber)
  field(:postalAddress, as: GoogleApi.Reseller.V1.Model.Address)
  field(:resourceUiUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.Customer do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.Customer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.Customer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
