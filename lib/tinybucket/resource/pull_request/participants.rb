# frozen_string_literal: true

module Tinybucket
  module Resource
    module PullRequest
      class Participants < Tinybucket::Resource::PullRequest::Base
        # Get the specific comment on the pull request.
        #
        # @param comment_id [String]
        # @param options [Hash]
        # @return [Tinybucket::Model::Comment]
        # def find(comment_id, options)
        #   comment_api.find(comment_id, options)
        # end

        # private

        # def comment_api
        #   create_api('Comments', @pull_request.repo_keys).tap do |api|
        #     api.commented_to = @pull_request
        #   end
        # end

        private

        def enumerator
          params = [@pull_request.id].concat(@args)

          create_enumerator(pull_request_api, :participants, *params) do |m|
            inject_repo_keys(m, @pull_request.repo_keys)
          end
        end
      end
    end
  end
end
