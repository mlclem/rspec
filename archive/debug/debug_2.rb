def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (cipher.find_index(char)+ 65).chr
  end
  puts ciphertext_chars.join
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

# Intended output:
#
encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"