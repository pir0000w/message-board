class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { minimum: 2, maximum: 30 } , presence: true
  # 年齢は０歳以上、100未満
  validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 100 } , presence: true
end