import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
 static const String routeName='third';

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int index=0;
  int? value = 1;
  List<String>titles=['Discover','News','Most Viewed','Saved'];
  List<String>images=['assets/images/Frame 3466530.png','assets/images/Frame 3466530(1).png','assets/images/Frame 3466530.png',];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/images/Frame.png'),
              SizedBox(width: 10,),
              Text('AliceCare',style:Theme.of(context).textTheme.bodyLarge,)
            ],
          ),
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                hintText:'Articles, Videos, Audios and More....',
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey)),
              ),
            ),

            Wrap(
              spacing: 5.0,
              children: List<Widget>.generate(
                4,
                    (int index) {
                  return ChoiceChip(
                    label: Text(titles[index],style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.purple),),
                    selected: value == index,
                    selectedColor: Color(0xffF4EBFF),
                    backgroundColor: Colors.white,

                    side: BorderSide(color: Colors.grey),
                    onSelected: (bool selected) {
                      setState(() {
                        value = selected ? index : null;
                      });
                    },
                  );
                },
              ).toList(),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Hot topics',style: Theme.of(context).textTheme.bodyLarge,),
                  Spacer(),
                  Text('See all',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.purple)),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 15,)

                ],
              ),
            ),





            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 16,childAspectRatio: 1/1),itemCount: 3,
                    itemBuilder: (context,index)=>
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),shape: BoxShape.rectangle),
                        child: Image.asset(images[index],fit: BoxFit.cover,width: double.infinity,height: double.infinity,))),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Get Tips',style: Theme.of(context).textTheme.bodyLarge,),
                ],
              ),
            ),














            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
                  color: Color(0xffE4E7EC),
                child:ListTile(
                  title: Row(
                    children: [
                      Image.asset('assets/images/Doctor-PNG-Images 1.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('Connect with doctors & ',style: Theme.of(context).textTheme.bodyMedium,),
                          Text('get suggesions ',style: Theme.of(context).textTheme.bodyMedium,),
                          SizedBox(height: 10,),
                          Text('Connect now and get'),
                          Text('expert insights'),
                          SizedBox(height: 15,),
                          ElevatedButton(onPressed: (){}, child:Text('View details',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xff7F56D9),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),))
                        ],
                      )
                    ],
                  ),
                )

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Cycle Phases and Period',style: Theme.of(context).textTheme.bodyLarge,),
                  Spacer(),
                  Text('See all',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.purple)),
                  Icon(Icons.arrow_forward_ios,color: Colors.purple,size: 15,)

                ],
              ),
            ),




            BottomNavigationBar(

              currentIndex: index,

              onTap: (value){
                index=value;
                setState(() {

                });

              },
              items: [

                BottomNavigationBarItem(icon:Icon(Icons.calendar_today_outlined),label: 'Today'),
                BottomNavigationBarItem(icon:Icon(Icons.grid_view),label: 'Insights'),
                BottomNavigationBarItem(icon:Icon(Icons.chat_bubble_outline),label: 'Chat'),


              ],

            ),
          ],
        ),
      ),
    );
  }
}
