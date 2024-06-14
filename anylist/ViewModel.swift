//
//  tipos.swift
//  anylist
//
//  Created by Turma01-9 on 14/06/24.
//

import Foundation

struct API : Decodable {
    var data : [Anime]
}

struct Iurl : Decodable, Hashable{
    var image_url : String
}
struct Animage : Decodable, Hashable{
    var jpg : Iurl
}
struct Anime : Decodable, Hashable{
    var mal_id : Int
    var title : String
    var episodes : Int
    var score : Double
    var images : Animage
}
//{
//  "pagination": {
//    "last_visible_page": 1093,
//    "has_next_page": true,
//    "current_page": 1,
//    "items": {
//      "count": 25,
//      "total": 27307,
//      "per_page": 25
//    }
//  },
//  "data": [
//    {
//      "mal_id": 52991,
//      "url": "https://myanimelist.net/anime/52991/Sousou_no_Frieren",
//      "images": {
//        "jpg": {
//          "image_url": "https://cdn.myanimelist.net/images/anime/1015/138006.jpg",
//          "small_image_url": "https://cdn.myanimelist.net/images/anime/1015/138006t.jpg",
//          "large_image_url": "https://cdn.myanimelist.net/images/anime/1015/138006l.jpg"
//        },
//        "webp": {
//          "image_url": "https://cdn.myanimelist.net/images/anime/1015/138006.webp",
//          "small_image_url": "https://cdn.myanimelist.net/images/anime/1015/138006t.webp",
//          "large_image_url": "https://cdn.myanimelist.net/images/anime/1015/138006l.webp"
//        }
//      },
//      "trailer": {
//        "youtube_id": "ZEkwCGJ3o7M",
//        "url": "https://www.youtube.com/watch?v=ZEkwCGJ3o7M",
//        "embed_url": "https://www.youtube.com/embed/ZEkwCGJ3o7M?enablejsapi=1&wmode=opaque&autoplay=1",
//        "images": {
//          "image_url": "https://img.youtube.com/vi/ZEkwCGJ3o7M/default.jpg",
//          "small_image_url": "https://img.youtube.com/vi/ZEkwCGJ3o7M/sddefault.jpg",
//          "medium_image_url": "https://img.youtube.com/vi/ZEkwCGJ3o7M/mqdefault.jpg",
//          "large_image_url": "https://img.youtube.com/vi/ZEkwCGJ3o7M/hqdefault.jpg",
//          "maximum_image_url": "https://img.youtube.com/vi/ZEkwCGJ3o7M/maxresdefault.jpg"
//        }



