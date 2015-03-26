class Record < ActiveRecord::Base
  belongs_to :Player
  @record = user.record.create(record_date: Time.now)
end
