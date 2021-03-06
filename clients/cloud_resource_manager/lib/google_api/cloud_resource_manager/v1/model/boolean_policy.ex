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

defmodule GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy do
  @moduledoc """
  Used in &#x60;policy_type&#x60; to specify how &#x60;boolean_policy&#x60; will behave at this resource.

  ## Attributes

  - enforced (boolean()): If &#x60;true&#x60;, then the &#x60;Policy&#x60; is enforced. If &#x60;false&#x60;, then any configuration is acceptable.  Suppose you have a &#x60;Constraint&#x60; &#x60;constraints/compute.disableSerialPortAccess&#x60; with &#x60;constraint_default&#x60; set to &#x60;ALLOW&#x60;. A &#x60;Policy&#x60; for that &#x60;Constraint&#x60; exhibits the following behavior:   - If the &#x60;Policy&#x60; at this resource has enforced set to &#x60;false&#x60;, serial     port connection attempts will be allowed.   - If the &#x60;Policy&#x60; at this resource has enforced set to &#x60;true&#x60;, serial     port connection attempts will be refused.   - If the &#x60;Policy&#x60; at this resource is &#x60;RestoreDefault&#x60;, serial port     connection attempts will be allowed.   - If no &#x60;Policy&#x60; is set at this resource or anywhere higher in the     resource hierarchy, serial port connection attempts will be allowed.   - If no &#x60;Policy&#x60; is set at this resource, but one exists higher in the     resource hierarchy, the behavior is as if the&#x60;Policy&#x60; were set at     this resource.  The following examples demonstrate the different possible layerings:  Example 1 (nearest &#x60;Constraint&#x60; wins):   &#x60;organizations/foo&#x60; has a &#x60;Policy&#x60; with:     {enforced: false}   &#x60;projects/bar&#x60; has no &#x60;Policy&#x60; set. The constraint at &#x60;projects/bar&#x60; and &#x60;organizations/foo&#x60; will not be enforced.  Example 2 (enforcement gets replaced):   &#x60;organizations/foo&#x60; has a &#x60;Policy&#x60; with:     {enforced: false}   &#x60;projects/bar&#x60; has a &#x60;Policy&#x60; with:     {enforced: true} The constraint at &#x60;organizations/foo&#x60; is not enforced. The constraint at &#x60;projects/bar&#x60; is enforced.  Example 3 (RestoreDefault):   &#x60;organizations/foo&#x60; has a &#x60;Policy&#x60; with:     {enforced: true}   &#x60;projects/bar&#x60; has a &#x60;Policy&#x60; with:     {RestoreDefault: {}} The constraint at &#x60;organizations/foo&#x60; is enforced. The constraint at &#x60;projects/bar&#x60; is not enforced, because &#x60;constraint_default&#x60; for the &#x60;Constraint&#x60; is &#x60;ALLOW&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enforced => any()
        }

  field(:enforced)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
