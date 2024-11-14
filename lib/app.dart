import 'package:gdg_uganda/components/chat_widget.dart';
import 'package:gdg_uganda/components/theme_controller.dart';
import 'package:gdg_uganda/pages/404.dart';
import 'package:gdg_uganda/pages/chapters.dart';
import 'package:gdg_uganda/pages/devfest_2024.dart';
import 'package:gdg_uganda/pages/past_events.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/home.dart';

// The main component of your application.
//
// By using multi-page routing, this component will only be built on the server during pre-rendering and
// **not** executed on the client. Instead only the nested [Home] and [About] components will be mounted on the client.
@client
class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var setTheme = InheritedTheme.maybeOf(context)?.theme ?? 'light';
    // This method is rerun every time the component is rebuilt.
    //
    // Each build method can return multiple child components as an [Iterable]. The recommended approach
    // is using the [sync* / yield] syntax for a streamlined control flow, but its also possible to simply
    // create and return a [List] here.

    // Renders a <div class="main"> html element with children.
    yield div(attributes: {
      'data-theme': setTheme
    }, [
      Router(
        routes: [
          ShellRoute(
              builder: (context, state, child) =>
                  Builder(builder: (context) sync* {
                    yield div([
                      Header(),
                      child,
                      ChatWidget(),
                      Footer(),
                    ]);
                  }),
              routes: [
                Route(
                    path: '/',
                    title: 'Home',
                    builder: (context, state) => const Home()),
                Route(
                    path: '/chapters',
                    title: 'Chapters',
                    builder: (context, state) => const Chapters()),
                Route(
                    path: '/events',
                    title: 'Events',
                    builder: (context, state) => const PastEvents()),
                Route(
                    path: '/devfest-2024',
                    title: 'Devfest \'24',
                    builder: (context, state) => const Devfest2024()),
              ])
        ],
        errorBuilder: (context, state) => Error404(),
      ),
    ]);
  }

  // Defines the css styles for elements of this component.
  //
  // By using the @css annotation, these will be rendered automatically to css inside the <head> of your page.
  // Must be a variable or getter of type [List<StyleRule>].
}
