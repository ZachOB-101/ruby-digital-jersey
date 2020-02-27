# Create a program which prints the Morse Code alphabet, from A to Z, using . and - (http://en.wikipedia.org/wiki/Morse_code)
# Convert your program so that it works using a “range” and a “loop” and a method to produce the same output (less code for the same output)
# Instead of outputting the alphabet, ask the user to input some text and then convert it to Morse code
# Add functionality to your program to convert input in Morse code back into English

morse_dict = {
    "a" => ".-","b" => "-...","c" => "-.-.","d" => "-..","e" => ".","f" => "..-.","g" => "--.","h" => "....","i" => "..","j" => ".---","k" => "-.-","l" => ".-..","m" => "--","n" => "-.","o" => "---","p" => ".--.","q" => "--.-","r" => ".-.","s" => "...","t" => "-","u" => "..-","v" => "...-","w" => ".--","x" => "-..-","y" => "-.--","z" => "--.."
}



print morse_dict