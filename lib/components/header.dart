import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header([
      nav([
        div(classes: 'navbar bg-base-100', [
          div(classes: 'navbar-start', [
            div(classes: 'dropdown', [
              div(classes: 'btn btn-ghost lg:hidden', attributes: {
                'tabindex': '0',
                'role': 'button',
              }, [
                svg(classes: 'h-5 w-5', viewBox: '0 0 24 24', attributes: {
                  'fill': 'none',
                  'stroke': 'currentColor',
                  'xmlns': 'http://www.w3.org/2000/svg',
                }, [
                  path(
                      strokeWidth: '2',
                      d: 'M4 6h16M4 12h8m-8 6h16',
                      attributes: {
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round',
                      },
                      []),
                ]),
              ]),
              ul(
                  classes:
                      'menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow',
                  attributes: {
                    'tabindex': '0'
                  },
                  [
                    for (var route in [
                      (label: 'Home', path: '/'),
                      (label: 'Chapters', path: '/chapters'),
                      (label: 'Events', path: '/events'),
                      (label: 'Devfest \'24', path: '/devfest-2024'),
                    ])
                      if (route.label == 'Devfest \'24')
                        ul(classes: 'menu menu-horizontal px-1', [
                          li([
                            a(
                              classes:
                                  'm-4 p-0.5 rounded-full from-red-500 via-blue-500 to-yellow-500 bg-gradient-to-r',
                              href: route.path,
                              [
                                span(
                                  classes:
                                      'block text-black px-4 py-2 font-semibold rounded-full bg-white hover:bg-transparent hover:text-white transition',
                                  [text(route.label)],
                                )
                              ],
                            ),
                          ]),
                        ])
                      else
                        ul(classes: 'menu menu-horizontal px-1', [
                          li([
                            a(
                              classes: 'btn btn-ghost',
                              href: route.path,
                              [text(route.label)],
                            ),
                          ]),
                        ]),
                  ]),
            ]),
            a(
                classes: 'btn btn-ghost text-xl',
                href: '',
                [text('GDG Uganda 🇺🇬')]),
          ]),
          div(classes: 'navbar-end hidden lg:flex', [
            for (var route in [
              (label: 'Home', path: '/'),
              (label: 'Chapters', path: '/chapters'),
              (label: 'Events', path: '/events'),
              (label: 'Devfest \'24', path: '/devfest-2024'),
            ])
              if (route.label == 'Devfest \'24')
                ul(classes: 'menu menu-horizontal px-1', [
                  li([
                    a(
                      classes:
                          'm-4 p-0.5 rounded-full from-red-500 via-blue-500 to-yellow-500 bg-gradient-to-r',
                      href: route.path,
                      [
                        span(
                          classes:
                              'block text-black px-4 py-2 font-semibold rounded-full bg-white hover:bg-transparent hover:text-white transition',
                          [text(route.label)],
                        )
                      ],
                    ),
                  ]),
                ])
              else
                ul(classes: 'menu menu-horizontal px-1', [
                  li([
                    a(
                      classes: 'btn btn-ghost',
                      href: route.path,
                      [text(route.label)],
                    ),
                  ]),
                ]),
          ]),
        ]),
      ]),
    ]);
  }
}
