import 'package:file_storage_ui/pages/project.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class TeamFolder extends StatefulWidget {
  const TeamFolder({super.key});

  @override
  State<TeamFolder> createState() => _TeamFolderState();
}

class _TeamFolderState extends State<TeamFolder> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          CustomAppBarWidget(
            color: Colors.blue.shade800,
            title: 'Rioters',
            subTitle: 'Team folder',
            firstIcon: Icons.search,
            secondIcon: Icons.notifications,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "Storage",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: " 9.1/10GB",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              "Upgrade",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            buildFileSizeChart("sources", Colors.blue, 0.30),
                            buildFileSizeChart("docs", Colors.red, 0.25),
                            buildFileSizeChart("images", Colors.orange, 0.2),
                            buildFileSizeChart("", Colors.grey, 0.15),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(height: 20),
                        const Text(
                          "Recently update",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  buildFileColumn(
                                    img: 'sketch.png',
                                    text: "desktop",
                                    subText: ".sketch",
                                  ),
                                  const SizedBox(width: 10),
                                  buildFileColumn(
                                    img: 'prd.png',
                                    text: "mobile",
                                    subText: ".prd",
                                  ),
                                  const SizedBox(width: 10),
                                  buildFileColumn(
                                    img: 'sketch.png',
                                    text: "design",
                                    subText: ".sketch",
                                  ),
                                  const SizedBox(width: 10),
                                  buildFileColumn(
                                    img: 'prd.png',
                                    text: "coder",
                                    subText: ".prd",
                                  ),
                                  const SizedBox(width: 10),
                                  buildFileColumn(
                                    img: 'sketch.png',
                                    text: "design",
                                    subText: ".sketch",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Project",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "Create New",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        buildProjectRow(folderName: 'ChatBox'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'TimeNote'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'TimeNote'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'TimeNote'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'TimeNote'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'TimeNote'),
                        const SizedBox(
                          height: 5,
                        ),
                        buildProjectRow(folderName: 'SomeThing'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "Time"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Folder"),
        ],
      ),
    );
  }

  Widget buildProjectRow({required String folderName}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Project(
              folderName: folderName,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.folder,
                  color: Colors.blue[200],
                ),
                const SizedBox(width: 15),
                Text(
                  folderName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }

  Column buildFileColumn(
      {required String img, required String text, required String subText}) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            "assets/images/$img",
            fit: BoxFit.contain,
            width: 50,
          ),
        ),
        const SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text: text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                  text: subText,
                  style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }

  Column buildFileSizeChart(String text, Color color, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: availableScreenWidth * width,
          height: 4,
          color: color,
        ),
        Text(text.toUpperCase())
      ],
    );
  }
}
