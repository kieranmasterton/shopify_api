# frozen_string_literal: true
require 'graphlient'

module ShopifyAPI
  # GraphQL API.
  class GraphQL
    def initialize
      uri = Base.site.dup
      uri.path = '/admin/api/graphql.json'
      @client = ::Graphlient::Client.new(uri.to_s, headers: Base.headers)
    end

    delegate :parse, :query, :execute, :schema, to: :@client
  end
end
