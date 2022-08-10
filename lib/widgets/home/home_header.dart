import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = Scaffold.of(context).appBarMaxHeight!;
    final double height = MediaQuery.of(context).size.height - appBarHeight;

    return Stack(
      children: [
        Container(
          height: height,
          color: Colors.black.withOpacity(0.3),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 50),
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _HomeHeaderTop(),
              const _HomeHeaderMid(),
              const _SearchBar(),
              _TrendingSearches(),
            ],
          ),
        ),
        const Positioned(
          bottom: 12,
          right: 12,
          child: Text(
            '@antonyz_',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}

class _HomeHeaderTop extends StatelessWidget {
  _HomeHeaderTop({Key? key}) : super(key: key);

  final List<String> tags = [
    'Discover',
    'Animation',
    'Branding',
    'Illustration',
    'Mobile',
    'Print',
    'Product Design',
    'Typography',
    'Web Design'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Chip(
            label: Text(
              tags[index],
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black.withOpacity(0.7),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
      ),
    );
  }
}

class _HomeHeaderMid extends StatelessWidget {
  const _HomeHeaderMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          Text(
            "Explore the world's leading design portfolios",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Millions of designers and agencies around the world showcase their portfolio work on Dribbble"
            " - the home to the world's best design and creative professionals.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
          hintText: 'Search...',
        ),
      ),
    );
  }
}

class _TrendingSearches extends StatelessWidget {
  _TrendingSearches({Key? key}) : super(key: key);

  final List<String> trendingSearches = ['landing page', 'ios', 'food', 'landingpage', 'uxdesign', 'app design'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 8,
      children: [
        const Text(
          'Trending Searches',
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
        ...trendingSearches.map(
          (String trending) => Chip(
            // TODO bordered
            label: Text(
              trending,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
