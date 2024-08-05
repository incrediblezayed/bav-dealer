import 'package:dealerapp/src/app/UI/drawer/verify_mou_otp.dart';
import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:dealerapp/src/utils/app_texts.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MouPage extends ConsumerStatefulWidget {
  const MouPage({super.key});

  @override
  ConsumerState<MouPage> createState() => _MouPageState();
}

class _MouPageState extends ConsumerState<MouPage> {
  late GDealerData_dealers? dealer = cacheProvider.getDealer();

  bool isAgreed = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final dealer =
            await ref.read(authProvider.notifier).getDealerByUserId();
        this.dealer = dealer;
        cacheProvider.setDealer(dealer!);
        isAgreed = dealer.mouApproved ?? false;
        setState(() {});
      },
    );
    super.initState();
  }

  final contentStyle = const TextStyle(
    color: AppTheme.defaultTitleColor,
    fontWeight: FontWeight.w500,
  );
  final sizedBox = const SizedBox(height: 12);

  Widget agreementPoints(
      {required String title, required List<Widget> content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: contentStyle.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        ...content
      ],
    );
  }

  String roundBullet = '\u2022';
  String squareBullet = '\u25AA';
  String circleBullet = '\u25CF';

  bool isPushedToVerification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'MOU',
      ),
      body: dealer == null
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: FittedBox(
                        child: Text(
                          'MEMORANDUM OF UNDERSTANDING(MOU)',
                          style: AppTexts.headlineMedium,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text('''
This MOU Agreement is entered into as of 15th June, 202 by and between BHASUSA TECHNOLOGIES PRIVATE LIMITED having its principal place of business located at 2-61/1, Seetharampoor, Karimnagar TG 505001 and
(Showroom name) …	located at…	, both of whom agree to be bound by this Agreement.

WHEREAS, the Company has developed a Platform/Application called BAV (Buy a Vehicle & Book a Vehicle) and holds ownership of all intellectual property rights in such Product;

WHEREAS, the Company desires to make an agreement with the Electric Vehicle Dealer who can list and sell the Vehicle through BAV Platform/Application; and

NOW, THEREFORE, in consideration of the mutual covenants and promises made by the parties hereto, the Bhasusa Technologies Private Limited and the Dealer (individually, each a “Party” and collectively, the “Parties”) covenant and agree as follows:
            ''', style: contentStyle),
                    sizedBox,
                    agreementPoints(title: '1. TERM', content: [
                      Text(
                        '''
This Agreement shall remain in effect indefinitely until terminated by either Party as per the terms outlined in this Agreement. 
''',
                        style: contentStyle,
                      )
                    ]),
                    sizedBox,
                    agreementPoints(
                      title: '2. Agreement is terminated when:',
                      content: [
                        Text(
                          '''
This Agreement can be terminated by either Party, with or without cause, by providing thirty (30) days written notice to the other Party

This Agreement is automatically terminated when:

a. The Dealer does not cooperate with the company management.
b. The term of this agreement is breached
''',
                          style: contentStyle,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Note:',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      'On termination of this Agreement, the Company is not liable to pay any monetary',
                                  style: contentStyle)
                            ],
                          ),
                        ),
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                      title: '3. EFFECT OF TERMINATION.',
                      content: [
                        const Text('''
Upon termination according to Section 2, the following shall occur:
A. The Dealer shall direct all further inquiries regarding the Product back to the Company.
B. The Dealer shall return or destroy any physical or digital copies of the Company’s proprietary information in its possession, including (but not limited to) marketing material, business plans, customer lists, and pricing information.
'''),
                        sizedBox,
                        agreementPoints(
                          title: '4. PAYMENT TERMS',
                          content: [
                            Text(
                              'The following are the payment terms defined by both the parties:',
                              style: contentStyle,
                            ),
                            Text(
                              'For Vehicles:',
                              style: contentStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...[
                              ('Only Listing:', 'Rs 500/- per month'),
                              (
                                'For Sale of Vehicle and Listing:',
                                'Rs 1500/- per month'
                              ),
                              (
                                'For Sale, Listing, and Delivery of Vehicle:',
                                'Rs 3000/- per month'
                              ),
                            ].map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text.rich(
                                  TextSpan(
                                    text: '$squareBullet${e.$1}',
                                    style: contentStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: e.$2,
                                        style: contentStyle,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          '$roundBullet The Dealer has the option to choose from the above subscription options.',
                          style: contentStyle,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Note:',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "The subscription charges may change based on the Company's decision.",
                                style: contentStyle,
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: '$roundBullet Buy a Vehicle: ',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'The Company will charge a commission of around 3% - 8% on the sale price of the vehicle. This commission may vary depending on the brand of the vehicle.',
                                style: contentStyle,
                              )
                            ],
                          ),
                        ),
                        Text(
                          '$roundBullet Text Ride: ',
                          style: contentStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ...[
                          'The Dealer should take responsibility for test ride requests received from customers. The Dealer should accept or reject the test ride within 48 hours (about 2 days) of receiving the request.',
                          'The Dealer should pay the Company 10% of the test ride receipts.',
                        ].map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              '$squareBullet$e',
                              style: contentStyle,
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: '$roundBullet Dues Clearance:: ',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'The Dealer should clear all dues to the Company within 72 hours (about 3 days) of the transaction occurrence.',
                                style: contentStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    sizedBox,
                    sizedBox,
                    agreementPoints(
                      title: '5. For Products:',
                      content: [
                        Text.rich(
                          TextSpan(
                            text: 'List of Products:',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'The Company shall allow the Dealer to list their products on the BAV application. The listing charges are as follows:',
                                style: contentStyle,
                              )
                            ],
                          ),
                        ),
                        ...[
                          (
                            'For Sale of Product and Listing:',
                            'Rs 800/- per month'
                          ),
                          (
                            'For Sale, Listing, and Delivery of Product:',
                            'Rs 1500/- per month'
                          ),
                        ].map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text.rich(
                              TextSpan(
                                text: '$squareBullet${e.$1}',
                                style: contentStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: e.$2,
                                    style: contentStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '$roundBullet The Dealer has the option to choose from the above subscription options.',
                          style: contentStyle,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Note:',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "The subscription charges may change based on the Company's decision.",
                                style: contentStyle,
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: '$roundBullet Buy a Product: ',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'The Company will charge a commission of around 5% - 15% on the sale price of the product. This commission may vary depending on the type of product.',
                                style: contentStyle,
                              )
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: '$roundBullet Dues Clearance:: ',
                            style: contentStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'The Dealer should clear all dues to the Company within 72 hours (about 3 days) of the transaction occurrence.',
                                style: contentStyle,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                        title: '6. Other Terms & Conditions:',
                        content: [
                          ...[
                            'a. The Company is allowed to use HD pictures & Videos of Vehicles/products Listed without any Objection from the dealer',
                            'b. The Company is not responsible for theft or Damage of Vehicles/products during their delivery or during test rides',
                            'c. The Dealer is Wholly responsible for delivery of any damaged products or vehicles or missing parts',
                          ].map(
                            (e) => Text(
                              e,
                              style: contentStyle,
                            ),
                          )
                        ]),
                    sizedBox,
                    agreementPoints(
                        title: '7. Independent Contractor:',
                        content: [
                          Text(
                            '''
The Parties agree that they should be considered independent contractors and not agents or employees of the other Party. Neither Party shall have authority to make any statements, representations, nor any commitments of any kind, nor to take any action which shall be binding on the other Party, except as expressly provided herein or authorized in writing.''',
                            style: contentStyle,
                          )
                        ]),
                    sizedBox,
                    agreementPoints(
                      title: '8. Confidentiality',
                      content: [
                        ...[
                          'The Dealer shall not, in any fashion, form, or manner, either directly or indirectly:',
                          'i. Disclose or communicate to any party any information relating to the Company’s business or the Product including (but not limited to) customer lists, price points, or marketing plans (the “Confidential Information”).',
                          'ii. Duplicate any Confidential Information.',
                          'iii. Use any Confidential Information other than solely for the benefit of the Company.',
                          'iv. Assist a third party in using any Confidential Information in any manner but solely for the benefit of the Company.',
                        ].map((e) => Text(
                              e,
                              style: contentStyle,
                            ))
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                        title: '9. Approval of Marketing Material',
                        content: [
                          Text(
                            'The Representee shall receive confirmation from the Company in using any marketing materials related to the Product that were not directly provided by the Company.',
                            style: contentStyle,
                          )
                        ]),
                    sizedBox,
                    agreementPoints(
                      title: '10. Marketing Responsibilities',
                      content: [
                        Text(
                          'The Dealer agrees to actively market the products or vehicles they are selling through the BAV application. This includes but is not limited to:',
                          style: contentStyle,
                        ),
                        ...[
                          '$roundBullet Promoting the products or vehicles through appropriate marketing channels.',
                          '$roundBullet Participating in marketing initiatives and campaigns organized by the Company.',
                          '$roundBullet Providing accurate and up-to-date information about the products or vehicles to potential customers.',
                          '$roundBullet Engaging with potential customers and addressing their inquiries or concerns promptly.',
                          '$roundBullet Collaborating with the Company to develop marketing strategies and materials as needed.',
                          '$roundBullet The Dealer acknowledges that effective marketing efforts are essential for the success of the products or vehicles listed on the BAV application and agrees to fulfill their marketing responsibilities diligently.',
                        ].map((e) => Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Text(
                                e,
                                style: contentStyle,
                              ),
                            ))
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                      title: '11. INDEMNIFICATION',
                      content: [
                        Text(
                          'The Dealer agrees to defend, indemnify, and hold harmless the Company from and against all third-party claims (or other actions that could lead to losses by the Company) that are based upon the Representative\'s:',
                          style: contentStyle,
                        ),
                        ...[
                          '(a) Violation of the law,',
                          '(b) Violation of this Agreement, or',
                          '(c) Violation of any third party\'s rights.',
                        ].map((e) => Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                '$roundBullet $e',
                                style: contentStyle,
                              ),
                            ))
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                      title: '12. NO MODIFICATION UNLESS IN WRITING',
                      content: [
                        Text(
                          'No modification of this Agreement shall be valid unless in writing and agreed upon by both Parties.',
                          style: contentStyle,
                        ),
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                      title: '13. ENTIRE AGREEMENT',
                      content: [
                        Text(
                          'This Agreement represents the full understanding of the Parties and shall supersede all previous oral or written agreements regarding the subject matter herein.',
                          style: contentStyle,
                        ),
                      ],
                    ),
                    sizedBox,
                    agreementPoints(
                      title: '14. APPLICABLE LAW',
                      content: [
                        Text(
                          'This Agreement and the interpretation of its terms shall be governed by and construed in accordance with the laws of all the states in India.',
                          style: contentStyle,
                        ),
                      ],
                    ),
                    sizedBox,
                    if (!(isPushedToVerification ||
                        (dealer?.mouApproved ?? false)))
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isAgreed,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: AppTheme.primaryColor,
                            onChanged: !(dealer?.mouApproved ?? false)
                                ? (value) {
                                    setState(() {
                                      isAgreed = value ?? false;
                                    });
                                  }
                                : null,
                          ),
                          Expanded(
                            child: Text(
                              'I agree to the terms and conditions',
                              style: contentStyle,
                            ),
                          ),
                        ],
                      ),
                    KBottomBarButton(
                      color: (dealer?.mouApproved ?? false) || !isAgreed
                          ? Colors.grey
                          : AppTheme.primaryColor,
                      text: isPushedToVerification ||
                              (dealer?.mouApproved ?? false)
                          ? 'Verification Completed'
                          : 'Verify',
                      onTap: isPushedToVerification ||
                              (dealer?.mouApproved ?? false)
                          ? () {}
                          : () async {
                              isPushedToVerification =
                                  await AppRoutes.push<bool?>(
                                          page: const VerifyMouOtp()) ??
                                      false;
                              dealer = await ref
                                  .read(authProvider.notifier)
                                  .getDealerByUserId();
                              setState(() {});
                            },
                    ),
                    SizedBox(
                      height: 20 + MediaQuery.viewPaddingOf(context).bottom,
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
