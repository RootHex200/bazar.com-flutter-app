import 'package:cl_listing/screens/all_category_screen.dart';
import 'package:cl_listing/src/features/product/products/presentation/view/components/products_item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../../widgets/filter_widget.dart';
import '../../../../../../screens/all_ads_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchTextCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()async{

      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 140,
            backgroundColor: AppColors.appPrimaryColor,
            centerTitle: true,
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bazar",
                          style: GoogleFonts.inter(
                              color: AppColors.appWhiteColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              height: 1.4
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 2,),
                        Text("Buy Sell Rent in one click",
                          style: GoogleFonts.inter(
                              color: AppColors.appWhiteColor.withOpacity(0.7),
                              fontSize: 12
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16,),

                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.appWhiteColor,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 2),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Search here",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.appBlackColor.withOpacity(0.6)
                              )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                            ),
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Container(
                                height: MediaQuery.of(context).size.height * 0.60,
                                child: FilterWidget(),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.appWhiteColor,
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Icon(LineIcons.filter,size: 24,color: AppColors.appPrimaryColor,),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          
          
          body: SafeArea(
            child: Stack(
              children: [

                ListView(
                  children: [


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 16,),

                        Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 16
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Popular Categories",style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  AllCategoryScreen()
                                  ));

                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Text("View All",style: GoogleFonts.outfit(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        color: AppColors.appPrimaryColor
                                      ),),
                                      SizedBox(width: 6,),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 16
                          ),
                          child: Container(
                            height: 160,
                            width: double.infinity,
                            color: AppColors.appWhiteColor,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        right: 12,
                                        bottom: 5
                                    ),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: SizedBox(
                                        width: 100,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Container(
                                                width: 70,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                ),
                                                child: ClipOval(
                                                  child: Image.asset("assets/images/default_image.jpg",
                                                    height: 40,
                                                    width: 40,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(height: 10,),

                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text("name",style: TextStyle(
                                                  color: AppColors.appBlackColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11
                                              ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),
                        ),

                        SizedBox(height: 8,),

                        Padding(
                          padding:  EdgeInsets.symmetric(
                              horizontal: 16
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Latest Ads",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  AllAdsScreen()
                                  ));

                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Text("View All",style: GoogleFonts.outfit(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.appPrimaryColor
                                      ),),
                                      SizedBox(width: 6,),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 16,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: ProductItem()
                        ),


                        SizedBox(height: 50,),


                      ],
                    ),

                  ],
                ),


              ],
            )
          )
      ),
    );
  }

}

