import 'package:flutter/material.dart';
import 'package:shop_app_onboarding_screen/otpForm.dart';

// ***** Video-1 *****
/*void main() {
  runApp(const MaterialApp(
    home: OnBoardingScreen(),
  ));
}
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController; // Sayfalar arasında gezinme işlevselliği

  int _pageIndex = 0;

  @override
  void initState() // Widget'in durumu (state) başlatıldığında çalıştırılır.
  {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void
      dispose() // Widget'in ömrü sona erdiğinde yapılan temizleme işlemlerini içerir.
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(// Sayfaları kaydırmamızı sağlar.
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemCount: demo_data.length,
                  itemBuilder: (context,
                          index) => // Her sayfa için görüntülenecek widget'i döndürün
                      OnboardContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(demo_data.length, (index) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: DoIndicator(isActive: index == _pageIndex),
                  )),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease); // curve: Curves.ease => Animasyonun başlangıçta yavaş başlayıp
                      },                  // daha hızlı bir şekilde ilerleyeceği bir eğriyi temsil eder.
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: Image.asset(
                        "asset/right.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoIndicator extends StatefulWidget {
 const DoIndicator({super.key, this.isActive = false});
  final bool isActive;

  @override
  State<DoIndicator> createState() => _DoIndicatorState();
}

class _DoIndicatorState extends State<DoIndicator> {
  Color primaryColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
        height: widget.isActive ? 12 : 4,
        width: 4,
        decoration: BoxDecoration(
          color: widget.isActive ? primaryColor : primaryColor.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ));
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demo_data = [
  Onboard(
    image: "asset/sec.png",
    title: "Find the item you've \nbeen looking for",
    description:
        "Here you'll see rich varieties of goods,carefully classified for seamless browsing experince.",
  ),
  Onboard(
    image: "asset/shop.png",
    title: "Get those shopping \nbags filled",
    description:
        "Add any item you want to your cart, or save it on your wishlist, so you don't miss it in your future purchses",
  ),
  Onboard(
    image: "asset/kart.png",
    title: "Fast & secure \npayment",
    description: "There are many payment options available for your ease",
  ),
  Onboard(
      image: "asset/takip.png",
      title: "Package tracking",
      description:
          "In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments"),
  Onboard(
      image: "asset/konum.png",
      title: "Nerby stores",
      description:
          "Easily track nearby shops, browse through their items and get "),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(
                  context) // mevcut bağlam (context) içindeki tema (theme) özelliklerine erişmeyi sağlar.
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
} */

// ****** Video-2 *****
void main() {
  runApp(const MaterialApp(
    home: Scaffold(
        body: SafeArea(
            child: otpForm(),
        ),
    ),
  ));
}
