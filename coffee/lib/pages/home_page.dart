import 'package:coffee/util/coffee_tile.dart';
import 'package:coffee/util/coffee_type.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List coffeeType = [
    ['Cappuctino', true],
    ['Latte', false],
    ['Black', false],
    ['Milk', false],
    ['Milk Tea', false],
    ['Tea', false],
    ['Tea', false],
    ['Tea', false],
  ];
  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i=0;i<coffeeType.length;i++){
        coffeeType[i][1]=false;
      }
      coffeeType[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 30, 30),
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 59, 57, 57),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 80, 76, 76),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          ]),
      body: Column(
        children: [
          Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Find the best coffee for you",
                  // style:
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            );
          }),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Find your cofee...',
                // hintStyle: TextStyle(color: Colors.white),

                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis
                  .horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context, index) {
                    return CoffeeType(
                        coffeeType: coffeeType[index][0],
                        isSelected: coffeeType[index][1],
                        onTap: (){
                          coffeeTypeSelected(index);
                        });
                  })),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1572097662444-003d63fe5884?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcHB1Y2Npbm98ZW58MHx8MHx8fDA%3D',
                coffename: 'Cappuctino',
                coffePrice: '4.00',
              ),
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1599901001011-9c0f0fb69b34?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29mZmVlJTIwbGF0dGV8ZW58MHx8MHx8fDA%3D',
                coffename: 'Latte',
                coffePrice: '4.00',
              ),
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1621555470436-d36e9683bae5?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y29mZmVlJTIwYmxhY2t8ZW58MHx8MHx8fDA%3D',
                coffename: 'Cappuctino',
                coffePrice: '4.00',
              ),
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1562547256-2c5ee93b60b7?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dGVhfGVufDB8fDB8fHww',
                coffename: 'Cappuctino',
                coffePrice: '4.00',
              ),
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1601758576460-cfb667a6e024?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG1pbGslMjB0ZWF8ZW58MHx8MHx8fDA%3D',
                coffename: 'Cappuctino',
                coffePrice: '4.00',
              ),
              CoffeeTile(
                coffeImagepath: 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dGVhfGVufDB8fDB8fHww',
                coffename: 'Cappuctino',
                coffePrice: '4.00',
              ),
              
            ],
          ))
        ],
      ),
    );
  }
}
