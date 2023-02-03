def cesarCifrado(str, shift)
    alphabet = Array('a'..'z')
    non_caps = Hash[alphabet.zip( alphabet.rotate(shift)) ]

    alphabet = Array('A'..'Z')
    caps = Hash[alphabet.zip( alphabet.rotate(shift)) ]

    encriptador = non_caps.merge(caps)

    str.chars.map{|c| encriptador.fetch(c, c)}.join
    end

    puts cesarCifrado("What a string!",5)


