import 'package:chat_phi/helpers/exports.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableChat extends StatelessWidget {
  const SlidableChat({
    required this.image,
    required this.name,
    required this.chat,
    required this.time,
    required this.group,
    super.key,
  });

  final String image;
  final String name;
  final String chat;
  final String time;
  final bool group;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.18,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                // print("Edit tapped");
              },
              child: Container(
                // width: double.,
                color: blue,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.more_horiz,
                      size: 30, // Increase the icon size here
                      color: Colors.white,
                    ),
                    Text(
                      'More',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 10, // Adjust font size
                        fontWeight: FontWeight.w400, // Adjust weight
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      child: ChatWidget(
        image: image,
        name: name,
        chat: chat,
        time: time,
        group: group,
      ),
    );
  }
}
