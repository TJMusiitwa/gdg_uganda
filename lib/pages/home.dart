import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(
        classes: 'hero min-h-screen',
        styles: Styles.background(
            image: ImageStyle.url('images/image.webp'),
            position: BackgroundPosition.center,
            size: BackgroundSize.contain,
            repeat: BackgroundRepeat.noRepeat),
        [
          div(classes: 'hero-overlay bg-opacity-40', []),
          div(classes: 'text-bottom hero-content text-neutral-content', [
            div(classes: 'max-w-md', [
              button(classes: 'btn glass', [text('Join Us')]),
            ])
          ]),
        ]);
  }
}
