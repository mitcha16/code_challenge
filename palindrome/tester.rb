class Tester
  class T1
    def palindrome?(string)
      return false if string.class != String || string.empty?
      formatted_string = string.downcase.gsub(/\W/, '')
      formatted_string == formatted_string.reverse
    end
  end

  class T2
    def palindrome?(string)
      begin
        str = string.downcase.gsub(/\W/, '')
        return true if (0 ... str.length/2).all? { |i| str[i] == str[-i - 1] } unless string.empty?
      rescue
      end
      return false
    end
  end
end
