class DrawerList {
  static const DrawerListItem _inspiration = DrawerListItem(
    title: 'Inspiration',
    items: [
      'Explore Design Work',
      'New & Noteworthy',
      'Playoffs',
      'Blog',
      'Weekly Warmup',
    ],
  );
  static const DrawerListItem _findWork = DrawerListItem(
    title: 'Find Work',
    items: [
      'Job Board',
      'Freelance Projects',
      'Want freelance design projects?',
      'Personalize your profile with video'
    ],
  );
  static const DrawerListItem _learnDesign = DrawerListItem(
    title: 'Learn Design',
    items: [
      'Certified Product Design Course',
      'Introduction to UI Design',
      'Browse our courses & workshops',
    ],
  );
  static const DrawerListItem _goPro = DrawerListItem(
    title: 'Go Pro',
    items: [
      'For Designers',
      'For Freelancers',
      'For Teams',
    ],
  );
  static const DrawerListItem _designFiles = DrawerListItem(
    title: 'Design Files',
    items: [
      'Discover',
      'Graphics',
      'Fonts',
      '3D',
      'Templates',
      'Add-Ons',
      'Web Themes',
      'Open a Shop',
    ],
  );
  static const DrawerListItem _hireDesigners = DrawerListItem(
    title: 'Hire Designers',
    items: [
      'About Dribbble Hiring',
      'Designer Search',
      'List my Job Opening',
      'Post a Freelance Project',
    ],
  );

  static List<DrawerListItem> list() {
    return [
      _inspiration,
      _findWork,
      _learnDesign,
      _goPro,
      _designFiles,
      _hireDesigners,
    ];
  }
}

class DrawerListItem {
  final String title;
  final List<String> items;

  const DrawerListItem({required this.title, required this.items});
}
