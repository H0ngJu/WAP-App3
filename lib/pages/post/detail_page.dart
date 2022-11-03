import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wap_library/components/custom_text_form_feild.dart';
import 'package:wap_library/components/getDeviceSize.dart';
import 'package:wap_library/pages/main/list_page.dart';
import 'package:wap_library/pages/post/bookshelf_page.dart';
import 'package:wap_library/pages/post/rental_page.dart';
import 'package:wap_library/pages/post/reservation_page.dart';
import 'package:wap_library/pages/post/return_page.dart';

/*class BookDetail extends StatelessWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //흰 배경화면 불러오기
        body: Stack(// 지금부터 하는게 스택
            children: [
      Positioned(
          left: 0,
          right: 0, //위치를 언급해줘야함
          child: Container(
            width: double.maxFinite,
            height: 350,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/book.jpg"))),
          ))
    ]));
  }
} //유튭

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> pageList = <Widget>[
    ReturnPage(),
    RentalPage(),
    ReservationPage(),
  ];
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Adeleye Ayodeji',
      'pic': 'https://picsum.photos/300/30',
      'message': 'I love to code'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
    {
      'name': 'Biggi Man',
      'pic': 'https://picsum.photos/300/30',
      'message': 'Very cool'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: CommentBox(
          userImage:
              "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
          labelText: 'Write a comment...',
          withBorder: false,
          errorText: 'Comment cannot be blank',
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'pic':
                      'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'message': commentController.text
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          sendWidget:
              const Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: Column(
            children: [
              Positioned(
                  left: 0,
                  right: 0, //위치를 언급해줘야함
                  child: Container(
                    width: double.maxFinite,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bookcover.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                left: 0,
                right: 0,
                top: 200,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white54,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("책 제목",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Widget> pageList = <Widget>[
    ReturnPage(),
    RentalPage(),
    ReservationPage(),
  ];
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': '이홍주1',
      'pic': 'https://picsum.photos/300/30',
      'message': '책 추천합니다~!'
    },
    {
      'name': '이홍주2',
      'pic': 'https://picsum.photos/300/30',
      'message': '김치찌개 묻어있음. 근데 내용은 good'
    },
  ];
  Widget commentChild(data) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(data[i]['pic'] + "$i")),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  Widget Chat() {
    return Container(
      child: CommentBox(
        userImage:
            "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
        child: commentChild(filedata),
        labelText: 'Write a comment...',
        withBorder: false,
        errorText: 'Comment cannot be blank',
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'name': 'New User',
                'pic':
                    'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                'message': commentController.text
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Not validated");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("도서 상세 정보"),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/bookcover.jpg',
            width: 140,
          ),
          Padding(padding: EdgeInsets.all(3)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '윈도우즈 API 정복 1',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '김상형, 2006년, 1116쪽',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children : [Text('book review', style: TextStyle(fontSize: 10, color: Colors.black26)),
              commentChild(filedata)],
          ),
    ],
      ),
    );
  }
}
