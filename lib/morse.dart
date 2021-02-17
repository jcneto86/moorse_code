class Morse {
  Map morseMap = {
    'A': ".-",
    'B': "-...",
    'C': "-.-.",
    'D': "-..",
    'E': ".",
    'F': "..-.",
    'G': "--.",
    'H': "....",
    'I': "..",
    'J': ".---",
    'K': "-.-",
    'L': ".-..",
    'M': "--",
    'N': "-.",
    'O': "---",
    'P': ".--.",
    'Q': "--.-",
    'R': ".-.",
    'S': "...",
    'T': "-",
    'U': "..-",
    'V': "...-",
    'W': ".--",
    'X': "-..-",
    'Y': "-.--",
    'Z': "--..",
    '0': "-----",
    '1': ".----",
    '2': "..---",
    '3': "...--",
    '4': "....-",
    '5': ".....",
    '6': "-....",
    '7': "--...",
    '8': "---..",
    '9': "----.",
    '.': ".-.-.-"
  };

  // ignore: missing_return
  String getMorse(String s) {
    if (s.length == 1)
      return morseMap[s];
    else
      new Exception('Parameter value must be a string with only one character');
  }

  // ignore: missing_return
  String getAlpha(String s) {
    if (s.length > 0 && s.length <= 6) {
      morseMap.forEach((k, v) {
        if (s == v) return k;
      });
    } else {
      new Exception(
          'Parameter value must be a string with a maximum of six characters');
    }
  }
}
