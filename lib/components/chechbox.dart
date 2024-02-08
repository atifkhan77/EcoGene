import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckbox extends StatefulWidget {
  final String text;
  final bool isChecked;
  final Function(bool) onChanged;

  CustomCheckbox(
      {required this.text, required this.isChecked, required this.onChanged});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!_isChecked);
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                widget.text,
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(34, 34, 34, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),

                softWrap: true, // Allow text to wrap to the next line
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: const Color.fromRGBO(2, 71, 34, 1),
                    width: 3.0,
                  ),
                ),
                child: _isChecked
                    ? const Icon(
                        weight: 500,
                        Icons.check,
                        size: 18.0,
                        color: Color.fromRGBO(2, 71, 34, 1),
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }
}
