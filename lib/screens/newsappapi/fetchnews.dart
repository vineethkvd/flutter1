import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/newsarticlemodel.dart';

class FetchNews extends StatefulWidget {
  const FetchNews({Key? key}) : super(key: key);

  @override
  State<FetchNews> createState() => _FetchNewsState();
}

class _FetchNewsState extends State<FetchNews> {
  List<NewsArticle> newsArticles = []; // Updated variable name

  @override
  void initState() {
    super.initState();
    _fetchNewsSources();
  }
  Future<void> _fetchNewsSources() async {
    const String apiKey = '6842c385dc5e467eac91d810f147b54a';
    final Uri url = Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$apiKey');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final parsedData = json.decode(response.body);
        final articlesData = parsedData['articles'];

        final List<NewsArticle> articles = articlesData.map<NewsArticle>((article) {
          return NewsArticle(
            sourceName: article['source']['name'],
            author: article['author'],
            title: article['title'],
            description: article['description'],
            url: article['url'],
            imageUrl: article['urlToImage'],
            publishedAt: article['publishedAt'],
            content: article['content'],
          );
        }).toList();

        setState(() {
          newsArticles = articles; // Updated variable assignment
        });
      } else {
        throw Exception('Failed to load news sources');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Sources'),
      ),
      body: _buildNewsSourceList(),
    );
  }

  Widget _buildNewsSourceList() {
    if (newsArticles.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return ListView.builder(
        itemCount: newsArticles.length,
        itemBuilder: (context, index) {
          final article = newsArticles[index];
          return Card(
            child: ListTile(
              leading: article.imageUrl != null
                  ? Image.network(article.imageUrl)
                  : SizedBox.shrink(),
              title: Text(article.title ?? 'Title not available'),
              subtitle: Text(article.description ?? 'Description not available'),
              trailing: Text(article.sourceName ?? 'Source not available'),
            ),
          );
        },
      );
    }
  }
}