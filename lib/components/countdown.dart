import 'package:jaspr/jaspr.dart';

class Countdown extends StatelessComponent {
  const Countdown({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'mt-5 lg:mt-8 flex flex-col items-center sm:flex-row', [
      div(classes: 'flex gap-5', [
        div(
          [
            span(classes: 'countdown countdown-days font-mono text-4xl', []),
            text('  days'),
          ],
        ),
        div(
          [
            span(classes: 'countdown countdown-hours font-mono text-4xl', []),
            text('  hours'),
          ],
        ),
        div(
          [
            span(classes: 'countdown countdown-minutes font-mono text-4xl', []),
            text('  min'),
          ],
        ),
        div(
          [
            span(classes: 'countdown countdown-seconds font-mono text-4xl', []),
            text('  sec'),
          ],
        ),
      ])
    ]);
    yield script(src: 'countdown.js', []);
  }
}
