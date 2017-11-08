part of vending_machine;

@Factory()
UiFactory<VendingMachineViewProps> VendingMachineView;

@Props()
class VendingMachineViewProps extends UiProps {
}

@Component()
class VendingMachineViewComponent extends UiComponent<VendingMachineViewProps> {
  @override
  render() {
    var containerBuilder = Dom.p()
      ..className = 'vending-machine-view';
      
    return containerBuilder();
  }
}