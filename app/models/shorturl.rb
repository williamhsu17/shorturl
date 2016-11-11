class Shorturl < ApplicationRecord
  validates_format_of :input_url, :with => URI::regexp(%w(http https))
  # 不是前端有驗證後端就不用驗證
  validates_presence_of :short_url
  # 這個必須存在
end
