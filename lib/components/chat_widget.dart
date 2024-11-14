import 'package:jaspr/jaspr.dart';

class ChatWidget extends StatelessComponent {
  const ChatWidget({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
        classes:
            'btn btn-circle btn-lg btn-primary fixed bottom-8 right-8 z-50',
        attributes: {
          'onclick': 'chat_popup.showModal()',
        },
        [
          svg(classes: 'h-6 w-6', viewBox: '0 0 24 24', attributes: {
            'fill': 'currentColor',
            'stroke': 'currentColor',
            'xmlns': 'http://www.w3.org/2000/svg',
          }, [
            path(
                strokeWidth: '2',
                d: 'M4.848 2.771A49.144 49.144 0 0 1 12 2.25c2.43 0 4.817.178 7.152.52 1.978.292 3.348 2.024 3.348 3.97v6.02c0 1.946-1.37 3.678-3.348 3.97a48.901 48.901 0 0 1-3.476.383.39.39 0 0 0-.297.17l-2.755 4.133a.75.75 0 0 1-1.248 0l-2.755-4.133a.39.39 0 0 0-.297-.17 48.9 48.9 0 0 1-3.476-.384c-1.978-.29-3.348-2.024-3.348-3.97V6.741c0-1.946 1.37-3.68 3.348-3.97ZM6.75 8.25a.75.75 0 0 1 .75-.75h9a.75.75 0 0 1 0 1.5h-9a.75.75 0 0 1-.75-.75Zm.75 2.25a.75.75 0 0 0 0 1.5H12a.75.75 0 0 0 0-1.5H7.5Z',
                attributes: {
                  'stroke-linecap': 'round',
                  'stroke-linejoin': 'round',
                  'fillRule': 'evenodd',
                },
                []),
          ]),
        ]);

    yield dialog(id: 'chat_popup', classes: 'modal modal-bottom bottom-8', [
      div(classes: 'modal-box w-3/5 max-w-96', [
        form(method: FormMethod.dialog, [
          button(
              classes: 'btn btn-sm btn-circle btn-ghost absolute right-2 top-2',
              [
                svg(classes: 'size-6', viewBox: '0 0 24 24', [
                  path(
                      strokeWidth: '2',
                      d: 'M5.47 5.47a.75.75 0 0 1 1.06 0L12 10.94l5.47-5.47a.75.75 0 1 1 1.06 1.06L13.06 12l5.47 5.47a.75.75 0 1 1-1.06 1.06L12 13.06l-5.47 5.47a.75.75 0 0 1-1.06-1.06L10.94 12 5.47 6.53a.75.75 0 0 1 0-1.06Z',
                      attributes: {
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round',
                        'fillRule': 'evenodd',
                        'clip-rule': 'evenodd',
                      },
                      []),
                ]),
              ]),
        ]),
        h3(classes: 'text-lg font-bold', [
          text('Hello!'),
        ]),
        p(classes: 'py-4', [
          text('Press ESC key or click on ✕ button to close'),
        ]),
      ]),
    ]);
  }
}
