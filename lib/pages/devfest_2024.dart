import 'package:gdg_uganda/components/countdown.dart';
import 'package:jaspr/jaspr.dart';

class Devfest2024 extends StatelessComponent {
  const Devfest2024({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(id: 'hero', [
      div(classes: 'max-w-[85rem] mx-auto px-4 sm:px-6 lg:px-8', [
        div(
            classes:
                'grid lg:grid-cols-7 lg:gap-x-8 xl:gap-x-12 lg:items-center',
            [
              div(classes: 'lg:col-span-3', [
                h1(
                    classes:
                        'block text-3xl font-bold text-gray-800 sm:text-4xl lg:text-6xl lg:leading-tight dark:text-white',
                    [
                      text('Welcome to '),
                      span(classes: 'text-blue-600', [text('DevFest 2024')]),
                    ]),
                p(classes: 'mt-3 text-lg text-gray-800', [
                  text('DevFest 2024 is here, and this year\'s focus on '),
                  span(
                      classes:
                          'text-2xl font-black text-transparent bg-clip-text bg-gradient-to-r from-indigo-600 via-pink-600 to-purple-600',
                      [
                        text('Responsible AI'),
                      ]),
                  text(
                      ' couldn\'t be more timely. Join us as we explore the importance of developing technologies that enhance productivity without causing harm. Let\'s shape a future where AI serves humanity responsibly')
                ]),
                Countdown(),
              ]),
              div(classes: 'lg:col-span-4 mt-10 lg:mt-0', [
                img(
                  classes: 'w-full rounded-xl',
                  src:
                      'https://images.unsplash.com/photo-1665686376173-ada7a0031a85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=900&h=700&q=80',
                  alt: 'Hero Image',
                ),
              ]),
            ]),
      ]),
    ]);
    yield section(id: 'partners', classes: 'py-24', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        h2(classes: 'text-center text-lg/8 font-semibold text-primary', [
          text('Proudly supported by'),
        ]),
        div(
            classes:
                'mx-auto mt-10 grid max-w-lg grid-cols-4 items-center gap-x-8 gap-y-10 sm:max-w-xl sm:grid-cols-6 sm:gap-x-10 lg:mx-0 lg:max-w-none lg:grid-cols-5',
            [
              logoBuilder(
                  imgSrc: 'images/wtm-logo.png', alt: 'Women Techmakers'),
              logoBuilder(
                  imgSrc: 'images/soltech.png',
                  alt: 'Soltech Digital Solutions'),
              img(
                classes:
                    'col-span-2 max-h-12 w-full object-contain lg:col-span-1',
                src:
                    'https://tailwindui.com/plus/img/logos/158x48/tuple-logo-gray-900.svg',
                alt: 'Tuple',
                width: 158,
                height: 48,
              ),
              img(
                classes:
                    'col-span-2 max-h-12 w-full object-contain sm:col-start-2 lg:col-span-1',
                src:
                    'https://tailwindui.com/plus/img/logos/158x48/savvycal-logo-gray-900.svg',
                alt: 'SavvyCal',
                width: 158,
                height: 48,
              ),
              img(
                classes:
                    'col-span-2 col-start-2 max-h-12 w-full object-contain sm:col-start-auto lg:col-span-1',
                src:
                    'https://tailwindui.com/plus/img/logos/158x48/statamic-logo-gray-900.svg',
                alt: 'Statamic',
                width: 158,
                height: 48,
              ),
            ]),
      ]),
    ]);
    yield section(
        id: 'schedule',
        classes: 'bg-white-20 dark:bg-gray-900 antialiased',
        [
          div(
              classes:
                  'max-w-screen-xl px-4 py-8 mx-auto lg:px-6 sm:py-16 lg:py-24',
              [
                div(classes: 'max-w-3xl mx-auto text-center', [
                  h2(
                      classes:
                          'text-4xl font-extrabold leading-tight tracking-tight text-primary',
                      [text('Event Schedule')]),
                ]),
                div(
                    classes:
                        'flow-root max-w-3xl mx-auto mt-8 sm:mt-12 lg:mt-16',
                    [
                      div(
                        eventSchedule.entries.map((entry) {
                          return div(
                              classes:
                                  'flex flex-col gap-2 py-4 sm:gap-6 sm:flex-row sm:items-center',
                              [
                                p(
                                    classes:
                                        'w-32 text-lg font-normal text-secondary sm:text-right',
                                    [text(entry.key)]),
                                h3(
                                    classes:
                                        'text-lg font-semibold text-primary',
                                    [text(entry.value)]),
                              ]);
                        }).toList(),
                        classes:
                            '-my-4 divide-y divide-gray-200 dark:divide-gray-700',
                      ),
                    ]),
                div(
                    classes: 'text-sm text-end',
                    [text('All times are in GMT+3 (Kampala)')])
              ]),
        ]);
    yield section(id: 'speakers', classes: 'py-24', [
      div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8', [
        div(classes: 'mb-12', [
          h2(
              classes:
                  'text-4xl font-extrabold leading-tight tracking-tight text-primary text-center',
              [text('Meet the Speakers')]),
          p(
              classes: 'text-lg text-neutral text-center',
              [text('The inspiring industry experts sharing their knowledge')]),
        ]),
        div(
            classes: 'grid gap-4 sm:grid-cols-2 md:gap-6 lg:grid-cols-3 ',
            eventOrganisers.map((organiser) {
              return div(
                  classes:
                      'card bg-base-100 w-96 shadow-xl card-bordered overflow-hidden',
                  [
                    div(
                        classes:
                            'group relative block h-48 overflow-hidden bg-gray-100 md:h-64',
                        [
                          img(
                            classes:
                                'absolute inset-0 h-full w-full object-cover object-center transition duration-200 group-hover:scale-110',
                            src: organiser['imgSrc']!,
                            loading: MediaLoading.lazy,
                            alt: organiser['alt']!,
                          ),
                        ]),
                    div(classes: 'card-body', [
                      h2(classes: 'card-title', [
                        span(
                            classes:
                                'transition duration-100 hover:text-indigo-500 active:text-indigo-600',
                            [text(organiser['name']!)]),
                      ]),
                      span(classes: 'text-accent', [text('Mike Lane')]),
                      p(classes: 'mb-8 text-base-content', [
                        text(
                            'This is a section of some simple filler text, also known as placeholder text. It shares some characteristics of a real written text.'),
                      ]),
                    ]),
                  ]);
            }).toList())
      ]),
    ]);

    yield section(id: 'organisers', classes: 'py-24 bg-base-200', [
      div(classes: 'mx-auto max-w-7xl px-4 sm:px-6 lg:px-8', [
        div(classes: 'mb-12', [
          h2(
              classes:
                  'text-4xl font-extrabold leading-tight tracking-tight text-primary text-center',
              [text('Meet the Organisers')]),
          p(
              classes: 'text-lg text-neutral text-center',
              [text('The team making it all happen')]),
        ]),
        div(
            classes:
                'flex flex-wrap justify-center gap-y-14 max-w-3xl mx-auto lg:max-w-full ',
            eventOrganisers.map((organiser) {
              return div(
                  classes:
                      'group block text-center lg:w-1/5 sm:w-1/3 min-[450px]:w-1/2 w-full',
                  [
                    div(classes: 'relative mb-5', [
                      img(
                        classes:
                            'w-28 h-28 rounded-box object-cover mx-auto transition-all duration-500 border-2 border-solid border-transparent group-hover:border-indigo-600',
                        src: organiser['imgSrc']!,
                        alt: organiser['alt']!,
                      ),
                    ]),
                    h4(
                        classes:
                            'text-xl text-secondary font-semibold text-center mb-2 transition-all duration-500 group-hover:text-indigo-600',
                        [text(organiser['name']!)]),
                    span(
                        classes:
                            'text-neutral text-center block transition-all duration-500 group-hover:text-gray-900',
                        [text(organiser['role']!)]),
                  ]);
            }).toList()),
      ]),
    ]);
    yield section(id: 'faqs', [
      div(
          classes: 'max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto',
          [
            div(classes: 'grid md:grid-cols-5 gap-10', [
              div(classes: 'md:col-span-2', [
                div(classes: 'max-w-xs', [
                  h2(
                      classes:
                          'text-2xl font-bold md:text-4xl md:leading-tight dark:text-white',
                      [text('Your questions, answered ')]),
                  p(
                      classes:
                          'mt-1 hidden md:block text-gray-600 dark:text-neutral-400',
                      [
                        text('Answers to what you might be wondering about'),
                      ]),
                ]),
              ]),
              div(classes: 'md:col-span-3', [
                ...faqEntries.map((entry) {
                  return div(
                      classes: 'collapse collapse-plus bg-base-200 mb-5',
                      [
                        input(
                            type: InputType.radio,
                            name: 'faq-accordion',
                            attributes: {
                              'checked': 'checked',
                            },
                            []),
                        div(classes: 'collapse-title text-xl font-medium', [
                          text(entry.$1),
                        ]),
                        div(classes: 'collapse-content', [
                          p([text(entry.$2)])
                        ]),
                      ]);
                }),
              ]),
            ])
          ])
    ]);
  }
}

final List<Map<String, String>> eventOrganisers = [
  {
    'name': 'Marvin McKinney',
    'role': 'Founder',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698649968.png',
    'alt': 'Marvin image'
  },
  {
    'name': 'Kathryn Murphy',
    'role': 'CTO',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650000.png',
    'alt': 'Kathryn image'
  },
  {
    'name': 'Jerome Bell',
    'role': 'CMO',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698659360.png',
    'alt': 'Jerome image'
  },
  {
    'name': 'Wade Warren',
    'role': 'CEO',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650109.png',
    'alt': 'Wade image'
  },
  {
    'name': 'Leslie Alexander',
    'role': 'Customer Support',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650146.png',
    'alt': 'Leslie image'
  },
  {
    'name': 'Guy Hawkins',
    'role': 'HR',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650184.png',
    'alt': 'Guy image'
  },
  {
    'name': 'Ronald Richards',
    'role': 'CO-Founder',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650213.png',
    'alt': 'Ronald image'
  },
  {
    'name': 'Devon Lane',
    'role': 'UI Designer',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650242.png',
    'alt': 'Devon image'
  },
  {
    'name': 'Dianne Russell',
    'role': 'Product Designer',
    'imgSrc': 'https://pagedone.io/asset/uploads/1698650271.png',
    'alt': 'Dianne image'
  },
];

final faqEntries = [
  (
    'What is DevFest?',
    "DevFest is an annual distributed tech conference hosted by the Google Developer Groups (GDG) community. GDGs host these events around the globe.\nDevFest 2024 marks the 15th year of DevFest. Through DevFest, you can continue to explore how Google's suite of developer tools can expand the impact of local tech professionals and developers like you around the world.\n\nWhether you're passionate about finding new opportunities, elevating your knowledge on the latest Google developer tools, or exploring how to use Google technologies to generate social and economic impact, DevFest offers an amazing platform for developers to connect locally, learn, and build on Google's tools."
  ),
  (
    'What technologies might I discover at DevFest?',
    "You'll have the chance to learn about Android development, enhance apps with Firebase, create cross-platform experiences using Flutter, leverage Google Cloud, and explore the world of Machine Learning. You'll also get to delve into TensorFlow and web development. This year, DevFests focus on Responsible AI – join the conversation about building a future of tech that's both ethical and impactful."
  )
];

final Map<String, String> eventSchedule = {
  '08:00 - 09:00': 'Opening remarks',
  '09:00 - 10:00': 'Bergside LLC: Controlling the video traffic flows',
  '10:00 - 11:00': 'Flowbite - An Open Framework for Forensic Watermarking',
  '11:00 - 12:00': 'Coffee Break',
  '12:00 - 13:00': 'Scaling your brand from €0 to multimillion euros',
  '13:00 - 14:00': 'Updates from the Open Source Multimedia community',
  '14:00 - 15:00':
      'Exploring the balance between customer acquisition and retention',
  '15:00 - 16:00': 'Flowbite - An Open Framework for Forensic Watermarking',
  '16:00 - 17:00': 'Scaling your brand from €0 to multimillion euros',
  '17:00 - 18:00': 'Drinks & networking',
};

Component logoBuilder({required String imgSrc, required String alt}) {
  return img(
    classes: 'col-span-2 max-h-12 w-full object-contain lg:col-span-1',
    src: imgSrc,
    alt: alt,
    width: 158,
    height: 48,
  );
}
