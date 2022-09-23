class Message < ActiveRecord::Base

    attr_accessor :message

    def self.created_at
        self.all.order(:created_at)
    end

    # def self.test_it_out
    #     self.all
    # end


end