import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/core/constants/color_constants.dart';
import 'package:travel_ui/core/constants/dismension_constants.dart';
import 'package:travel_ui/core/helpers/asset_helper.dart';
import 'package:travel_ui/core/helpers/image_helper.dart';
import 'package:travel_ui/core/reprensentation/screens/hotel_screen.dart';
import 'package:travel_ui/core/reprensentation/widgets/app_bar_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _builtItemCategory(
      Widget icon, Color color, Function() onTap, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: kMediumPadding,
            ),
            child: icon,
            decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(kItemPadding)),
          ),
          const SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Jame!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: kMediumPadding,
                ),
                Text(
                  'Where are you going next???',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.bell,
              size: kDefaultIconSize,
              color: Colors.white,
            ),
            const SizedBox(
              width: kTopPadding,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kItemPadding),
                  color: Colors.white),
              padding: const EdgeInsets.all(kMinPadding),
              child: ImageHelper.loadFromAsset(AssetHelper.person),
            )
          ],
        ),
      ),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                hintText: "Search your destination",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(kTopPadding),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black,
                    size: kDefaultIconSize,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(kItemPadding)),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.symmetric(horizontal: kItemPadding)),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                  child: _builtItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoHotel,
                          width: kBottomBatIconSize, height: kBottomBatIconSize),
                      const Color(0xffFE9C5E),
                      () {
                        Navigator.of(context).pushNamed(HotelScreen.routeName);
                      },
                      "Hotels")),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: _builtItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoPlane,
                          width: kBottomBatIconSize, height: kBottomBatIconSize),
                      const Color(0xffF77777),
                      () {},
                      "Flights")),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: _builtItemCategory(
                      ImageHelper.loadFromAsset(AssetHelper.icoHotelPlane,
                          width: kBottomBatIconSize, height: kBottomBatIconSize),
                      const Color(0xff3EC8BC),
                      () {},
                      "All"))
            ],
          )
        ],
      ),
    );
  }
}
