import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'example/example.dart';
import 'package:angular_ui/angular_ui.dart';

main() {
  applicationFactory()
    .addModule(new MainModule())
    .run();
}

class MainModule extends Module {
  MainModule() {
    install(new ExampleModule());
    install(new AngularUIModule());

    bind(RouteInitializerFn, toValue: (Router router, RouteViewFactory views) {
      views.configure({
        'default': ngRoute(
          defaultRoute: true,
          viewHtml: '<example-ctrl></example-ctrl>'
        )
      });
    });

  }
}