import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/utils/app_texts.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:url_launcher/url_launcher.dart';

///About us
class AboutUs extends StatelessWidget {
  ///Constructor for about us
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AppRoutes.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: const AutoSizeText(
          'About Us',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: AppTheme.white,
      ),
      body: ListView(
        shrinkWrap: true,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Who we are ?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 200,
          ),
          Center(
            child: InkWell(
              child: AutoSizeText(
                'Bhasusa.com',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.primaryColor,
                ),
              ),
              onTap: () => launchUrl(
                Uri.parse(
                  'bhasusa.com',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Bhasusa Technologies PVT Limited is a pro eco company aiming at conservation of our environment which, is being tampered by various human aspects. As time keeps moving into the future, quality of Air, Water and other basic survival elements are being polluted in a way that they cannot be recycled or reused. If this vandalisation of the environment is not slowed down or completely stopped at once, we might run out of the basic functional and survival elements given to us by our mother Earth. The second scenario however, is impossible in practical terms of implementation and this leaves us with only option of slowing down the alarming rate of destruction of environment. We at BHASUSA Technologies PVT LTD aim to contribute to this cause of protecting our nature',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff12A89D),
                  Color(0xff1284A8),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/aboutUsUser.png'),
                  SizedBox(
                    width: 16.w,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        AutoSizeText(
                          "“I've been very passionate about renewable energy for many years““",
                          maxLines: 4,
                          style: AppTexts.whiteTextT18W6.merge(
                            const TextStyle(
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                   
                        SizedBox(
                          height: 10.h,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Sunayan Reddy Katkuri \nCEO',
                            style: AppTexts.whiteTextT14W6,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'What we offer through BAV ?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Booking a ride \nBuying a vehicle \nKnow more about EV \nCharging Stations',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Booking a ride',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'BOOK A VEHICLE is our interactive peer to peer ridesharing technology on android through which users can book their rides at affordable rates and buy electric vehicles from the nearest dealers. Our vehicles equip 4 and 6 seating capabilities and offer special security to our woman users. Our booking systems help users to track their rides so that they no longer have to wait in insecure places. We also offer offline mode for users who might not have internet access, users have to provide their mobile numbers to our pilots and once the ride is done the e bill will be sent to the given mobile number.',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/book_a_ride.png',
            height: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Buying a vehicle',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'BUY A VEHICLE is the India\'s first virtual electric vehicle showroom. We provide door step delivery for 2 wheeler electric vehicles',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/buy_a_vehicle.png',
            height: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'Charging Stations',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: AutoSizeText(
              'BAV operate more than 25 charging station all over Hyderabad. ',
              style: TextStyle(fontSize: 14.sp, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/charging_stations.png',
            height: 150,
          ),
       
        ],
      ),
    );
  }
}
