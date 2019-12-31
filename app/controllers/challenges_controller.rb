class ChallengesController < ApplicationController
    def index
        challenges = Challenge.all
        render json: ChallengeSerializer.new(challenges).serialized_json
    end
end