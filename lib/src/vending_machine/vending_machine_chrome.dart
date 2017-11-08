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
    var containerBuilder = Dom.p()
      ..className = 'vending-machine-chrome';

      
    return containerBuilder();
  }
}