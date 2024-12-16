import 'package:chat_phi/helpers/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar:
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // preferredSize: const Size.fromHeight(90), // Height of the AppBar
                Padding(
                  padding: const EdgeInsets.only(
                    top: 76,
                    left: 20,
                    right: 20,
                  ), // Offset the AppBar
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 37.81,
                            height: 37.81,
                            decoration: const BoxDecoration(
                              color: textFieldGrey,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.menu,
                              color: iconGrey,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            "Home",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(homeButtonContents.length, (index) {
                            return HomeButton(
                              title:
                                  homeButtonContents[index]['title'] as String,
                              iconUrl: homeButtonContents[index]['icon']
                                  as IconData?,
                              onPressed: homeButtonContents[index]['function']
                                  as void Function()?,
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomLoginTextField(
                  controller: searchController,
                  hintText: "Search here",
                  searchIcon: true,
                  iconss: false,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                    // bo: 0,
                  ),
                  child: Row(
                    children: [
                      FilterButtonRow(),
                    ],
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: recievedChat.length,
                    itemBuilder: (context, index) {
                      final chatData = recievedChat[index];
                      return Column(
                        children: [
                          SlidableChat(
                            image: chatData["image"] as String,
                            name: chatData["name"] as String,
                            chat: chatData["chat"] as String,
                            time: chatData["time"] as String,
                            group: chatData["group"] as bool,
                          ),
                          if (index != recievedChat.length)
                            const Divider(
                              thickness: .2,
                              height: 1,
                            ), // Add divider
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 35,
              right: MediaQuery.sizeOf(context).width > 600
                  ? MediaQuery.sizeOf(context).width / 2.2
                  : MediaQuery.sizeOf(context).width / 3.2,
              child: Container(
                height: 39,
                width: 162,
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Send new message",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white, // Adjust text color
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {},
                backgroundColor: blue,
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
