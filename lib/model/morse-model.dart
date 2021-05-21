class MorseModel {
  static Map morseMap = {
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
    '.': ".-.-.-",
    ' ': "/"
  };

  static String getMorse(String alpha) {
    String morseToReturn = "";
    if (alpha.length == 1) {
      morseMap.forEach((key, value) {
        if (alpha.toUpperCase() == key) {
          morseToReturn = value;
        }
      });
      return morseToReturn;
    } else {
      new Exception('Parameter value must be a string with only one character');
      return morseToReturn;
    }
  }

  static String getAlpha(String morse) {
    String alphaToReturn = "";
    if (morse.length > 0 && morse.length <= 6) {
      morseMap.forEach((key, value) {
        if (morse == value) {
          alphaToReturn = key;
        }
      });
      return alphaToReturn;
    } else {
      new Exception(
          'Parameter value must be a string with a maximum of six characters');
      return alphaToReturn;
    }
  }
}
