class ChallengeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :description, :begin_at, :end_at

    link :media_url
end