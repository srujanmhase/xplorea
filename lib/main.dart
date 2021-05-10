import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: mainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List imgListNew = [
  {
    'url': 'assets/forest_one.jpg',
    'content': 'Tranquil Forests of Cambodia..',
    'username': '@johna',
    'name': 'John A.',
    'useravatar': 'assets/persone_one.jpg'
  },
  {
    'url': 'assets/forest_two.jpg',
    'content': 'Tranquil Forests Two',
    'username': '@embee',
    'name': 'Em Beey',
    'useravatar': 'assets/person_two.jpg'
  },
  {
    'url': 'assets/forest_three.jpg',
    'content': 'Tranquil Forest Three',
    'username': '@erkay',
    'name': 'Er Kaey',
    'useravatar': 'assets/person_three.jpg'
  },
  {
    'url': 'assets/forest_four.jpg',
    'content': 'Tranquil Forest Four',
    'username': '@keykey',
    'name': 'Key Key',
    'useravatar': 'assets/person_four.jpg'
  },
  {
    'url': 'assets/desert_one.jpg',
    'content': 'Tranquil Forest Three',
    'username': '@ferkay',
    'name': 'Fer Key',
    'useravatar': 'assets/person_five.jpg'
  },
  {
    'url': 'assets/desert_two.jpg',
    'content': 'Desert scenes',
    'username': '@leekay',
    'name': 'Lee Kay',
    'useravatar': 'assets/person_three.jpg'
  },
  {
    'url': 'assets/desert_three.jpg',
    'content': 'Desert Three',
    'username': '@jimkaey',
    'name': 'Jim Kaey',
    'useravatar': 'assets/person_two.jpg'
  },
  {
    'url': 'assets/desert_four.jpg',
    'content': 'More Desert',
    'username': '@frutsed',
    'name': 'Frutz Saed',
    'useravatar': 'assets/persone_one.jpg'
  },
  {
    'url': 'assets/beach_one.jpg',
    'content': 'Tranquil Beaches',
    'username': '@jimskoes',
    'name': 'Jim Smokey',
    'useravatar': 'assets/person_five.jpg'
  },
  {
    'url': 'assets/beach_two.jpg',
    'content': 'More Tranquil Beaches',
    'username': '@gynewts',
    'name': 'Newton Gy',
    'useravatar': 'assets/person_two.jpg'
  },
  {
    'url': 'assets/beach_three.jpg',
    'content': 'Tranquil Beaches',
    'username': '@jimskoes',
    'name': 'Jim Smokey',
    'useravatar': 'assets/person_three.jpg'
  },
  {
    'url': 'assets/beach_four.jpg',
    'content': 'Tranquil Beaches',
    'username': '@ronkeyton',
    'name': 'Ron Keyton',
    'useravatar': 'assets/person_four.jpg'
  },
  {
    'url': 'assets/ice_one.jpg',
    'content': 'Icy Mountains',
    'username': '@tronioly',
    'name': 'Tron Ioly',
    'useravatar': 'assets/person_five.jpg'
  },
  {
    'url': 'assets/ice_two.jpg',
    'content': 'Big icy',
    'username': '@yellowicy',
    'name': 'Yellow Icy',
    'useravatar': 'assets/persone_one.jpg'
  },
  {
    'url': 'assets/ice_three.jpg',
    'content': 'Ice scene',
    'username': '@ehyone',
    'name': 'Eukely Hione',
    'useravatar': 'assets/person_three.jpg'
  },
  {
    'url': 'assets/ice_four.jpg',
    'content': 'Tranquil Ice',
    'username': '@jimskoes',
    'name': 'Jim Smokey',
    'useravatar': 'assets/person_five.jpg'
  },
  {
    'url': 'assets/india_one.jpg',
    'content': 'India',
    'username': '@ramesha',
    'name': 'Ramesh',
    'useravatar': 'assets/person_two.jpg'
  },
  {
    'url': 'assets/india_two.jpg',
    'content': 'India',
    'username': '@peterexe',
    'name': 'Peter',
    'useravatar': 'assets/person_four.jpg'
  },
  {
    'url': 'assets/india_three.jpg',
    'content': 'More India',
    'username': '@jimpojim',
    'name': 'Jim Po',
    'useravatar': 'assets/persone_one.jpg'
  }
];

class carouselWidget extends StatefulWidget {
  @override
  _carouselWidgetState createState() => _carouselWidgetState();
}

class _carouselWidgetState extends State<carouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
            autoPlay: false,
            enableInfiniteScroll: false),
        items: [
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                scrollDirection: Axis.vertical
                // autoPlay: false,
                ),
            items: imgListNew
                .map((item) => Stack(
                      children: [
                        Container(
                          child: Center(
                              child: Image.asset(
                            item['url'],
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height,
                          )),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 10,
                          child: infoCard(item['content'], item['useravatar'],
                              item['username'], item['name']),
                        ),
                        Positioned(
                            bottom: 50,
                            right: 10,
                            child: Container(
                              height: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '+2K',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '35',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.comment,
                                        color: Colors.white,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ))
                .toList(),
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Text(
                  'Messages',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ]),
          ),
        ]);
  }
}

class infoCard extends StatelessWidget {
  infoCard(this.content, this.useravatar, this.username, this.name);
  String content;
  String useravatar;
  String username;
  String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => profilePage(name, username, useravatar)));
      },
      child: Container(
        width: 300,
        height: 100,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: 'useravatarTag',
                  child: CircleAvatar(backgroundImage: AssetImage(useravatar)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Hero(
                      tag: 'nameTag',
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                    Hero(
                      tag: 'usernameTag',
                      child: Text(
                        username,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person_add_alt,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  content,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class mainHome extends StatefulWidget {
  @override
  _mainHomeState createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Material(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.96,
                pinned: false,
                backgroundColor: Colors.white,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_upward, color: Colors.white, size: 15),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Your Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            )),
                      ],
                    ),
                    centerTitle: true,
                    background: carouselWidget()),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                yprofilePage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class yprofilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Ron Keys", style: TextStyle(fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("@ronkeys", style: TextStyle(fontSize: 17)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Professional Photographer",
                      style: TextStyle(fontSize: 17)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 7,
                      ),
                      Text("Dublin, Ireland", style: TextStyle(fontSize: 15))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/persone_one.jpg'),
                    radius: 45,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '23',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            '1,556',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Your Uploads",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/india_two.jpg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Image.asset(
                    'assets/ice_three.jpg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/forest_two.jpg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Image.asset('assets/desert_three.jpg',
                      width: MediaQuery.of(context).size.width * 0.4)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/ice_two.jpg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Image.asset('assets/desert_two.jpg',
                      width: MediaQuery.of(context).size.width * 0.4)
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}

class profilePage extends StatefulWidget {
  profilePage(this.name, this.username, this.useravatar);
  String name;
  String username;
  String useravatar;

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Hero(
                          tag: 'nameTag',
                          child:
                              Text(widget.name, style: TextStyle(fontSize: 30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Hero(
                          tag: 'usernameTag',
                          child: Text(widget.username,
                              style: TextStyle(fontSize: 17)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Professional Photographer",
                            style: TextStyle(fontSize: 17)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 7,
                            ),
                            Text("Dublin, Ireland",
                                style: TextStyle(fontSize: 15))
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Hero(
                          tag: 'useravatarTag',
                          child: CircleAvatar(
                            backgroundImage: AssetImage(widget.useravatar),
                            radius: 45,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '23',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Following',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  '1,556',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Followers',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        () {
                          if (isFollowing) {
                            return TextButton(
                                onPressed: () {
                                  setState(() {
                                    isFollowing = false;
                                  });
                                },
                                child: Text("Following"));
                          } else {
                            return ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isFollowing = true;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey),
                                ),
                                child: Text("Follow"));
                          }
                        }(),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          "Uploads",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/india_two.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Image.asset(
                          'assets/ice_three.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/forest_two.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Image.asset('assets/desert_three.jpg',
                            width: MediaQuery.of(context).size.width * 0.4)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/ice_two.jpg',
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        Image.asset('assets/desert_two.jpg',
                            width: MediaQuery.of(context).size.width * 0.4)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
