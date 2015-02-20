import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'example-ctrl',
    useShadowDom: false,
    templateUrl: '/angular-ui.dart.dropdown/web/example/example.html')
class ExampleController {
  ExampleController();
}

/**
 * Dropdown controller.
 */
@Component(
    selector: 'dropdown-ctrl',
    useShadowDom: false)
class DropdownCtrl {}

/**
 * Tooltip controller.
 */
@Component(
    selector: 'tooltip-ctrl',
    useShadowDom: false)
class TooltipCtrl{}

class ExampleModule extends Module {
  ExampleModule() {
    bind(ExampleController);
    bind(DropdownCtrl);
    bind(TooltipCtrl);
  }
}
