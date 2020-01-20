class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :first_name, :last_name, :uid, :provider, :gender

    link :profile_pic   
end