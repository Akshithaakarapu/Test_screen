// To parse this JSON data, do
//
//     final testing = testingFromJson(jsonString);

import 'dart:convert';

Testing testingFromJson(String str) => Testing.fromJson(json.decode(str));

String testingToJson(Testing data) => json.encode(data.toJson());

class Testing {
    Testing({
        this.count,
        this.entries,
    });

    int? count;
    List<Entry>? entries;

    factory Testing.fromJson(Map<String, dynamic> json) => Testing(
        count: json["count"] == null ? null : json["count"],
        entries: json["entries"] == null ? null : List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count == null ? null : count,
        "entries": entries == null ? null : List<dynamic>.from(entries!.map((x) => x.toJson())),
    };
}

class Entry {
    Entry({
        this.api,
        this.description,
        this.auth,
        this.https,
        this.cors,
        this.link,
        this.category,
    });

    String? api;
    String? description;
    String? auth;
    bool? https;
    String? cors;
    String? link;
    String? category;

    factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        api: json["API"] == null ? null : json["API"],
        description: json["Description"] == null ? null : json["Description"],
        auth: json["Auth"] == null ? null : json["Auth"],
        https: json["HTTPS"] == null ? null : json["HTTPS"],
        cors: json["Cors"] == null ? null : json["Cors"],
        link: json["Link"] == null ? null : json["Link"],
        category: json["Category"] == null ? null : json["Category"],
    );

    Map<String, dynamic> toJson() => {
        "API": api == null ? null : api,
        "Description": description == null ? null : description,
        "Auth": auth == null ? null :auth,
        "HTTPS": https == null ? null : https,
        "Cors": cors == null ? null :cors,
        "Link": link == null ? null : link,
        "Category": category == null ? null : category,
    };
}

//enum Auth { API_KEY, EMPTY, O_AUTH, X_MASHAPE_KEY, USER_AGENT }

// final authValues = EnumValues({
//     "apiKey": Auth.API_KEY,
//     "": Auth.EMPTY,
//     "OAuth": Auth.O_AUTH,
//     "User-Agent": Auth.USER_AGENT,
//     "X-Mashape-Key": Auth.X_MASHAPE_KEY
// });

// enum Cors { YES, NO, UNKNOWN, UNKOWN }

// final corsValues = EnumValues({
//     "no": Cors.NO,
//     "unknown": Cors.UNKNOWN,
//     "unkown": Cors.UNKOWN,
//     "yes": Cors.YES
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
