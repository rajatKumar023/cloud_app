import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 10,
                      ),
                      child: Text(
                        'Members',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: _getMembersGridView(
                  [
                    'Rajat Kumar',
                    'Shruti Verma',
                    'Mrudul Bhatt',
                    'Kanishk Mavi',
                    'Tarun Raghav',
                    'Rishabh Sharma',
                    'Prakhar Pratap Singh',
                    'Divyanshu'
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getMembersGridView(List<dynamic> list) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Hero(
              tag: list[index],
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: 2,
                  ),
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    60,
                  ),
                  child: Center(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                list[index],
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            )
          ],
        );
      },
    );
  }
}
