import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Love Home"), //Change company name
        // centerTitle: true,
        elevation: 15,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            children: [
              Center(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: Icon(
                    Icons.account_circle_outlined,
                    size: 90,
                  ),
                  accountName: Text("Nadeesha Pathiraja"),
                  accountEmail: Text("Nadeesha@gmail.com"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts_outlined,
                ),
                title: Text("Profile"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.storefront_outlined,
                ),
                title: Text("Shop"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                ),
                title: Text("Cart"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                ),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ආයුබෝවන්",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "வணக்கம்",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
