import 'package:jaspr/jaspr.dart';

class Chapters extends StatelessComponent {
  const Chapters({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container mx-auto', [
      h1(classes: 'text-4xl font-bold text-center mt-10', [text('Chapters')]),
      div(classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4', [
        for (var chapter in [
          {
            'title': 'GDG Kampala',
            'location': 'Kampala, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
          {
            'title': 'GDG Mbarara',
            'location': 'Mbarara, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
          {
            'title': 'GDG Gulu',
            'location': 'Gulu, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
        ])
          div(classes: 'card rounded-box', [
            img(classes: 'card-image', src: chapter['image'] as String),
            div(classes: 'card-body', [
              h2(classes: 'card-title', [text(chapter['title'] as String)]),
              p(
                  classes: 'text-sm text-gray-500',
                  [text(chapter['location'] as String)]),
            ]),
          ]),
      ]),
    ]);
  }
}
