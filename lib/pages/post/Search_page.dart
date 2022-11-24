/*import 'package:flutter/material.dart';

//검색창 수정
class Search extends SearchDelegate{
  @override
  List<Widget> buildAction(BuildContext context){
    return <Widget>[
      IconButton(icon: Icon(Icons.close),
          onPressed: (){query = "";})
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){Navigator.pop(context);}
    );
  }

  @override
  Widget buildResults(BuildContext context){
    return Container(
      child: Center(
        child: Text("검색"),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> suggestionList = ['추천1', '추천2', '추천3'];
    List<String> recentList = ['최근1', '최근2', '최근3'];
    query.isEmpty
    ? suggestionList = recentList
    : suggestionList
    .addAll(list.where((element) => element.contains(query)));

    return ListView.builder(
        itemCount : suggestionList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(suggestionList[index]),
            leading: query.isEmpty ? Icon(Icons.access_time) : SizedBox(),
            onTap: (){
              suggestionList = suggestionList[index];
              showResults(context);
            },
          );
        },);
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wap_library/components/BookData.dart';

class SearchSreen extends StatefulWidget {
  _SearchSreenState createState() => _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen> {
  final TextEditingController _filter = TextEditingController();
  List<Book> books = [
    Book.fromMap({
      'title' : '윈도우 API 정복 1',
      'keyword' : '공학',
      'poster' : 'assets/bookcover.jpg'
    })
  ];
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  _SearchSreenState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  /*Widget _buildBody(BuildContext context){
    return StreamBuilder<QuerySnapshot>(stream: Firestore.in,)
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('검색')),
      body: Container(
          child: Column(
            children: <Widget>[
              Container(
                /*color: Colors.black12,*/
                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: TextField(
                        focusNode: focusNode,
                        style: TextStyle(fontSize: 15),
                        autofocus: true,
                        controller: _filter,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF2F3F5),
                          prefixIcon:
                              Icon(Icons.search, color: Colors.black26, size: 20),
                          suffixIcon: focusNode.hasFocus
                              ? IconButton(
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.black26,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _filter.clear();
                                      _searchText = "";
                                    });
                                  },
                                )
                              : Container(),
                          hintText: '검색',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    focusNode.hasFocus
                        ? Expanded(
                            child: TextButton(
                              child: Text('취소', style: TextStyle(color: Colors.black54),),
                              onPressed: () {
                                setState(() {
                                  _filter.clear();
                                  _searchText = "";
                                  focusNode.unfocus();
                                });
                              },
                            ),
                          )
                        : Expanded(
                            flex: 0,
                            child: Container(),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
