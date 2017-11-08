library rand;

import 'dart:math';

class Generators {
  // Source: https://gist.github.com/damondouglas/30191a38f5c3daa482fc
  static String randomString({int length: 8}) {
    var rand = new Random();
    var codeUnits = new List.generate(length, (index) {
      return rand.nextInt(33) + 89;
    });

    return new String.fromCharCodes(codeUnits);
  }
}
