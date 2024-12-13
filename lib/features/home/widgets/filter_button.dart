import 'package:chat_phi/helpers/exports.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Detects tap to change selection
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 33,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            color: isSelected
                ? faintBlue
                : textFieldGrey, // Change color based on selection
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: isSelected ? blue : hintTextColor, // Adjust text color
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FilterButtonRow extends StatefulWidget {
  const FilterButtonRow({super.key});

  @override
  FilterButtonRowState createState() => FilterButtonRowState();
}

class FilterButtonRowState extends State<FilterButtonRow> {
  int selectedIndex = -1; // -1 means no button is selected

  @override
  Widget build(BuildContext context) {
    final titles = <String>["All", "Groups", "Unread"];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        titles.length,
        (index) => FilterButton(
          title: titles[index],
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index; // Update selected button
              FocusScope.of(context).unfocus();
            });
          },
        ),
      ),
    );
  }
}
