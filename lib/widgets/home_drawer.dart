import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock.dart';
import 'package:flutter_application/widgets/input.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final List<int> _selectedIndexes = [];
  final List<DrawerListItem> menuItems = DrawerList.list();

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = Scaffold.of(context).appBarMaxHeight!;

    return Padding(
      padding: EdgeInsets.only(top: appBarHeight),
      child: Drawer(
        width: double.infinity,
        elevation: 0,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Input(hintText: 'Search', prefixIcon: Icons.search),
                ExpansionPanelList(
                  elevation: 0,
                  dividerColor: Colors.transparent,
                  expansionCallback: (panelIndex, isExpanded) => setState(() {
                    if (!_selectedIndexes.contains(panelIndex)) {
                      _selectedIndexes.add(panelIndex);
                    } else {
                      _selectedIndexes.remove(panelIndex);
                    }
                  }),
                  children: menuItems.asMap().entries.map<ExpansionPanel>((MapEntry<int, DrawerListItem> item) {
                    int currentIndex = item.key;
                    String title = item.value.title;
                    List<String> subitems = item.value.items;

                    return ExpansionPanel(
                      backgroundColor: Colors.transparent,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(title: Text(title), contentPadding: EdgeInsets.zero);
                      },
                      canTapOnHeader: true,
                      body: SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: subitems.map((String subitem) {
                            return Container(
                              padding: const EdgeInsets.fromLTRB(24, 16, 0, 16),
                              decoration: BoxDecoration(
                                border: Border(left: BorderSide(color: Colors.grey.shade300)),
                              ),
                              child: Text(
                                subitem,
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      isExpanded: _selectedIndexes.contains(currentIndex),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
