def cipher(text, shift)

    result = ""

    first_char_code = "A".ord
    offset = ("z".ord - "A".ord) + 1

    for c in text.split("")

        new_char = " "

        if c != " "
            old_idx = c.ord - first_char_code
            shifted_idx = old_idx + shift
            while shifted_idx < 0 do shifted_idx += offset end
            
            new_idx = shifted_idx % offset

            new_char = (first_char_code + new_idx).chr
        end

        result += new_char
    end

    return result
end

def decipher(cipher, shift)

    cipher(cipher, shift * -1)
end

# Doesn't work with special charcters
text = "For your eyes only The Best Caesar Salad recipe"
puts "text: #{text}"

puts

cipher_text = cipher(text, 10)
puts "Ciphered text: #{cipher_text}"
puts "Deciphered text: #{decipher(cipher_text,10)}"
