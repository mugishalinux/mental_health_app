import 'package:flutter/material.dart';
import 'package:mentalhealapp/widgets/emotion_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ]),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hi, Jared",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "23 Jan, 2021",
                                style: TextStyle(
                                  color: Colors.blue[200],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      //search bar
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(10),
                        child: Row(children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // how do you fell
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz, color: Colors.white),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              EmotionalFace(
                                emoticonFace: "😏",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  "Sad",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              EmotionalFace(
                                emoticonFace: "🙂",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text("Fine",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              EmotionalFace(
                                emoticonFace: "😄",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text("Well",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              EmotionalFace(
                                emoticonFace: "😎",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text("Excellent",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[300],
                    child: Center(
                        child: Column(
                      children: [
                        //exercises heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        // listview of exercise s
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: const ListTile(
                            leading: Icon(Icons.favorite),
                            title: Text("Speaking Skills"),
                            subtitle: Text("15 Exercises"),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
