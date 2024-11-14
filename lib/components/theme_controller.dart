import 'package:jaspr/jaspr.dart';

class ThemeController extends StatefulComponent {
  const ThemeController({super.key});

  static const themes = {
    "Light": "light",
    "Dark": "dark",
    "Cupcake": "cupcake",
    "Bumblebee": "bumblebee",
    "Emerald": "emerald",
    "Corporate": "corporate",
    "Synthwave": "synthwave",
    "Retro": "retro",
    "Cyberpunk": "cyberpunk",
    "Valentine": "valentine",
    "Halloween": "halloween",
    "Garden": "garden",
    "Forest": "forest",
    "Aqua": "aqua",
    "Lofi": "lofi",
    "Pastel": "pastel",
    "Fantasy": "fantasy",
    "Wireframe": "wireframe",
    "Black": "black",
    "Luxury": "luxury",
    "Dracula": "dracula",
    "Cmyk": "cmyk",
    "Autumn": "autumn",
    "Business": "business",
    "Acid": "acid",
    "Lemonade": "lemonade",
    "Night": "night",
    "Coffee": "coffee",
    "Winter": "winter",
    "Dim": "dim",
    "Nord": "nord",
    "Sunset": "sunset",
  };

  @override
  State createState() => ThemeControllerState();
}

class ThemeControllerState extends State<ThemeController> {
  String setTheme = 'light';

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'dropdown dropdown-top dropdown-end', [
      div(classes: 'btn m-1', attributes: {
        'tabindex': '0',
        'role': 'button'
      }, [
        text('Change Theme'),
        svg(
            classes: 'inline-block h-2 w-2 fill-current opacity-60',
            width: Unit.pixels(12),
            height: Unit.pixels(12),
            viewBox: '0 0 2048 2048',
            attributes: {
              'xmlns': 'http://www.w3.org/2000/svg'
            },
            [
              path(
                  d: 'M1799 349l242 241-1017 1017L7 590l242-241 775 775 775-775z',
                  []),
            ]),
      ]),
      ul(
          attributes: {'tabindex': '0'},
          classes:
              'dropdown-content bg-base-300 rounded-box z-[1] w-52 p-2 shadow-2xl',
          [
            for (var theme in ThemeController.themes.entries)
              li([
                input(
                    type: InputType.radio,
                    name: 'theme-dropdown',
                    id: theme.value,
                    classes:
                        'theme-controller btn btn-sm btn-block btn-ghost justify-start',
                    value: theme.value,
                    onChange: (value) {
                      setState(() => setTheme = theme.value);
                    },
                    onInput: (value) => setState(() => setTheme = theme.value),
                    attributes: {
                      'aria-label': theme.key,
                    },
                    []),
              ]),
          ]),
    ]);
  }
}

class InheritedTheme extends InheritedComponent {
  const InheritedTheme(this.theme, {required super.child});

  final String theme;

  static InheritedTheme of(BuildContext context) {
    final InheritedTheme? inheritedTheme =
        context.dependOnInheritedComponentOfExactType<InheritedTheme>();
    assert(inheritedTheme != null, 'No InheritedTheme found in context');
    return inheritedTheme!;
  }

  static InheritedTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedComponentOfExactType<InheritedTheme>();
  }

  @override
  bool updateShouldNotify(covariant InheritedTheme oldComponent) {
    return theme != oldComponent.theme;
  }
}
