@TestOn('browser')
library vending_machine_chrome_test;

import 'dart:html';
import 'package:over_react/over_react.dart';
import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'package:vending_machine_kata/src/vending_machine/vending_machine.dart';

main() {
  group('Vending Machine UI Chrome', () {
    HtmlElement root;
    setUp(() {
      VendingMachineViewProps vmChromeBuilder = VendingMachineView();
      ReactElement vmChromeComponent = vmChromeBuilder();

      render(vmChromeComponent, container: document.body);

      root = document.querySelector('.vending-machine-view');
    });

    test('root element should exist and have a css class of "vending-machine-chrome"', () {
      expect(root, isNotNull);
    });
  });
}