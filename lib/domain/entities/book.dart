import 'package:flutter_ddd_tdd/domain/value_object/author.dart';
import 'package:flutter_ddd_tdd/domain/value_object/identity.dart';
import 'package:flutter_ddd_tdd/domain/value_object/isbn.dart';
import 'package:flutter_ddd_tdd/domain/value_object/publish_date.dart';
import 'package:flutter_ddd_tdd/domain/value_object/title.dart';

//NOTE: No business logic / business rule, so we didnt make the test

class Book {
  Identity? id;
  Identity? shelfId;
  Title? title;
  Author? author;
  ISBN? isbn;
  PublishDate? publishDate;

  Book({
    this.id,
    this.shelfId,
    this.title,
    this.author,
    this.isbn,
    this.publishDate,
  });
}
