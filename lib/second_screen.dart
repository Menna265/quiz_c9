import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_theme_data.dart';

class SecondScreen extends StatefulWidget {
  static const String routeName = 'second';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Image.asset('assets/images/Ellipse 10.png'),
                SizedBox(
                  width: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Jade',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Ready to workout ?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
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
        ),
        body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(

                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Column(children: [
                      Row(children: [Icon(Icons.favorite_border,color: Color(0xff717BBC),),Text('Heart Rate',style:TextStyle(color: Colors.black),)],),
                      Text('81 BPM',style:TextStyle(color: Colors.black)),
                    ],),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF8F9FC))),
                  ),


                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Column(children: [
                      Row(children: [Icon(Icons.list_rounded,color: Color(0xff717BBC)),Text('To-do',style:TextStyle(color: Colors.black))],),
                      Text('32,5 %',style:TextStyle(color: Colors.black))
                    ],),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF8F9FC)),)
                  ),

                  Expanded(
                    child: ElevatedButton(onPressed: (){}, child: Column(children: [
                      Row(children: [Icon(Icons.local_fire_department_outlined,color: Color(0xff717BBC)),Text('Calo',style:TextStyle(color: Colors.black))],),
                      Text('1000 cal',style:TextStyle(color: Colors.black))
                    ],),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffF8F9FC))),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 15,width: 25,),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
            //   child: Row(children: [
            //     Image.asset('assets/images/Frame 3466506.png'),
            //   ],),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 30, 20),
              child: Row(
                children: [
                Text('Workout Programs',style: Theme.of(context).textTheme.bodyLarge,),
              ],),
            ),
            TabBar(tabs: [
              Tab(
                 child: Text('All Type',style: Theme.of(context).textTheme.bodyMedium,),
              ),
              Tab(
                child: Text('Full Body',style: Theme.of(context).textTheme.bodyMedium,),
              ),
              Tab(
                child: Text('Upper',style: Theme.of(context).textTheme.bodyMedium,),
              ),

              Tab(
                child: Text('Lower',style: Theme.of(context).textTheme.bodyMedium,),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [


                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color(0XFFEAECF5),
                          child: ListTile(
                              title: Row(
                                children: [
                                  Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,shape: BoxShape.rectangle,   border: Border.all(
                                          color: Colors.white12,
                                          width: 4,
                                        ),),

                                        child: Text(
                                          '  7 days ',
                                          style:Theme.of(context).textTheme.bodySmall,

                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Text('Morning Yoga',
                                        style:Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      SizedBox(height: 10,),

                                      Text('improve mental focus',
                                        style: Theme.of(context).textTheme.bodySmall,),
                                      SizedBox(height: 15,),
                                      Row(children: [
                                        Icon(Icons.access_time),
                                        SizedBox(width: 15,),
                                        Text('30 mins')
                                      ],)

                                    ],
                                  ),
                                  SizedBox(width: 50,),
                                  Image.asset('assets/images/[removal 2.png')
                                ],
                              )),
                        ),
                        SizedBox(height: 15,),

                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color(0XFFEAECF5),
                          child: ListTile(
                              title: Row(
                                children: [
                                  Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,shape: BoxShape.rectangle,   border: Border.all(
                                          color: Colors.white12,
                                          width: 4,
                                        ),),

                                        child: Text(
                                          '  3 days ',
                                          style:Theme.of(context).textTheme.bodySmall,

                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Text('Plank Exercise',
                                        style:Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      SizedBox(height: 10,),

                                      Text('improve posture and stability',
                                        style: Theme.of(context).textTheme.bodySmall,),
                                      SizedBox(height: 15,),
                                      Row(children: [
                                        Icon(Icons.access_time),
                                        SizedBox(width: 15,),
                                        Text('30 mins')
                                      ],)

                                    ],
                                  ),

                                  Image.asset('assets/images/pngwing 1.png')
                                ],
                              )),
                        ),

                        SizedBox(height: 15,),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color(0XFFEAECF5),
                          child: ListTile(
                              title: Row(
                                children: [
                                  Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15,),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,shape: BoxShape.rectangle,   border: Border.all(
                                          color: Colors.white12,
                                          width: 4,
                                        ),),

                                        child: Text(
                                          '  3 days ',
                                          style:Theme.of(context).textTheme.bodySmall,

                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                      Text('Plank Exercise',
                                        style:Theme.of(context).textTheme.bodyLarge,
                                      ),
                                      SizedBox(height: 10,),

                                      Text('improve posture and stability',
                                        style: Theme.of(context).textTheme.bodySmall,),
                                      SizedBox(height: 15,),
                                      Row(children: [
                                        Icon(Icons.access_time),
                                        SizedBox(width: 15,),
                                        Text('30 mins')
                                      ],)

                                    ],
                                  ),

                                  Image.asset('assets/images/pngwing 1.png')
                                ],
                              )),
                        ),
                      ],),
                  ),
                ),



                Column(

                  children: [
                    Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context,index)=>SizedBox(
                            height: 15,
                          ),
                          itemBuilder: (context,index){
                            return Center(
                              child:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                color: Color(0XFFEAECF5),
                                child: ListTile(
                                    title: Row(
                                      children: [
                                        Column(

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 15,),
                                            Container(
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,shape: BoxShape.rectangle,   border: Border.all(
                                                color: Colors.white12,
                                                width: 4,
                                              ),),

                                              child: Text(
                                                '  7 days ',
                                                style:Theme.of(context).textTheme.bodySmall,

                                              ),
                                            ),
                                            SizedBox(height: 15,),
                                            Text('Morning Yoga',
                                                style:Theme.of(context).textTheme.bodyLarge,
                                            ),
                                            SizedBox(height: 10,),

                                            Text('improve mental focus',
                                                style: Theme.of(context).textTheme.bodySmall,),
                                            SizedBox(height: 15,),
                                            Row(children: [
                                              Icon(Icons.access_time),
                                              SizedBox(width: 15,),
                                              Text('30 mins')
                                            ],)

                                          ],
                                        ),
                                        SizedBox(width: 50,),
                                        Image.asset('assets/images/[removal 2.png')
                                      ],
                                    )),
                            ),
                              ),);
                          },
                          itemCount:4),
                    ),

                  ],
                ),


                Column(

                  children: [
                    Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context,index)=>SizedBox(
                            height: 15,
                          ),
                          itemBuilder: (context,index){
                            return Center(
                              child:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  color: Color(0XFFEAECF5),
                                  child: ListTile(
                                      title: Row(
                                        children: [
                                          Column(

                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 15,),
                                              Container(
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,shape: BoxShape.rectangle,   border: Border.all(
                                                  color: Colors.white12,
                                                  width: 4,
                                                ),),

                                                child: Text(
                                                  '  3 days ',
                                                  style:Theme.of(context).textTheme.bodySmall,

                                                ),
                                              ),
                                              SizedBox(height: 15,),
                                              Text('Plank Exercise',
                                                style:Theme.of(context).textTheme.bodyLarge,
                                              ),
                                              SizedBox(height: 10,),

                                              Text('improve posture and stability',
                                                style: Theme.of(context).textTheme.bodySmall,),
                                              SizedBox(height: 15,),
                                              Row(children: [
                                                Icon(Icons.access_time),
                                                SizedBox(width: 15,),
                                                Text('30 mins')
                                              ],)

                                            ],
                                          ),

                                          Image.asset('assets/images/pngwing 1.png')
                                        ],
                                      )),
                                ),
                              ),);
                          },
                          itemCount:4),
                    ),

                  ],
                ),



                Container(
                  color: Colors.cyan,
                  child: Center(
                    child: Text('4st'),
                  ),
                ),

              ]),
            ),
            BottomNavigationBar(

              currentIndex: index,

              onTap: (value){
                index=value;
                setState(() {

                });

              },
              items: [

                BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: 'Home'),
                BottomNavigationBarItem(icon:Icon(Icons.navigation_outlined),label: 'Navigation'),
                BottomNavigationBarItem(icon:Icon(Icons.bar_chart_outlined),label: 'Chart'),
                BottomNavigationBarItem(icon:Icon(Icons.person),label: 'User'),

              ],

            ),
          ],
        ),
      ),
    );
  }
}
