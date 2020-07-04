# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"
      
      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day
      
      # Алгоритм

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.

      if (current_year > dob_year.to_i)
        if(current_month > dob_month.to_i)
            result = current_year - dob_year.to_i
        elsif current_month == dob_month.to_i
          if (current_day >= dob_day.to_i)
            result = current_year - dob_year.to_i
          else
            result = (current_year - dob_year.to_i) -1
          end
        else
          result = (current_year - dob_year.to_i) -1
        end
      elsif current_year == dob_year.to_i
        if current_month > dob_month.to_i
          result = current_year - dob_year.to_i
        elsif current_month == dob_month.to_i
          if current_day >= dob_day.to_i
            result = current_year - dob_year.to_i
          else 
            result = -1
          end
        else
          result = -1
        end
      else
        result = -1
      end

      case 
      when (((dob_month.to_i == 1)||(dob_month.to_i == 3)||(dob_month.to_i == 5)||(dob_month.to_i == 7)||(dob_month.to_i == 8)||(dob_month.to_i == 10)||(dob_month.to_i == 12))&&((dob_day.to_i > 31)||(dob_day.to_i < 1))) 
        then   result = -1
      when ((dob_month.to_i == 2)&&(((dob_year.to_i%4!=0)&&((dob_day.to_i > 28)||(dob_day.to_i < 1)))||((dob_year.to_i%4==0)&&((dob_day.to_i > 29)||(dob_day.to_i < 1))))) 
        then result = -1
      when (dob_month.to_i == 4)&&((dob_day.to_i > 30)||(dob_day.to_i < 1)) 
        then  result = -1
      when (dob_month.to_i == 6)&&((dob_day.to_i > 30)||(dob_day.to_i < 1)) 
        then result = -1
      when (dob_month.to_i == 9)&&((dob_day.to_i > 30)||(dob_day.to_i < 1)) 
        then result = -1
      when (dob_month.to_i == 11)&&((dob_day.to_i > 30)||(dob_day.to_i < 1)) 
        then result = -1
      when(dob_month.to_i > 12)||(dob_month.to_i < 1) 
        then  result = -1
      end

      puts result;

  end
end
