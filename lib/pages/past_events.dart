import 'package:jaspr/jaspr.dart';

class PastEvents extends StatelessComponent {
  const PastEvents({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'container mx-auto', [
      h1(
          classes: 'text-4xl font-bold text-center mt-10',
          [text('Past Events')]),
      div(classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4', [
        for (var event in [
          {
            'title': 'GDG DevFest 2021',
            'date': 'November 20, 2021',
            'location': 'Kampala, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
          {
            'title': 'GDG DevFest 2020',
            'date': 'November 21, 2020',
            'location': 'Kampala, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
          {
            'title': 'GDG DevFest 2019',
            'date': 'November 23, 2019',
            'location': 'Kampala, Uganda',
            'image': 'https://via.placeholder.com/300',
          },
        ])
          div(classes: 'card', [
            img(classes: 'card-image', src: event['image'] as String),
            div(classes: 'card-body', [
              h2(classes: 'card-title', [text(event['title'] as String)]),
              p(
                  classes: 'text-sm text-gray-500',
                  [text(event['date'] as String)]),
              p(
                  classes: 'text-sm text-gray-500',
                  [text(event['location'] as String)]),
            ]),
          ]),
      ]),
    ]);
  }
}
