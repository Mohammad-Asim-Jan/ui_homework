import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> category = ['Popular', 'Trending', 'Recent', 'For You'];
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.white54,
                size: 35,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.search_outlined,
                color: Colors.white54,
                size: 35,
              ),
            ),
          ],
          backgroundColor: Colors.black12,
          leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              radius: 25,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Alan Kannedie',
                    style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.blue.shade400,
                  )
                ],
              ),
              Text(
                '@alan.k92',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white10,
        body: ListView(
          padding:
              const EdgeInsets.only(top: 20, left: 1, right: 5, bottom: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 38,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategory = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 3, bottom: 3),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            border: Border.all(
                                color: selectedCategory == index
                                    ? Colors.white60
                                    : Colors.transparent,
                                width: 1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            category[index],
                            style: const TextStyle(
                                color: Colors.white60, fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 18),
                  child: Text(
                    category[selectedCategory],
                    style: const TextStyle(color: Colors.white60, fontSize: 18),
                  ),
                ),
                const Placeholder(
                  color: Colors.blue,
                  fallbackHeight: 80,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: Text(
                    'Recent Strings',
                    style: TextStyle(
                        color: Colors.white60, letterSpacing: 1, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 3, bottom: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                            radius: 23,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'String Official',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.verified,
                                      color: Colors.blue.shade400,
                                    )
                                  ],
                                ),
                                Text(
                                  '@string.of',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.grey.shade500,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              '6m',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.white60,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 76, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Are you ready for cf_PRO?! Waiting list here:',
                        style: TextStyle(
                            color: Colors.white38,
                            letterSpacing: 1,
                            fontSize: 13),
                      ),
                      Text(
                        'cursodefigma.pro',
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            letterSpacing: 1,
                            fontSize: 13),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Image(
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          height: 32,
                          width: 170,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 23,
                                color: Colors.white54,
                              ),
                              Icon(
                                Icons.mode_comment,
                                size: 23,
                                color: Colors.white54,
                              ),
                              Icon(
                                Icons.autorenew_rounded,
                                size: 23,
                                color: Colors.white54,
                              ),
                              Icon(
                                Icons.send_outlined,
                                size: 23,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          '0 replies * 780 likes',
                          style: TextStyle(color: Colors.white38),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  filled: true,
                  labelText: 'Your response...',
                  labelStyle: const TextStyle(
                      color: Colors.white38, fontWeight: FontWeight.w400),
                  suffixIcon: const Icon(
                    Icons.send_outlined,
                    color: Colors.white54,
                  ),
                  fillColor: const Color.fromRGBO(64, 64, 64, 200),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
