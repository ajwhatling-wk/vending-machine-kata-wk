library tool.dev;

import 'package:dart_dev/dart_dev.dart' show Environment, TestRunnerConfig, config, dev;

main(List<String> args) async {
  // https://github.com/Workiva/dart_dev

  // Perform task configuration here as necessary.

  // Available task configurations:
  // config.analyze
  // config.copyLicense
  // config.coverage
  // config.docs
  // config.examples
  // config.format
  // config.test

  config.test
    ..platforms = ['content-shell']
    // ..unitTests = ['test/unit/generated_runner_test.dart']
    ..integrationTests = ['test/integration/generated_runner_test.dart']
    ..pubServe = true;

  config.genTestRunner.configs = [
    new TestRunnerConfig(
        directory: 'test/integration',
        env: Environment.browser,
        filename: 'generated_runner_test',
        preTestCommands: [
          'setClientConfiguration();',
          'enableTestMode();',
        ],
        dartHeaders: [
          "import 'package:over_react/over_react.dart';",
        ],
        genHtml: true,
        htmlHeaders: [
          '<script src="packages/react/react_with_addons.js"></script>',
          '<script src="packages/react/react_dom.js"></script>']),
  ];

  await dev(args);
}
