import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Row(
          children: [
            Image.asset('assets/images/logo.png'),
            Spacer(),
            Badge(
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  '  Hello, ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Sara Rose',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  '  How are you feeling today ? ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Frame 10.png'),
                      Text('Love')
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Frame 20.png'),
                      Text('Cool')
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Frame 8.png'),
                      Text('Happy')
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/Frame 12.png'),
                      Text('Sad')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Feature',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Spacer(),
                    Text(
                      'See more',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.green),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.green,),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    color: Color(0xffECFDF3),
                    child: ListTile(
                        title: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Positive vibes',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                Text('Boost Your mood with',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                                Text('Positive vibes',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                SizedBox(height: 10,),
                                Row(children: [
                                  Image.asset('assets/images/_Play button.png',color: Colors.green,),
                                  Text('10 mins')
                                ],)

                              ],
                            ),
                            Image.asset('assets/images/Walking the Dog.png')
                          ],
                        )),
                  ),
                ),
                Image.asset('assets/images/Frame 26.png'),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        'Exercise',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Spacer(),
                      Text(
                        'See more',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.green),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.green,size: 15,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Image.asset('assets/images/Frame 31.png'),
                    SizedBox(width: 25,),
                    Image.asset('assets/images/Frame 35.png'),
                  ],),
                ),
                SizedBox(height: 15,),
                Row(children: [
                  Image.asset('assets/images/Frame 40.png'),
                  SizedBox(width:25,),
                  Image.asset('assets/images/Frame 33.png'),
                ],)








              ],
            ),
          ),
          Spacer(),


          BottomNavigationBar(

            currentIndex: index,

            onTap: (value){
              index=value;
              setState(() {

              });

            },
            items: [

              BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: 'Home'),
              BottomNavigationBarItem(icon:Icon(Icons.grid_view),label: 'Insights'),
              BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined),label: 'Calender'),
              BottomNavigationBarItem(icon:Icon(Icons.person),label: 'User'),

            ],

          ),
        ],
      ),

    );
  }
}
