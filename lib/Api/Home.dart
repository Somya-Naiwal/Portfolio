import 'dart:convert';
import 'Model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SamplePost> samplePost = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SamplePost>>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: samplePost.length,
            itemBuilder: (context, index) {
              return Container(
                padding:const EdgeInsets.only(left: 10),
                margin:const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: MediaQuery.of(context).size.height*0.2,
                color:  Colors.teal[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    Text(
                      'Id :  ${samplePost[index].id}',
                      style:const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      'User Id : ${samplePost[index].userId}',
                      style:const TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text('Title :  ${samplePost[index].title}',
                     maxLines: 1,style:const TextStyle(color: Colors.black,fontSize: 18),
                     ),
                    Text('Body:  ${samplePost[index].body}',
                      maxLines: 2,style:const TextStyle(color: Colors.black,fontSize: 18),
                     ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<SamplePost>> getData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body) as List<dynamic>;

      samplePost = jsonData.map((item) => SamplePost.fromJson(item)).toList();

      return samplePost;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
