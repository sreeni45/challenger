class ChallengesController < ApplicationController
    def index
        challenges = Challenge.all
        render json: PostSerializer.new(challenges).serialized_json
    end
end