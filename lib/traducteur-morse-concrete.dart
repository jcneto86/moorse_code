
import 'package:moorse_code/traducteur-morse.dart';

class TraducteurMorseConcrete implements TraducteurMorse {

  /// Traduit du code Morse international en caracteres latins.
  /// Les symboles permis sont ., -, / et l'espace. Si la chaine
  /// fournie n'est pas du Morse, ...
  ///
  /// @param morse Une chaine de caracteres contenant un message en code Morse
  /// @return L'equivalent en caracteres latins.
  String toAlpha(String morse) {
    List morseToConvertir = morse.split(" ");
    String alphaToReturn = "";
    for (int i = 0; i < morseToConvertir.length; i++) {
      for (int j = 0; j < arrayMorse.length; j++) {
        if (morseToConvertir[i].equals(arrayMorse[j].getMorse())) {
          alphaToReturn += arrayMorse[j].getAlpha();
        }
      }
      if (morseToConvertir[i].equals("/")) {
        alphaToReturn += " ";
      }
    }
    return alphaToReturn.replaceAll("\\s+$", "");
  }

  /// Traduit une chaine de caracteres latins en code Morse
  /// international a l'aide des symboles . (ti) , - (taah),
  /// / (fin mot) et l'espace (fin de caractere). Les caracteres
  /// permis sont les caracteres alphanumeriques, l'espace et le
  /// point. Si la chaine fournie n'est pas valide, ...
  ///
  /// @param alpha Une chaine de caracteres contenant un message en caracteres alphanumeriques
  /// @return L'equivalent en code Morse.
  String toMorse(String alpha) {
    String arrayToConvertir = nettoyerAlpha(alpha);
    String morseToReturn = "";
    for (int i = 0; i < arrayToConvertir.length; i++) {
      String g = arrayToConvertir.substring(i, i);
      for (int j = 0; j < arrayMorse.length; j++) {
        if (g == Morse.getAlpha(g)) {
          morseToReturn += Morse.getMorse(g);
        }
      }
      if (" ".equals(String.valueOf(arrayToConvertir.charAt(i)))) {
        morseToReturn += "/ ";
      } else {
        morseToReturn += " ";
      }
    }
    morseToReturn.replaceAll("\\s+$", "");
    return morseToReturn;
  }

  /// Transforme ou retire les caracteres interdit de la chaine recue.
  /// Les accents sont enleves des lettres et tous les caracteres sont
  /// mis en majuscules. Les caracteres permis sont les majuscules de
  /// A a Z (sans accent), le point et l'espace.
  ///
  /// @param alpha Une chaine de caracteres.
  /// @return La meme chaine, en majuscule, sans accents et sans caracteres speciaux, sauf le point et l'espace.
  String nettoyerAlpha(String alpha) {
    String alphaNettoyer = alpha.toUpperCase();
    alphaNettoyer = alphaNettoyer.replaceAll("[ÉËÈÊ]", "E");
    alphaNettoyer = alphaNettoyer.replaceAll("[ÁÄÀÃÂ]", "A");
    alphaNettoyer = alphaNettoyer.replaceAll("[ÍÏÌÎ]", "I");
    alphaNettoyer = alphaNettoyer.replaceAll("[ÓÖÒÕÔ]", "O");
    alphaNettoyer = alphaNettoyer.replaceAll("[ÚÜÙÛ]", "U");
    alphaNettoyer = alphaNettoyer.replaceAll("[Ç]", "C");
    alphaNettoyer = alphaNettoyer.replaceAll("[Œ]", "OE");
    alphaNettoyer = alphaNettoyer.replaceAll("[^a-zA-Z0-9 .]", "");
    return alphaNettoyer;
  }

  /// Retourne le nom des programmeurs qui ont implemente
  /// l'interface.
  ///
  /// @return Le nom des programmeurs qui ont implemente l'interface.
  String getNomProgrammeurs() {
    return programmeurA + " & " + programmeurB;
  }
}
