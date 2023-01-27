import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'imagelist.dart';

const double kTexttitlesize=25;
const double kBorderradius=10;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagelist = ImageList().imageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: [
            Row(
              children: [
                Icon(
                  Icons.article_rounded,
                  size: 50,
                ),
                SizedBox(
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'News Feed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: kTexttitlesize,
                ),
              ),
            ),


            CarouselSlider(
                items: imagelist
                    .map((item) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderradius),
                            image: DecorationImage(
                              image: NetworkImage(item),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  reverse: true,
                  enableInfiniteScroll: false,
                  aspectRatio: 1.0,
                  viewportFraction: 0.85,
                )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Upcoming Event & current Event',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: kTexttitlesize,
                ),
              ),
            ),


            CarouselSlider(
                items: imagelist
                    .map((item) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderradius),
                    image: DecorationImage(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  reverse: true,
                  enableInfiniteScroll: false,
                  aspectRatio: 1.0,
                  viewportFraction: 0.85,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Past Event',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: kTexttitlesize,
                ),
              ),
            ),
            CarouselSlider(
                items: imagelist
                    .map((item) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderradius),
                    image: DecorationImage(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  reverse: true,
                  enableInfiniteScroll: false,
                  aspectRatio: 1.0,
                  viewportFraction: 0.85,
                )),








          ],
        ),
      ),
    );
  }
}




// Container(
//   padding: const EdgeInsets.all(8.0),
//   child: ListView.builder(
//
//       scrollDirection: Axis.horizontal,
//       itemCount: 10,
//       itemBuilder: (context, index) => Container(
//         height: 100,
//           width: 100,
//         child: Text(
//           'event$index',
//
//         ),
//
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               // image: DecorationImage(
//               //     image: NetworkImage(imagelist[index]),
//               //     fit: BoxFit.cover),
//             ),
//           )),
// ),