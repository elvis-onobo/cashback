import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class Info {
  String header;
  String text;

  Info(this.header, this.text);
}

class _CarouselState extends State<Carousel> {
  List images = [
    'money-in-hand.jpeg',
    'teller.jpeg',
    'money-in-wallet.jpeg',
  ];

  List<Info> infoText = [
    Info("Save as You Spend",  "Accrue a small percentage of your spending as savings for the rainy day."),
    Info("Quicker Access", "Get better access to scarce recourses at Rush partner merchants."),
    Info("You Earn", "Earn interests on your investment at the end of the lending cycle once the borrower pays."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/${images[index]}'),
                    fit: BoxFit.cover,
                  opacity: 0.3,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: List.generate(images.length, (indexDots) {
                            return Container(
                              margin: const EdgeInsets.only(left: 2, right: 2),
                              width: index == indexDots ? 25 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots ? const Color(0xFF080f2e): const Color(0xff4b4ad6).withOpacity(0.3)
                              ),
                            );
                          }),
                        ),
                        const SizedBox(height: 20),
                        Text(infoText[index].header, style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        )),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          child: Text(infoText[index].text,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/register');
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF080f2e),
                                  minimumSize: const Size(
                                      100, 40
                                  ),
                                  elevation: 0
                              ),
                              child: const Text('Register'),
                            ),
                            const SizedBox(width: 5),
                            OutlinedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/login');
                              },
                              style: OutlinedButton.styleFrom(
                                // primary: Colors.orange[800],
                                  side: const BorderSide(color: Color(0xFF080f2e)),
                                  minimumSize: const Size(
                                      100, 40
                                  ),
                                  elevation: 0
                              ),
                              child: const Text('Login',
                                style: TextStyle(
                                    color: Color(0xFF080f2e)
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}