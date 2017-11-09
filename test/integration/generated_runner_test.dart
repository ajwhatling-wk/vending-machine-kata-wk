@TestOn('browser')
library test.integration.generated_runner_test;

// Generated by `pub run dart_dev gen-test-runner -d test/integration -e Environment.browser --genHtml`

import './vending_machine_int_test.dart' as vending_machine_int_test;
import 'package:test/test.dart';
import "package:over_react/over_react.dart";

void main() {
  setClientConfiguration();
  enableTestMode();
  vending_machine_int_test.main();
}