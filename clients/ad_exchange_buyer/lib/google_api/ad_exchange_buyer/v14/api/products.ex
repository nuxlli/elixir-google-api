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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.Products do
  @moduledoc """
  API calls for all endpoints tagged `Products`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the requested product by id.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - product_id (String.t): The id for the product to get the head revision for.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.Product{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_products_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.Product.t()} | {:error, Tesla.Env.t()}
  def adexchangebuyer_products_get(connection, product_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/products/{productId}", %{
        "productId" => URI.encode_www_form(product_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdExchangeBuyer.V14.Model.Product{})
  end

  @doc """
  Gets the requested product.

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :pqlQuery (String.t): The pql query used to query for products.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.GetOffersResponse{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_products_search(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.GetOffersResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_products_search(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pqlQuery => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/products/search")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.AdExchangeBuyer.V14.Model.GetOffersResponse{})
  end
end
