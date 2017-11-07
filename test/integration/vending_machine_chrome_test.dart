@TestOn('browser')
library vending_machine_chrome_test;

import 'dart:html';
import 'package:over_react/over_react.dart';
import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'package:vending_machine_kata/src/vending_machine/vending_machine.dart';

main() {
  group('Vending Machine', () {
    HtmlElement root;
    setUp(() {
      VendingMachineChromeProps vmChromeBuilder = VendingMachineChrome();
      ReactElement vmChromeComponent = vmChromeBuilder();

      render(vmChromeComponent);

      root = document.querySelector('.vending-machine-chrome');

      expect(root, isNotNull);
    });

    test('true should be true', () {
      expect(true, isTrue);
    });
  });
}