import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  ListMenu({Key? key}) : super(key: key);

  final List<Map<String, List<String>>> menus = [
    {
      'For designers': [
        'Go Pro!',
        'Explore design work',
        'Design blog',
        'Overtime podcast',
        'Playoffs',
        'Weekly Warm-up',
        'Code of conduct'
      ]
    },
    {
      'Hire designers': ['Post a job opening', 'Post a freelance project', 'Search for designers'],
      'Brands': ['Advertise with us'],
    },
    {
      'Company': [
        'About',
        'Careers',
        'Support',
        'Media Kit',
        'Testimonials',
        'API',
        'Terms of service',
        'Privacy policy',
        'Cookie policy'
      ]
    },
    {
      'Directories': ['Design jobs', 'Desigenrs for hire', 'Freelance designers for hire', 'Tags', 'Places'],
      'Design Assets': ['Creative Market', 'Fontstring', 'Font Squirrel'],
    },
    {
      'Design Resources': [
        'Freelancing',
        'Design Hiring',
        'Design Portfolio',
        'Design Education',
        'Creative Process',
        'Design Industry Trends'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 16,
      children: menus.map((Map<String, List<String>> menu) {
        if (menu.length > 1) {
          final Iterable<MapEntry<String, List<String>>> submenus = menu.entries;

          return Column(
            children: [
              for (int i = 0; i < submenus.length; i++) ...[
                if (i > 0) const SizedBox(height: 16),
                MenuColumn(menu: submenus.elementAt(i)),
              ]
            ],
          );
        } else {
          return MenuColumn(menu: menu.entries.first);
        }
      }).toList(),
    );
  }
}

class MenuColumn extends StatelessWidget {
  final MapEntry<String, List<String>> menu;

  const MenuColumn({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 16) / 2,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 16,
        children: [
          Text(menu.key, style: const TextStyle(fontWeight: FontWeight.bold)),
          ...menu.value.map((content) => Text(content))
        ],
      ),
    );
  }
}
