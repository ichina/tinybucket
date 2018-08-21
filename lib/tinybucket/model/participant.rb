# frozen_string_literal: true

module Tinybucket
  module Model
    # Build Status
    #
    # @see https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Busername%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build
    #   statuses/build Resource
    #
    
    class Participant < Base
      include Tinybucket::Model::Concerns::RepositoryKeys
      include Tinybucket::Model::Concerns::Reloadable

      acceptable_attributes \
        :role, :approved

    end
  end
end
