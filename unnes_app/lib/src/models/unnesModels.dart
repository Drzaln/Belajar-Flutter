// To parse this JSON data, do
//
//     final unnes = unnesFromJson(jsonString);

import 'dart:convert';

List<Unnes> unnesFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<Unnes>.from(jsonData.map((x) => Unnes.fromJson(x)));
}

String unnesToJson(List<Unnes> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
}

class Unnes {
    String id;
    String dari;
    String judul;
    String pesan;
    String date;

    Unnes({
        this.id,
        this.dari,
        this.judul,
        this.pesan,
        this.date,
    });

    factory Unnes.fromJson(Map<String, dynamic> json) => new Unnes(
        id: json["id"],
        dari: json["dari"],
        judul: json["judul"],
        pesan: json["pesan"],
        date: json["date"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "dari": dari,
        "judul": judul,
        "pesan": pesan,
        "date": date,
    };
}
