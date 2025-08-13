import 'package:flutter/material.dart';

class Pratice extends StatelessWidget {
  const Pratice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){FocusScope.of(context).unfocus();},
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('asset/img_2.png'),
                  Positioned(
                    bottom: 80,
                    left: 50,
                    child: Text(
                      "Explore the World",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Positioned(
                    left: 10,
                    right: 10,
                    bottom: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search destination",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                width: 500,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 40,

                  shrinkWrap: true, // 👈 Makes it take only needed height
                  physics: NeverScrollableScrollPhysics(), // 👈 Prevents it from scrolling on its own
                  children: [
                    Stack(
                      children: [
                        Image.asset('asset/img_2.png', height: 800, width: 800),
                        Positioned(
                          left: 15,
                          bottom: 55,
                          child: Text(
                            "Paris",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('asset/img_2.png', height: 400, width: 400),

                        Positioned(
                          left: 15,
                          bottom: 55,
                          child: Text(
                            "Paris",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('asset/img_2.png', height: 400, width: 400),
                        Positioned(
                          left: 15,
                          bottom: 55,
                          child: Text(
                            "Paris",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset('asset/img_2.png', height: 400, width: 400),
                        Positioned(
                          left: 15,
                          bottom: 55,
                          child: Text(
                            "Paris",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white10,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'asset/img_2.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 15),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Romantic Paris Getaway",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.more_time_rounded, size: 25),
                            SizedBox(width: 8),
                            Text("4 Nights - 5 Days"),
                          ],
                        ),
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "799",
                              style: TextStyle(color: Colors.blue, fontSize: 25),
                            ),
                            SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white10,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'asset/img_2.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 15),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Romantic Paris Getaway",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.more_time_rounded, size: 25),
                            SizedBox(width: 8),
                            Text("4 Nights - 5 Days"),
                          ],
                        ),
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "799",
                              style: TextStyle(color: Colors.blue, fontSize: 25),
                            ),
                            SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white10,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        'asset/img_2.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 15,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Romantic Paris Getaway",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.more_time_rounded, size: 25),
                            SizedBox(width: 8),
                            Text("4 Nights - 5 Days"),
                          ],
                        ),
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Text(
                              "799",
                              style: TextStyle(color: Colors.blue, fontSize: 25),
                            ),
                            SizedBox(width: 15),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Book Now",style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
