// To parse this JSON data, do
//
//     final jadwal = jadwalFromJson(jsonString);

import 'dart:convert';

Jadwal jadwalFromJson(String str) {
    final jsonData = json.decode(str);
    return Jadwal.fromJson(jsonData);
}

String jadwalToJson(Jadwal data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Jadwal {
    bool koneksi;
    String status;
    List<Datum> data;

    Jadwal({
        this.koneksi,
        this.status,
        this.data,
    });

    factory Jadwal.fromJson(Map<String, dynamic> json) => new Jadwal(
        koneksi: json["koneksi"],
        status: json["status"],
        data: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "koneksi": koneksi,
        "status": status,
        "data": new List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String id;
    String makul;
    String hari;
    String jam;
    String tempat;
    String rombel;
    String kodeHari;

    Datum({
        this.id,
        this.makul,
        this.hari,
        this.jam,
        this.tempat,
        this.rombel,
        this.kodeHari,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        makul: json["makul"],
        hari: json["hari"],
        jam: json["jam"],
        tempat: json["tempat"],
        rombel: json["rombel"],
        kodeHari: json["kode_hari"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "makul": makul,
        "hari": hari,
        "jam": jam,
        "tempat": tempat,
        "rombel": rombel,
        "kode_hari": kodeHari,
    };
}
