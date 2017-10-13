require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.split('').sum(&:to_i)
  end

  def age(birthday)
    brth = Date.prase(birthday)
    days = (Date.today - brth).to_i
    "Я живу #{days / 365} года или #{days} дней или" \
    "#{days * 24} часов или #{days * 24 * 60} минут или" \
    "#{days * 24 * 360} секунд"
  rescue StandardError
    'Invalid Date Format'
  end

  def name
    ai = []
    3.times { senpai << gets }
    "Hello #{ai.join(' ')}"
  end
end
