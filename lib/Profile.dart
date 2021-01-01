import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  List images = [
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
    ('assets/images/pp.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 0, onTap: (value) {}, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
      ]),
      appBar: AppBar(
        title: Text('App'),
      ),
      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/pp.jpg'),
                    fit: BoxFit.fill)),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 13),
                width: 250,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '30',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Posts')
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '130k',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Followers')
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '130k',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Following',
                          )
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: 230,
                child: RaisedButton(
                  child: Text('Default Enabled'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  onPressed: () {},
                ),
              )
            ],
          )
        ]),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Home Furnitrue',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Home accessories, some information about us',
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Contact us:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                '+925 987 952 2365',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Chennai, India',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 130,
              child: RaisedButton(
                child: Text('Add product', style: TextStyle(fontSize: 10)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () {},
              ),
            ),
            Container(
              width: 130,
              child: RaisedButton(
                child: Text('Share', style: TextStyle(fontSize: 10)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () {},
              ),
            ),
            Container(
              width: 100,
              child: RaisedButton(
                child: Text(
                  'contacts us',
                  style: TextStyle(fontSize: 10),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                onPressed: () {},
              ),
            )
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        Expanded(
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 1),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  );
                }))
      ]),
    );
  }
}
