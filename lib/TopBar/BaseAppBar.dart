import 'package:FirstApp/NavigationBottomBar/ChangePageProvider.dart';
import 'package:FirstApp/NavigationBottomBar/MetaData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  List lstPage = listPage;

  @override
  Widget build(BuildContext context) {
    final ChangePageProvider _provider =
        Provider.of<ChangePageProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChangePageProvider>(
            create: (_) => ChangePageProvider()),
        // Provider<SomethingElse>(create: (_) => SomethingElse()),
        // Provider<AnotherThing>(create: (_) => AnotherThing()),
      ],
      child: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    // color: Colors.purple[600],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                // Selector<ChangePage, String>(
                //   selector: (context, provider) {
                //     print('\n===============================\nTitle: ' +
                //         context.toString()); //Not changed
                //     return provider.getTitle;
                //   },
                //   builder: (context, texto, child) => Text(texto),
                // )
                Text(
                  _provider.getTitle,
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    // color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.pinkAccent,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('Clicked Setting !');
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
