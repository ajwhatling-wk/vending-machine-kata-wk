library vending_machine_view_test;

import 'dart:html';
import 'package:react/react.dart' as react;
import 'package:over_react/over_react.dart';
import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'package:vending_machine_kata/src/vending_machine/vending_machine.dart';

main() {
  group('Vending Machine View', () {
    react.Component component;
    VendingMachineViewProps props;
    setUp(() {
      ReactElement element = VendingMachineView()();

      component = renderAndGetComponent(element);
      props = component.props as VendingMachineViewProps;
    });
  });
}