// To parse this JSON data, do
//
//     final ChallangeModel = ChallangeModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ChallangeModel ChallangeModelFromJson(String str) =>
    ChallangeModel.fromJson(json.decode(str));

String ChallangeModelToJson(ChallangeModel data) => json.encode(data.toJson());

class ChallangeModel {
  int page;
  dynamic nextPage;
  dynamic nextPageLink;
  dynamic previousPage;
  dynamic previousPageLink;
  int count;
  int maxPages;
  int totalCount;
  List<ChallangeData> data;

  ChallangeModel({
    required this.page,
    required this.nextPage,
    required this.nextPageLink,
    required this.previousPage,
    required this.previousPageLink,
    required this.count,
    required this.maxPages,
    required this.totalCount,
    required this.data,
  });

  factory ChallangeModel.fromJson(Map<String, dynamic> json) => ChallangeModel(
        page: json["page"],
        nextPage: json["next_page"],
        nextPageLink: json["next_page_link"],
        previousPage: json["previous_page"],
        previousPageLink: json["previous_page_link"],
        count: json["count"],
        maxPages: json["max_pages"],
        totalCount: json["total_count"],
        data: List<ChallangeData>.from(
            json["data"].map((x) => ChallangeData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "next_page": nextPage,
        "next_page_link": nextPageLink,
        "previous_page": previousPage,
        "previous_page_link": previousPageLink,
        "count": count,
        "max_pages": maxPages,
        "total_count": totalCount,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ChallangeData {
  int id;
  String workshopType;
  Type type;
  List<WorkshopExpert> workshopExperts;
  DateTime created;
  DateTime modified;
  bool deleted;
  String description;
  int index;
  String title;
  String metaTitle;
  String metaDescription;
  String ogTitle;
  String ogDescription;
  dynamic ogImage;
  DateTime startDateTime;
  DateTime endDateTime;
  bool isDateOnly;
  String slug;
  String file;
  String aboutWorkshop;
  int enrolments;
  bool freeTrial;
  int seats;
  bool isUnlimitedSeats;
  bool isActive;
  int viewCount;
  bool isFirstChapterFree;
  int sellingPrice;
  int mrp;
  int discount;
  bool showWorkshopcovers;
  int sellingPriceUsd;
  int mrpUsd;
  int discountForUsd;
  String liveWorkshopUrl;
  String whatsappGroupUrl;
  String recordedSessionUrl;
  dynamic ebook;
  String purchaseCode;
  dynamic workshopBatch;
  int intendedAudience;
  int category;
  List<int> whyThisWorks;
  List<int> tags;
  List<int> audience;
  List<int> categories;
  List<int> whatYouLearn;

  ChallangeData({
    required this.id,
    required this.workshopType,
    required this.type,
    required this.workshopExperts,
    required this.created,
    required this.modified,
    required this.deleted,
    required this.description,
    required this.index,
    required this.title,
    required this.metaTitle,
    required this.metaDescription,
    required this.ogTitle,
    required this.ogDescription,
    required this.ogImage,
    required this.startDateTime,
    required this.endDateTime,
    required this.isDateOnly,
    required this.slug,
    required this.file,
    required this.aboutWorkshop,
    required this.enrolments,
    required this.freeTrial,
    required this.seats,
    required this.isUnlimitedSeats,
    required this.isActive,
    required this.viewCount,
    required this.isFirstChapterFree,
    required this.sellingPrice,
    required this.mrp,
    required this.discount,
    required this.showWorkshopcovers,
    required this.sellingPriceUsd,
    required this.mrpUsd,
    required this.discountForUsd,
    required this.liveWorkshopUrl,
    required this.whatsappGroupUrl,
    required this.recordedSessionUrl,
    required this.ebook,
    required this.purchaseCode,
    required this.workshopBatch,
    required this.intendedAudience,
    required this.category,
    required this.whyThisWorks,
    required this.tags,
    required this.audience,
    required this.categories,
    required this.whatYouLearn,
  });

  factory ChallangeData.fromJson(Map<String, dynamic> json) => ChallangeData(
        id: json["id"],
        workshopType: json["workshop_type"],
        type: Type.fromJson(json["type"]),
        workshopExperts: List<WorkshopExpert>.from(
            json["workshop_experts"].map((x) => WorkshopExpert.fromJson(x))),
        created: DateTime.parse(json["created"]),
        modified: DateTime.parse(json["modified"]),
        deleted: json["deleted"],
        description: json["description"],
        index: json["index"],
        title: json["title"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        ogTitle: json["og_title"],
        ogDescription: json["og_description"],
        ogImage: json["og_image"],
        startDateTime: DateTime.parse(json["start_date_time"]),
        endDateTime: DateTime.parse(json["end_date_time"]),
        isDateOnly: json["is_date_only"],
        slug: json["slug"],
        file: json["file"],
        aboutWorkshop: json["about_workshop"],
        enrolments: json["enrolments"],
        freeTrial: json["free_trial"],
        seats: json["seats"],
        isUnlimitedSeats: json["is_unlimited_seats"],
        isActive: json["is_active"],
        viewCount: json["view_count"],
        isFirstChapterFree: json["is_first_chapter_free"],
        sellingPrice: json["selling_price"],
        mrp: json["mrp"],
        discount: json["discount"],
        showWorkshopcovers: json["show_workshopcovers"],
        sellingPriceUsd: json["selling_price_usd"],
        mrpUsd: json["mrp_usd"],
        discountForUsd: json["discount_for_usd"],
        liveWorkshopUrl: json["live_workshop_url"],
        whatsappGroupUrl: json["whatsapp_group_url"],
        recordedSessionUrl: json["recorded_session_url"],
        ebook: json["ebook"],
        purchaseCode: json["purchase_code"],
        workshopBatch: json["workshop_batch"],
        intendedAudience: json["intended_audience"],
        category: json["category"],
        whyThisWorks: List<int>.from(json["why_this_works"].map((x) => x)),
        tags: List<int>.from(json["tags"].map((x) => x)),
        audience: List<int>.from(json["audience"].map((x) => x)),
        categories: List<int>.from(json["categories"].map((x) => x)),
        whatYouLearn: List<int>.from(json["what_you_learn"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "workshop_type": workshopType,
        "type": type.toJson(),
        "workshop_experts":
            List<dynamic>.from(workshopExperts.map((x) => x.toJson())),
        "created": created.toIso8601String(),
        "modified": modified.toIso8601String(),
        "deleted": deleted,
        "description": description,
        "index": index,
        "title": title,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "og_title": ogTitle,
        "og_description": ogDescription,
        "og_image": ogImage,
        "start_date_time": startDateTime.toIso8601String(),
        "end_date_time": endDateTime.toIso8601String(),
        "is_date_only": isDateOnly,
        "slug": slug,
        "file": file,
        "about_workshop": aboutWorkshop,
        "enrolments": enrolments,
        "free_trial": freeTrial,
        "seats": seats,
        "is_unlimited_seats": isUnlimitedSeats,
        "is_active": isActive,
        "view_count": viewCount,
        "is_first_chapter_free": isFirstChapterFree,
        "selling_price": sellingPrice,
        "mrp": mrp,
        "discount": discount,
        "show_workshopcovers": showWorkshopcovers,
        "selling_price_usd": sellingPriceUsd,
        "mrp_usd": mrpUsd,
        "discount_for_usd": discountForUsd,
        "live_workshop_url": liveWorkshopUrl,
        "whatsapp_group_url": whatsappGroupUrl,
        "recorded_session_url": recordedSessionUrl,
        "ebook": ebook,
        "purchase_code": purchaseCode,
        "workshop_batch": workshopBatch,
        "intended_audience": intendedAudience,
        "category": category,
        "why_this_works": List<dynamic>.from(whyThisWorks.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "audience": List<dynamic>.from(audience.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "what_you_learn": List<dynamic>.from(whatYouLearn.map((x) => x)),
      };
}

class Type {
  int id;
  String title;

  Type({
    required this.id,
    required this.title,
  });

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

class WorkshopExpert {
  int id;
  String firstName;
  String lastName;
  DateTime created;
  DateTime modified;
  bool deleted;
  String slug;
  String title;
  dynamic metaTitle;
  String metaDescription;
  dynamic ogTitle;
  String ogDescription;
  dynamic ogImage;
  String image;
  String nickname;
  String city;
  dynamic dateOfBirth;
  dynamic dateOfAnniversary;
  String about;
  dynamic facebook;
  dynamic linkedin;
  String instagram;
  dynamic threads;
  dynamic telegram;
  dynamic x;
  dynamic link;
  String workshopTagline;
  String specialistTagline;
  String aboutSessionOffered;
  bool visible;
  int viewCount;
  int oneOnOneExpert;
  int onDemandExpert;
  int liveExpert;
  int oneOnOneMyburgo;
  int onDemandMyburgo;
  int liveMyburgo;
  bool googleCalendarSync;
  bool hasGst;
  int user;
  int heroWorkshop;
  List<int> category;
  List<int> expertType;
  List<int> skills;
  List<int> speciality;
  List<dynamic> langugaes;

  WorkshopExpert({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.created,
    required this.modified,
    required this.deleted,
    required this.slug,
    required this.title,
    required this.metaTitle,
    required this.metaDescription,
    required this.ogTitle,
    required this.ogDescription,
    required this.ogImage,
    required this.image,
    required this.nickname,
    required this.city,
    required this.dateOfBirth,
    required this.dateOfAnniversary,
    required this.about,
    required this.facebook,
    required this.linkedin,
    required this.instagram,
    required this.threads,
    required this.telegram,
    required this.x,
    required this.link,
    required this.workshopTagline,
    required this.specialistTagline,
    required this.aboutSessionOffered,
    required this.visible,
    required this.viewCount,
    required this.oneOnOneExpert,
    required this.onDemandExpert,
    required this.liveExpert,
    required this.oneOnOneMyburgo,
    required this.onDemandMyburgo,
    required this.liveMyburgo,
    required this.googleCalendarSync,
    required this.hasGst,
    required this.user,
    required this.heroWorkshop,
    required this.category,
    required this.expertType,
    required this.skills,
    required this.speciality,
    required this.langugaes,
  });

  factory WorkshopExpert.fromJson(Map<String, dynamic> json) => WorkshopExpert(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        created: DateTime.parse(json["created"]),
        modified: DateTime.parse(json["modified"]),
        deleted: json["deleted"],
        slug: json["slug"],
        title: json["title"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        ogTitle: json["og_title"],
        ogDescription: json["og_description"],
        ogImage: json["og_image"],
        image: json["image"],
        nickname: json["nickname"],
        city: json["city"],
        dateOfBirth: json["date_of_birth"],
        dateOfAnniversary: json["date_of_anniversary"],
        about: json["about"],
        facebook: json["facebook"],
        linkedin: json["linkedin"],
        instagram: json["instagram"],
        threads: json["threads"],
        telegram: json["telegram"],
        x: json["x"],
        link: json["link"],
        workshopTagline: json["workshop_tagline"],
        specialistTagline: json["specialist_tagline"],
        aboutSessionOffered: json["about_session_offered"],
        visible: json["visible"],
        viewCount: json["view_count"],
        oneOnOneExpert: json["one_on_one_expert"],
        onDemandExpert: json["on_demand_expert"],
        liveExpert: json["live_expert"],
        oneOnOneMyburgo: json["one_on_one_myburgo"],
        onDemandMyburgo: json["on_demand_myburgo"],
        liveMyburgo: json["live_myburgo"],
        googleCalendarSync: json["google_calendar_sync"],
        hasGst: json["has_gst"],
        user: json["user"],
        heroWorkshop: json["hero_workshop"],
        category: List<int>.from(json["category"].map((x) => x)),
        expertType: List<int>.from(json["expert_type"].map((x) => x)),
        skills: List<int>.from(json["skills"].map((x) => x)),
        speciality: List<int>.from(json["speciality"].map((x) => x)),
        langugaes: List<dynamic>.from(json["langugaes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "created": created.toIso8601String(),
        "modified": modified.toIso8601String(),
        "deleted": deleted,
        "slug": slug,
        "title": title,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "og_title": ogTitle,
        "og_description": ogDescription,
        "og_image": ogImage,
        "image": image,
        "nickname": nickname,
        "city": city,
        "date_of_birth": dateOfBirth,
        "date_of_anniversary": dateOfAnniversary,
        "about": about,
        "facebook": facebook,
        "linkedin": linkedin,
        "instagram": instagram,
        "threads": threads,
        "telegram": telegram,
        "x": x,
        "link": link,
        "workshop_tagline": workshopTagline,
        "specialist_tagline": specialistTagline,
        "about_session_offered": aboutSessionOffered,
        "visible": visible,
        "view_count": viewCount,
        "one_on_one_expert": oneOnOneExpert,
        "on_demand_expert": onDemandExpert,
        "live_expert": liveExpert,
        "one_on_one_myburgo": oneOnOneMyburgo,
        "on_demand_myburgo": onDemandMyburgo,
        "live_myburgo": liveMyburgo,
        "google_calendar_sync": googleCalendarSync,
        "has_gst": hasGst,
        "user": user,
        "hero_workshop": heroWorkshop,
        "category": List<dynamic>.from(category.map((x) => x)),
        "expert_type": List<dynamic>.from(expertType.map((x) => x)),
        "skills": List<dynamic>.from(skills.map((x) => x)),
        "speciality": List<dynamic>.from(speciality.map((x) => x)),
        "langugaes": List<dynamic>.from(langugaes.map((x) => x)),
      };
}
