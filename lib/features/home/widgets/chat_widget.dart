import 'package:chat_phi/helpers/exports.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
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
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 16,
      ),
      leading: Stack(
        children: [
          Container(
            // width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: ClipOval(
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (group)
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/woman.png"),
            )
          else
            const SizedBox(),
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          const SizedBox(height: 5),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: group ? "Anna: " : "",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: blue,
                  ),
                ),
                TextSpan(
                  text: chat,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: hintTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            time,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: blue,
            ),
          ),
        ],
      ),
      onTap: () {},
    );
  }
}

final List<Map<String, dynamic>> recievedChat = [
  {
    "image": ImagePath.profile,
    "name": 'Tabish Bin Tahir',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": false,
  },
  {
    "image": ImagePath.profile,
    "name": 'Anna Paul',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": false,
  },
  {
    "image": ImagePath.profile,
    "name": 'Tabish Bin Tahir',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": false,
  },
  {
    "image": ImagePath.profile,
    "name": 'Tabish Bin Tahir',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": false,
  },
  {
    "image": "assets/images/group.svg",
    "name": 'Tabish Bin Tahir',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": false,
  },
  {
    "image": ImagePath.group,
    "name": 'Group name',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": true,
  },
  {
    "image": ImagePath.group,
    "name": 'Group name',
    "chat": 'Hi Tabish, how are you doing?',
    "time": "1 hour ago",
    "group": true,
  },
];
