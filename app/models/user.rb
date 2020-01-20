class User < ApplicationRecord
    
    def destroy
        run_callbacks :destroy do
            self.deleted_at = Time.now
            self.save
        end
    end
end