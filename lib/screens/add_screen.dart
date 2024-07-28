import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../utils/app_colors.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  // List of items for the dropdown
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  // The currently selected item
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.appPrimaryColor,
        title: Text("Post Ads",style: GoogleFonts.outfit(
            color: AppColors.appWhiteColor,
            fontSize: 16
        ),),
      ),

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,vertical: 8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Category",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                DropdownButton<String>(
                  isExpanded: true,
                  value: _selectedItem,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue;
                    });
                  },
                  items: _items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text('Select an item',style: GoogleFonts.outfit(

                  ),),
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: GoogleFonts.outfit(color: Colors.black, fontSize: 16),

                ),

                SizedBox(height: 12,),

                Text("Images",style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w400,
                  fontSize: 14
                ),),
                SizedBox(height: 12,),
                CircleAvatar(
                  backgroundColor: AppColors.appPrimaryColor,
                  radius: 30,
                  child: Icon(LineIcons.plus,color: AppColors.appWhiteColor,),
                ),

                SizedBox(height: 20,),
                Text("Title",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter title",
                    hintStyle: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                    )
                  ),
                ),

                SizedBox(height: 20,),
                Text("Description",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                TextFormField(
                  maxLines: null,
                  minLines: 4,
                  decoration: InputDecoration(
                      hintText: "Enter description",
                      hintStyle: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      )
                  ),
                ),

                SizedBox(height: 20,),
                Text("Price",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter price",
                      hintStyle: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      )
                  ),
                ),

                SizedBox(height: 20,),
                Text("phone",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter phone",
                      hintStyle: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      )
                  ),
                ),

                SizedBox(height: 20,),
                Text("Website",style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter website",
                      hintStyle: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      )
                  ),
                ),

                SizedBox(height: 30,),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.appPrimaryColor
                  ),
                  child: Center(
                    child: Text("Submit",style: GoogleFonts.outfit(
                      color: AppColors.appWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                )

              ],
            ),
          ),

          SizedBox(height: 30,),

        ],
      ),
    );
  }
}
