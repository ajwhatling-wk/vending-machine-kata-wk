part of vending_machine;

@Factory()
UiFactory<VendingMachineChromeProps> VendingMachineChrome;

@Props()
class VendingMachineChromeProps extends UiProps {
}

@Component()
class VendingMachineChromeComponent extends UiComponent<VendingMachineChromeProps> {
  @override
  render() {
    return Dom.p()();
  }
}