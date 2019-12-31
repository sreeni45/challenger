class ChallengesController < ApplicationController
    def index
        challenges = Challenge.all
        render status:200, json: ChallengeSerializer.new(challenges).serialized_json
    end
end