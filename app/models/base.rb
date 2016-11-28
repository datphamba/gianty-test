module Base
    def increase_like_count
        self.like_count = self.like_count + 1
        save!
    end
end