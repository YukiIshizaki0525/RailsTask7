class User < ApplicationRecord
  attr_accessor :name, :age

  def intialize(name:, age:)
    self.name = name
    self.age = age
  end

  def disp_name
    # 途中で条件が合った場合はdisp_nameの処理を終わらせたいためreturnを用いる
    if self.age > 19
      return "#{self.name}さん"
    elsif self.age > 10
      return "#{self.name}くん"
    elsif self.age > 0
      return "#{self.name}ちゃん"
    else
      return "不正な値です"
    end
  end
end
