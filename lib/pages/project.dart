import 'package:file_storage_ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key, required this.folderName});

  final String folderName;

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarWidget(
            opacity: 0.05,
            titleColor: Colors.black,
            subTitleColor: Colors.black,
            color: Colors.grey.shade200,
            firstIconColor: Colors.blue,
            secondIconColor: Colors.blue,
            title: widget.folderName,
            subTitle: "Project",
            firstIcon: Icons.search_rounded,
            secondIcon: Icons.share_outlined,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildAvatar(name: 'mai', img: 'mia.jpeg'),
                          buildAvatar(name: 'adam', img: 'adam.jpeg'),
                          buildAvatar(name: 'alie', img: 'alie.jpeg'),
                          buildAvatar(name: 'brandon', img: 'brandon.jpeg'),
                          buildAvatar(name: 'jess', img: 'jess.jpeg'),
                          buildAvatar(name: 'mike', img: 'mike.jpeg'),
                          buildAvatar(name: 'adam', img: 'adam.jpeg'),
                          buildAvatar(name: 'adam', img: 'adam.jpeg'),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Files",
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
    return Container(
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
              Stack(children: [
                Icon(
                  Icons.folder,
                  color: Colors.blue[200],
                ),
                Positioned(
                  right: 1,
                  top: 5,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ]),
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
    );
  }

  Container buildAvatar({required String name, required String img}) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: Image.asset("assets/images/$img").image,
            radius: 30,
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
