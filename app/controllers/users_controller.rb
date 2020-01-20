require 'koala'

class UsersController < ApplicationController
    def get_fb_user
        fb_uid = params[:user_id]
        user = User.find_or_create_by(uid: fb_uid, provider: 'facebook') do |user|
            graph = Koala::Facebook::API.new
            profile = graph.get_object(fb_uid)
            profile_pic = graph.get_picture(fb_uid)
            user.name = profile["name"]
            user.profile_pic = profile_pic
        end
        
        if user
            render status:200, json: UserSerializer.new(user).serialized_json
        else
            render status:404, json: {:error => "User Not Found"}
        end
    end
end