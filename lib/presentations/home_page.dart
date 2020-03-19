import 'package:cloud_app/presentations/members_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cloud Computing Cell'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            _detailsCard('About Us', () {}),
            _detailsCard('Members', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MembersPage()));
            }),
          ],
        ),
      ),
    );
  }

  Widget _detailsCard(String title, Function onTap) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
