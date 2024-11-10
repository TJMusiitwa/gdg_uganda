// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';
// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(options: defaultJasprOptions);

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'GDGUganda',
    viewport: 'width=device-width, initial-scale=1',
    head: [
      link(
          href:
              'https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css',
          rel: 'stylesheet',
          type: 'text/css'),
      script(src: 'https://cdn.tailwindcss.com', []),
      link(rel: 'shortcut icon', href: 'favicon.ico'),
      link(
          rel: 'icon',
          type: 'image/png',
          href: 'favicon-96x96.png',
          attributes: {'sizes': '96x96'}),
      link(rel: 'icon', type: 'image/svg+xml', href: 'favicon.svg'),
      link(
        rel: 'apple-touch-icon',
        href: 'apple-touch-icon.png',
        attributes: {'sizes': '180x180'},
      ),
      link(
        rel: 'manifest',
        href: 'site.webmanifest',
      ),
    ],
    meta: {
      'title': 'GDGUganda',
      'description':
          'A demo site for GDG Uganda, showcasing the power of Jaspr for building modern web applications.',
      'author': 'Jonathan Musiitwa',
      'publisher': 'Jonathan Musiitwa',
      'creator': 'Jonathan Musiitwa',
      'keywords': 'GDG, Uganda, GDG Uganda, Flutter, Dart, Jaspr',
      'robots': 'noindex, nofollow',
      //open graph
      'og:title': 'GDGUganda',
      'og:description':
          'A demo site for GDG Uganda, showcasing the power of Jaspr for building modern web applications.',
      'og:type': 'website',
      'og:url': 'https://gdgkampala-1570452632700.web.app/',
      'og:image':
          'https://gdgkampala-1570452632700.web.app/images/gdg-logo.png',
      'og:site_name': 'Project Management Tools Expo 2025',
      'og:locale': 'en_GB',
      //twitter
      'twitter:card': 'summary_large_image',
      'twitter:title': 'GDGUganda',
      'twitter:url': 'https://gdgkampala-1570452632700.web.app/',
      'twitter:description':
          'A demo site for GDG Uganda, showcasing the power of Jaspr for building modern web applications.',
      'twitter:image':
          'https://gdgkampala-1570452632700.web.app/images/gdg-logo.png',
    },
    body: App(),
  ));
}
