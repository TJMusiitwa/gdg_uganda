// ignore_for_file: file_names

import 'package:jaspr/jaspr.dart';

class Error404 extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        id: '404',
        classes: 'hero min-h-screen',
        styles: Styles.background(
            repeat: BackgroundRepeat.noRepeat,
            size: BackgroundSize.cover,
            image: ImageStyle.url(
                'https://images.unsplash.com/photo-1545972154-9bb223aac798?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3050&q=80&exp=8&con=-15&sat=-75')),
        [
          div(classes: 'hero-overlay bg-opacity-60', []),
          div(classes: 'hero-content text-neutral-content text-center', [
            div(classes: 'max-w-md', [
              h1(classes: 'mb-5 text-5xl font-bold', [text('404 😢')]),
              p(classes: 'mb-5', [
                text('Sorry, we couldn’t find the page you’re looking for.'),
              ]),
              a(href: '/', classes: 'btn btn-primary', [
                text('Get Started'),
              ]),
            ]),
          ]),
        ]);
  }
}
