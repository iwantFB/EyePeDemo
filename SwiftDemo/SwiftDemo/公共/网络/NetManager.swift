let COMMOM_CONFIG = """


{
    "start_page_ad": {},
    "interaction_modal_ad": {},
    "dynamic_modal_ad": {},
    "native_video_ad": [],
    "start_page": {
        "image_url": "http://img.kaiyanapp.com/1cfadc77cd2fac519a5917993aa6045e.jpeg?imageMogr2/quality/90/format/jpg",
        "action_url": "",
        "version": "286"
    },
    "log": {
        "play_log": false,
        "version": "6"
    },
    "private_message_refresh": {
        "control_msg_detail": 5,
        "control_list": 30,
        "version": "1"
    },
    "baobab_preload_videos": {
        "list": [],
        "version": 0
    },
    "preload_videos": {
        "list": [],
        "version": "6c8d5f5cb641b641b11a99f97d309e95"
    },
    "preload_images": {
        "list": [],
        "version": "6c8d5f5cb641b641b11a99f97d309e95"
    },
    "login_options": [{
        "icon_url": "https://eyepetizer-videos.oss-cn-beijing.aliyuncs.com/config/icon/v2/wechat.png",
        "type": "wechat",
        "order": 1
    }, {
        "icon_url": "https://eyepetizer-videos.oss-cn-beijing.aliyuncs.com/config/icon/v2/weibo.png",
        "type": "weibo",
        "order": 2
    }, {
        "icon_url": "https://eyepetizer-videos.oss-cn-beijing.aliyuncs.com/config/icon/v2/qq.png",
        "type": "qq",
        "order": 3
    }],
    "preload": {
        "version": "1",
        "on": true
    },
    "campaign_in_detail": {
        "image_url": "http://img.wdjimg.com/image/video/0298fef9efdf0a7cd5bae14e601aef3e_0_0.png",
        "available": true,
        "action_url": "https://itunes.apple.com/app/apple-store/id978591579?pt=118114084&ct=yingyongfuceng&mt=8",
        "show_type": "today",
        "version": "9"
    },
    "campaign_in_feed": {
        "image_url": "http://img.wdjimg.com/image/video/cb286bc3b51f5051e7e26d545bdc7c6f_0_0.jpeg",
        "available": false,
        "action_url": "http://www.diaochapai.com/survey/81d23de9-583b-4c28-911b-6a9bd5fc6b3a",
        "version": "35"
    },
    "is_homepage_search_enabled": true,
    "reply": {
        "version": "1",
        "on": true
    },
    "auto_cache": {
        "force_off": true,
        "video_num": 10,
        "version": "8"
    },
    "issue_cover": {
        "issue_logo": {
            "weekend_extra": "http://img.kaiyanapp.com/dfb9fcff59545a9fe3fc03f72d4be513.png?imageMogr2/quality/60/format/jpg",
            "adapter": false
        },
        "version": "2"
    },
    "consumption": {
        "display": true,
        "version": "3"
    },
    "launch": {
        "version": "1219",
        "ad_track": []
    },
    "version": "175945",
    "push": {
        "start_time": 9,
        "end_time": 22,
        "message": "今天的日报已准备好，请享用！",
        "version": "18"
    },
    "roaming_calendar": {
        "image_url": "http://img.kaiyanapp.com/c61c6b201b6994f47d86e85489057579.png",
        "action_url": "eyepetizer://roamingCalendarDaily?date=2022-05-24&tagId=1139&tagName=wanderlust 漫游癖",
        "version": "11",
        "is_show": true
    },
    "first_launch": {
        "show_first_detail": false,
        "version": "1"
    },
    "share_title": {
        "weibo": "开眼 Eyepetizer",
        "wechat_moments": "开眼 Eyepetizer",
        "qzone": "开眼 Eyepetizer",
        "version": "3"
    },
    "interceptor_ad_out_action_url": {
        "control_switch": true,
        "version": "1"
    },
    "homepage": {
        "cover": "http://img.kaiyanapp.com/55483bf9c3c034e2963929dbbbd4d7fb.jpeg?imageMogr2/quality/60/format/jpg",
        "version": "63"
    }

}

"""

let HOME_GET_NAV = """

{
    "style": "nav",
    "nav_list": [{
        "page_label": "recommend",
        "page_type": "card",
        "title": "推荐",
        "url": "eyepetizer://page/mainpage?page_label=recommend&page_type=card",
        "default_display": true,
        "force_refresh": false,
        "api_request": {},
        "page_url": "selected",
        "page_url_parameter": "title=推荐",
        "is_recommend": true,
        "child_nav": {
            "fixed": [],
            "slide": []
        },
        "enable_preload": true,
        "preload_duration": 300,
        "tracking_data": {
            "show": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "推荐",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 0
                }
            }],
            "click": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "推荐",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 0,
                    "click_name": "查看详情",
                    "click_action": "REDIRECT",
                    "click_action_url": "eyepetizer://page/mainpage?page_label=recommend&page_type=card"
                }
            }]
        }
    }, {
        "page_label": "follow",
        "page_type": "card",
        "title": "关注",
        "url": "eyepetizer://page/mainpage?page_label=follow&page_type=card",
        "default_display": false,
        "force_refresh": false,
        "api_request": {},
        "page_url": "selected",
        "page_url_parameter": "title=关注",
        "is_recommend": false,
        "child_nav": {
            "fixed": [],
            "slide": []
        },
        "enable_preload": true,
        "preload_duration": 15,
        "tracking_data": {
            "show": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "关注",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 1
                }
            }],
            "click": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "关注",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 1,
                    "click_name": "查看详情",
                    "click_action": "REDIRECT",
                    "click_action_url": "eyepetizer://page/mainpage?page_label=follow&page_type=card"
                }
            }]
        }
    }, {
        "page_label": "daily_issue",
        "page_type": "card",
        "title": "日报",
        "url": "eyepetizer://page/mainpage?page_label=daily_issue&page_type=card",
        "default_display": false,
        "force_refresh": false,
        "api_request": {},
        "page_url": "selected",
        "page_url_parameter": "title=日报",
        "is_recommend": false,
        "child_nav": {
            "fixed": [],
            "slide": []
        },
        "enable_preload": true,
        "preload_duration": 300,
        "tracking_data": {
            "show": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "日报",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 2
                }
            }],
            "click": [{
                "sdk": "sensors",
                "data": {
                    "element_type": "nav",
                    "element_title": "日报",
                    "element_id": 0,
                    "element_label": "normal",
                    "relative_index": 2,
                    "click_name": "查看详情",
                    "click_action": "REDIRECT",
                    "click_action_url": "eyepetizer://page/mainpage?page_label=daily_issue&page_type=card"
                }
            }]
        }
    }],
    "nav_item": {
        "left": [{
            "type": "default",
            "label": "logo",
            "tracking_data": {
                "show": [{
                    "sdk": "sensors",
                    "data": {
                        "element_type": "nav_item",
                        "element_title": "logo",
                        "element_content": "",
                        "element_id": 0,
                        "element_label": "normal",
                        "relative_index": 0
                    }
                }],
                "click": [{
                    "sdk": "sensors",
                    "data": {
                        "element_type": "nav_item",
                        "element_title": "logo",
                        "element_content": "",
                        "element_id": 0,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": ""
                    }
                }]
            }
        }],
        "center": [],
        "right": [{
            "type": "default",
            "label": "notice",
            "link": "eyepetizer://notification2",
            "tracking_data": {
                "show": [{
                    "sdk": "sensors",
                    "data": {
                        "element_type": "nav_item",
                        "element_title": "notice",
                        "element_content": "",
                        "element_id": 0,
                        "element_label": "normal",
                        "relative_index": 0
                    }
                }],
                "click": [{
                    "sdk": "sensors",
                    "data": {
                        "element_type": "nav_item",
                        "element_title": "notice",
                        "element_content": "",
                        "element_id": 0,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": ""
                    }
                }]
            }
        }]
    }
}

"""


let HOME_PAGE_RECOMMEND = """

{
   "page_info": {
      "page_id": 2,
      "title": "推荐",
      "enable_share": false,
      "style": [],
      "page_label": "recommend",
      "tracking_data": {
         "show": [{
            "sdk": "sensors",
            "data": {
               "page_url": "selected",
               "page_url_parameter": "title=推荐"
            }
         }]
      },
      "base_link": "eyepetizer://page/mainpage?page_label=recommend&page_type=card",
      "show_the_end": true
   },
   "card_list": [{
      "card_id": 39,
      "type": "set_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 15,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "#3a000000",
               "margin": {
                  "top": 0,
                  "right": 15,
                  "bottom": 0,
                  "left": 15
               },
               "height": 0.5
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 209,
               "type": "video",
               "alias_name": "通栏日报",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 10,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 1
                     }
                  },
                  "across_column": true
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0,
                        "num": 11
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 39,
                        "card_index": 0,
                        "metro_id": 209,
                        "element_type": "pgc_video",
                        "element_title": "洛杉矶少女摇滚，成长有数不清的烦恼",
                        "element_id": 308856,
                        "element_index": 0,
                        "element_label": "normal",
                        "relative_index": 0,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2022-05-01 09:00:37",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308856%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 39,
                        "card_index": 0,
                        "metro_id": 209,
                        "element_type": "pgc_video",
                        "element_title": "洛杉矶少女摇滚，成长有数不清的烦恼",
                        "element_id": 308856,
                        "element_index": 0,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/308856",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2022-05-01 09:00:37",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 39,
                           "card_index": 0,
                           "metro_id": 209,
                           "element_type": "pgc_video",
                           "element_title": "洛杉矶少女摇滚，成长有数不清的烦恼",
                           "element_id": 308856,
                           "element_index": 0,
                           "element_label": "normal",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178694/?title=%E5%85%A8%E7%90%83%E9%9F%B3%E4%B9%90%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2022-05-01 09:00:37",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308856%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-j3qo373i4pv84fk15851ns6p04",
               "metro_data": {
                  "video_id": "308856",
                  "title": "洛杉矶少女摇滚，成长有数不清的烦恼",
                  "duration": {
                     "value": 240,
                     "text": "04:00"
                  },
                  "play_ctrl": {
                     "autoplay": true,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308856.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308856.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 音乐",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/477bb5143a1763376840817aa1cd5bb7.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301178694,
                     "nick": "全球音乐视频精选",
                     "description": "我们精选全球最酷炫、最有态度的音乐，一定能让你眼前一亮",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/9279c17b4da5ba5e7e4f21afb5bb0a74.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178694/?title=%E5%85%A8%E7%90%83%E9%9F%B3%E4%B9%90%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 308856,
                  "resource_type": "pgc_video",
                  "hot_value": 0,
                  "crop_area": {
                     "x": 0,
                     "y": 0,
                     "width": 1,
                     "height": 1,
                     "origin_width": 1280,
                     "origin_height": 720
                  }
               },
               "link": "eyepetizer://detail/308856"
            }, {
               "metro_id": 210,
               "type": "video",
               "alias_name": "大卡日报 - 1",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 0,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "across_column": false
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 39,
                        "card_index": 0,
                        "metro_id": 210,
                        "element_type": "pgc_video",
                        "element_title": "原创素描喜剧系列，约会时要把手机收起来",
                        "element_id": 53875,
                        "element_index": 1,
                        "element_label": "normal",
                        "relative_index": 1,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2022-04-30 09:00:24",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A53875%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 39,
                        "card_index": 0,
                        "metro_id": 210,
                        "element_type": "pgc_video",
                        "element_title": "原创素描喜剧系列，约会时要把手机收起来",
                        "element_id": 53875,
                        "element_index": 1,
                        "element_label": "normal",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/53875",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2022-04-30 09:00:24",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 39,
                           "card_index": 0,
                           "metro_id": 210,
                           "element_type": "pgc_video",
                           "element_title": "原创素描喜剧系列，约会时要把手机收起来",
                           "element_id": 53875,
                           "element_index": 1,
                           "element_label": "normal",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301117144/?title=CollegeHumor&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2022-04-30 09:00:24",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A53875%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-hi5ir3hn1of5se7u433om77qdv",
               "metro_data": {
                  "video_id": "53875",
                  "title": "原创素描喜剧系列，约会时要把手机收起来",
                  "duration": {
                     "value": 168,
                     "text": "02:48"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/53875.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/53875.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 搞笑",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/79dfb84f90dd427a1f422e6703926457.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301117144,
                     "nick": "CollegeHumor",
                     "description": "原创搞笑视频 CollegeHumor.com 博主。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/f1f1bd0ddd17b2163b63037c87b92c54.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301117144/?title=CollegeHumor&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 53875,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/53875"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 1,
      "allow_insert_above": 0,
      "tracking_data": {},
      "card_unique_id": "card-f3qqg1nbgj3ita1d29ok9qnage"
   }, {
      "card_id": 162,
      "type": "set_banner_list",
      "style": {
         "padding": {
            "top": 8,
            "right": 0,
            "bottom": 15,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "#3a000000",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0.5
            }
         }
      },
      "interaction": {
         "scroll": "h-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 5004,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2079,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "旅游照.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220531/73dc43d6578791a7f034adf7abdb3763.png",
                           "size": 2059100,
                           "date": "2022-05-31",
                           "info": {
                              "width": 1300,
                              "height": 738,
                              "scale": 1.7615176151761518
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5004,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5004,
                        "element_index": 2,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/73dc43d6578791a7f034adf7abdb3763.png",
                        "relative_index": 0,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5004,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5004,
                        "element_index": 2,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/73dc43d6578791a7f034adf7abdb3763.png",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://tag/1567?tabIndex=1",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 162,
                           "card_index": 1,
                           "metro_id": 5004,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5004,
                           "element_index": 2,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220531/73dc43d6578791a7f034adf7abdb3763.png",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-s7q5hsnnshvb724urp8cnrt75b",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220531/73dc43d6578791a7f034adf7abdb3763.png?x-oss-process=image/auto-orient,1/resize,w_1300/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2600,
                        "height": 1476,
                        "scale": 1.76
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://tag/1567?tabIndex=1"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://tag/1567?tabIndex=1"
            }, {
               "metro_id": 4844,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 1971,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "b-2.jpg",
                           "url": "https://static.thefair.net.cn/thefair_project/20220429/5b434cb67d540be55269a135e70aafe2.jpg",
                           "size": 539176,
                           "date": "2022-04-29",
                           "info": {
                              "width": 2984,
                              "height": 1730,
                              "scale": 1.7248554913294798
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 4844,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4844,
                        "element_index": 3,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220429/5b434cb67d540be55269a135e70aafe2.jpg",
                        "relative_index": 1,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 4844,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4844,
                        "element_index": 3,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220429/5b434cb67d540be55269a135e70aafe2.jpg",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC+%EF%BD%9C%E5%87%BA%E7%89%87%E4%B8%80%E3%80%8C%E5%A4%8F%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-988361828%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 162,
                           "card_index": 1,
                           "metro_id": 4844,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 4844,
                           "element_index": 3,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220429/5b434cb67d540be55269a135e70aafe2.jpg",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-lpd690msaika2ccdgjecu5p8o6",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220429/5b434cb67d540be55269a135e70aafe2.jpg?x-oss-process=image/auto-orient,1/resize,w_1920/format,jpg/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 5968,
                        "height": 3460,
                        "scale": 1.72
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC+%EF%BD%9C%E5%87%BA%E7%89%87%E4%B8%80%E3%80%8C%E5%A4%8F%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-988361828%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC+%EF%BD%9C%E5%87%BA%E7%89%87%E4%B8%80%E3%80%8C%E5%A4%8F%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-988361828%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5005,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2078,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "海滩.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220531/505576229a6e7f8b548474b2ebad7c92.png",
                           "size": 1460382,
                           "date": "2022-05-31",
                           "info": {
                              "width": 1442,
                              "height": 829,
                              "scale": 1.7394451145958987
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5005,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5005,
                        "element_index": 4,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/505576229a6e7f8b548474b2ebad7c92.png",
                        "relative_index": 2,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5005,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5005,
                        "element_index": 4,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/505576229a6e7f8b548474b2ebad7c92.png",
                        "relative_index": 2,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://tag/1423?tabIndex=1",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 162,
                           "card_index": 1,
                           "metro_id": 5005,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5005,
                           "element_index": 4,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220531/505576229a6e7f8b548474b2ebad7c92.png",
                           "relative_index": 2,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-t4aogu6bu5tvjbpmbqg4darkv2",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220531/505576229a6e7f8b548474b2ebad7c92.png?x-oss-process=image/auto-orient,1/resize,w_1442/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2884,
                        "height": 1658,
                        "scale": 1.74
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://tag/1423?tabIndex=1"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://tag/1423?tabIndex=1"
            }, {
               "metro_id": 5006,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2077,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "逛公园.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220531/8afc2d522f9f42331c07158e42cb8829.png",
                           "size": 1529825,
                           "date": "2022-05-31",
                           "info": {
                              "width": 1455,
                              "height": 829,
                              "scale": 1.7551266586248493
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5006,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5006,
                        "element_index": 5,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/8afc2d522f9f42331c07158e42cb8829.png",
                        "relative_index": 3,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 5006,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5006,
                        "element_index": 5,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/8afc2d522f9f42331c07158e42cb8829.png",
                        "relative_index": 3,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E4%B8%80%E8%B5%B7%E9%80%9B%E5%85%AC%E5%9B%AD&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-2455359688%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 162,
                           "card_index": 1,
                           "metro_id": 5006,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5006,
                           "element_index": 5,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220531/8afc2d522f9f42331c07158e42cb8829.png",
                           "relative_index": 3,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-vudgh1ekb81l0mbb8oj5g29bik",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220531/8afc2d522f9f42331c07158e42cb8829.png?x-oss-process=image/auto-orient,1/resize,w_1455/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2910,
                        "height": 1658,
                        "scale": 1.76
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E4%B8%80%E8%B5%B7%E9%80%9B%E5%85%AC%E5%9B%AD&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-2455359688%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E4%B8%80%E8%B5%B7%E9%80%9B%E5%85%AC%E5%9B%AD&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-2455359688%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 4845,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 1972,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "w-5.jpg",
                           "url": "https://static.thefair.net.cn/thefair_project/20220429/3fb7019a90076e51a997f8d552aaa14f.jpg",
                           "size": 601252,
                           "date": "2022-04-29",
                           "info": {
                              "width": 2738,
                              "height": 1560,
                              "scale": 1.755128205128205
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 4845,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4845,
                        "element_index": 6,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220429/3fb7019a90076e51a997f8d552aaa14f.jpg",
                        "relative_index": 4,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 162,
                        "card_index": 1,
                        "metro_id": 4845,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4845,
                        "element_index": 6,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220429/3fb7019a90076e51a997f8d552aaa14f.jpg",
                        "relative_index": 4,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E4%B8%80%E5%BC%A0%E7%85%A7%E7%89%87%EF%BC%8C%E5%88%86%E4%BA%AB%E4%BD%A0%E7%9A%84%E3%80%8C%E7%A0%B4%E6%A0%BC%E3%80%8D%E7%9E%AC%E9%97%B4&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3875900904%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 162,
                           "card_index": 1,
                           "metro_id": 4845,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 4845,
                           "element_index": 6,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220429/3fb7019a90076e51a997f8d552aaa14f.jpg",
                           "relative_index": 4,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-lp3opmh9goorvcepo8bq2pe8rd",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220429/3fb7019a90076e51a997f8d552aaa14f.jpg?x-oss-process=image/auto-orient,1/resize,w_1920/format,jpg/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 5476,
                        "height": 3120,
                        "scale": 1.76
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E4%B8%80%E5%BC%A0%E7%85%A7%E7%89%87%EF%BC%8C%E5%88%86%E4%BA%AB%E4%BD%A0%E7%9A%84%E3%80%8C%E7%A0%B4%E6%A0%BC%E3%80%8D%E7%9E%AC%E9%97%B4&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3875900904%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E4%B8%80%E5%BC%A0%E7%85%A7%E7%89%87%EF%BC%8C%E5%88%86%E4%BA%AB%E4%BD%A0%E7%9A%84%E3%80%8C%E7%A0%B4%E6%A0%BC%E3%80%8D%E7%9E%AC%E9%97%B4&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3875900904%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "tpl_multi_slide_banner_list",
      "special_pos": "",
      "allow_insert_card": 0,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-0gu0r740gmnl6t20nbkl1ca102"
   }, {
      "card_id": 154,
      "type": "set_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 0,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 706,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 10,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 15,
                           "bottom": 0,
                           "left": 15
                        },
                        "height": 0.5
                     }
                  },
                  "across_column": false
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 2,
                        "metro_id": 706,
                        "element_type": "pgc_video",
                        "element_title": "灵感从何而来？他们说出了自己的经验",
                        "element_id": 34080,
                        "element_index": 7,
                        "element_label": "normal",
                        "relative_index": 0,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-07-13 09:00:01",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A34080%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 2,
                        "metro_id": 706,
                        "element_type": "pgc_video",
                        "element_title": "灵感从何而来？他们说出了自己的经验",
                        "element_id": 34080,
                        "element_index": 7,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/34080",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-07-13 09:00:01",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 154,
                           "card_index": 2,
                           "metro_id": 706,
                           "element_type": "pgc_video",
                           "element_title": "灵感从何而来？他们说出了自己的经验",
                           "element_id": 34080,
                           "element_index": 7,
                           "element_label": "normal",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178696/?title=%E5%85%A8%E7%90%83%E5%88%9B%E6%84%8F%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2017-07-13 09:00:01",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A34080%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-ab0nvlq52l1fhitvlpes96l4rb",
               "metro_data": {
                  "video_id": "34080",
                  "title": "灵感从何而来？他们说出了自己的经验",
                  "duration": {
                     "value": 332,
                     "text": "05:32"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/34080.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/34080.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 创意",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/009f10edf47398216618fe9ff16584ce.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301178696,
                     "nick": "全球创意视频精选",
                     "description": "我们精选最有创意的视频，我们用技术与审美结合，探索视觉的无限可能。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/f4a9aba1c6857ee0cefcdc5aee0a1fc9.png?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/png",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178696/?title=%E5%85%A8%E7%90%83%E5%88%9B%E6%84%8F%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 34080,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/34080"
            }, {
               "metro_id": 707,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 23,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "#3a000000",
                        "margin": {
                           "top": 0,
                           "right": 15,
                           "bottom": 0,
                           "left": 15
                        },
                        "height": 0.5
                     }
                  },
                  "across_column": false
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 2,
                        "metro_id": 707,
                        "element_type": "pgc_video",
                        "element_title": "6 到犯规！牛人弹奏「无弦贝斯」",
                        "element_id": 92875,
                        "element_index": 8,
                        "element_label": "normal",
                        "relative_index": 1,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2018-03-25 09:00:02",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A92875%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 2,
                        "metro_id": 707,
                        "element_type": "pgc_video",
                        "element_title": "6 到犯规！牛人弹奏「无弦贝斯」",
                        "element_id": 92875,
                        "element_index": 8,
                        "element_label": "normal",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/92875",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2018-03-25 09:00:02",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 154,
                           "card_index": 2,
                           "metro_id": 707,
                           "element_type": "pgc_video",
                           "element_title": "6 到犯规！牛人弹奏「无弦贝斯」",
                           "element_id": 92875,
                           "element_index": 8,
                           "element_label": "normal",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178694/?title=%E5%85%A8%E7%90%83%E9%9F%B3%E4%B9%90%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2018-03-25 09:00:02",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A92875%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-v57amk1b9ee97qa9fiue4kg4t5",
               "metro_data": {
                  "video_id": "92875",
                  "title": "6 到犯规！牛人弹奏「无弦贝斯」",
                  "duration": {
                     "value": 166,
                     "text": "02:46"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/92875.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/92875.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 音乐",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/285776b878e1da59adc43ed5063c1d9a.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301178694,
                     "nick": "全球音乐视频精选",
                     "description": "我们精选全球最酷炫、最有态度的音乐，一定能让你眼前一亮",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/9279c17b4da5ba5e7e4f21afb5bb0a74.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178694/?title=%E5%85%A8%E7%90%83%E9%9F%B3%E4%B9%90%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 92875,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/92875"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 1,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-o17d2s5r9ke0bag5ce70j36ml5"
   }, {
      "card_id": 1185,
      "type": "set_banner_list",
      "style": {
         "padding": {
            "top": 8,
            "right": 0,
            "bottom": 15,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "#3a000000",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0.5
            }
         }
      },
      "interaction": {
         "scroll": "h-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 4925,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2037,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "b.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220516/ebdbc31ade5a1d359ef70a1dc9e68368.png",
                           "size": 1276590,
                           "date": "2022-05-16",
                           "info": {
                              "width": 1380,
                              "height": 800,
                              "scale": 1.725
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 1185,
                        "card_index": 3,
                        "metro_id": 4925,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4925,
                        "element_index": 9,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220516/ebdbc31ade5a1d359ef70a1dc9e68368.png",
                        "relative_index": 0,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 1185,
                        "card_index": 3,
                        "metro_id": 4925,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 4925,
                        "element_index": 9,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220516/ebdbc31ade5a1d359ef70a1dc9e68368.png",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://lightTopic/detail/690?title=%E9%9F%A9%E5%9B%BD%E6%8B%8D%E4%B8%AA%E5%B9%BF%E5%91%8A%E6%80%8E%E4%B9%88%E9%83%BD%E8%83%BD%E6%9C%89%E9%9F%A9%E5%89%A7%E5%91%B3%E5%84%BF%EF%BC%81",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 1185,
                           "card_index": 3,
                           "metro_id": 4925,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 4925,
                           "element_index": 9,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220516/ebdbc31ade5a1d359ef70a1dc9e68368.png",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-co1qqua1lam7ngsbht0rhhjfi7",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220516/ebdbc31ade5a1d359ef70a1dc9e68368.png?x-oss-process=image/auto-orient,1/resize,w_1380/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2760,
                        "height": 1600,
                        "scale": 1.73
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://lightTopic/detail/690?title=%E9%9F%A9%E5%9B%BD%E6%8B%8D%E4%B8%AA%E5%B9%BF%E5%91%8A%E6%80%8E%E4%B9%88%E9%83%BD%E8%83%BD%E6%9C%89%E9%9F%A9%E5%89%A7%E5%91%B3%E5%84%BF%EF%BC%81"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://lightTopic/detail/690?title=%E9%9F%A9%E5%9B%BD%E6%8B%8D%E4%B8%AA%E5%B9%BF%E5%91%8A%E6%80%8E%E4%B9%88%E9%83%BD%E8%83%BD%E6%9C%89%E9%9F%A9%E5%89%A7%E5%91%B3%E5%84%BF%EF%BC%81"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "tpl_single_slide_banner_list",
      "special_pos": "154_2",
      "allow_insert_card": 0,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-ec5hio8n0q2b5b83tjc5pvhjbi"
   }, {
      "card_id": 154,
      "type": "set_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 0,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 708,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 10,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 15,
                           "bottom": 0,
                           "left": 15
                        },
                        "height": 0.5
                     }
                  },
                  "across_column": false
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 4,
                        "metro_id": 708,
                        "element_type": "pgc_video",
                        "element_title": "鸟瞰纽约布鲁克林区",
                        "element_id": 37537,
                        "element_index": 10,
                        "element_label": "normal",
                        "relative_index": 0,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-07-26 09:00:00",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A37537%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 4,
                        "metro_id": 708,
                        "element_type": "pgc_video",
                        "element_title": "鸟瞰纽约布鲁克林区",
                        "element_id": 37537,
                        "element_index": 10,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/37537",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-07-26 09:00:00",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 154,
                           "card_index": 4,
                           "metro_id": 708,
                           "element_type": "pgc_video",
                           "element_title": "鸟瞰纽约布鲁克林区",
                           "element_id": 37537,
                           "element_index": 10,
                           "element_label": "normal",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178693/?title=%E5%BC%80%E7%9C%BC%E6%97%85%E8%A1%8C%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2017-07-26 09:00:00",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A37537%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-p6a90ae5hch8lbbp6gu5qdc8dj",
               "metro_data": {
                  "video_id": "37537",
                  "title": "鸟瞰纽约布鲁克林区",
                  "duration": {
                     "value": 223,
                     "text": "03:43"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/37537.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/37537.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 旅行",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/9096b757623f02836134c674ae405a9c.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301178693,
                     "nick": "开眼旅行精选",
                     "description": "发现世界的奇妙和辽阔",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/75bc791c5f6cc239d6056e0a52d077fd.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178693/?title=%E5%BC%80%E7%9C%BC%E6%97%85%E8%A1%8C%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 37537,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/37537"
            }, {
               "metro_id": 709,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_large_video",
                  "padding": {
                     "top": 0,
                     "right": 0,
                     "bottom": 23,
                     "left": 0
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "#3a000000",
                        "margin": {
                           "top": 0,
                           "right": 15,
                           "bottom": 0,
                           "left": 15
                        },
                        "height": 0.5
                     }
                  },
                  "across_column": false
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 4,
                        "metro_id": 709,
                        "element_type": "pgc_video",
                        "element_title": "安卓最新广告： Monotune 单音调",
                        "element_id": 5416,
                        "element_index": 11,
                        "element_label": "normal",
                        "relative_index": 1,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-02-19 00:00:00",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A5416%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 154,
                        "card_index": 4,
                        "metro_id": 709,
                        "element_type": "pgc_video",
                        "element_title": "安卓最新广告： Monotune 单音调",
                        "element_id": 5416,
                        "element_index": 11,
                        "element_label": "normal",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/5416",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-02-19 00:00:00",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 154,
                           "card_index": 4,
                           "metro_id": 709,
                           "element_type": "pgc_video",
                           "element_title": "安卓最新广告： Monotune 单音调",
                           "element_id": 5416,
                           "element_index": 11,
                           "element_label": "normal",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2016-02-19 00:00:00",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A5416%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-0of9v93dn28rqfvgae90eenn9a",
               "metro_data": {
                  "video_id": "5416",
                  "title": "安卓最新广告： Monotune 单音调",
                  "duration": {
                     "value": 74,
                     "text": "01:14"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/5416.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/5416.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/f42deba831b5ca1b0b617e00612fa6ae.jpeg?imageMogr2/auto-orient/thumbnail/1242x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 1242,
                        "height": 720,
                        "scale": 1.73
                     }
                  },
                  "author": {
                     "uid": 301178695,
                     "nick": "全球广告精选",
                     "description": "我们精选世界最好看的广告，为全世界广告人的精彩创意点赞。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/98beab66d3885a139b54f21e91817c4f.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 5416,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/5416"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 1,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-qq4k1tf5ee1o5ltut2647uj9ff"
   }, {
      "card_id": 397,
      "type": "set_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 0,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 2733,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2733,
                        "element_type": "pgc_video",
                        "element_title": "企鹅爱测评：线下测评特辑",
                        "element_id": 11690,
                        "element_index": 12,
                        "element_label": "normal",
                        "relative_index": 0,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-12-15 16:43:08",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A11690%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2733,
                        "element_type": "pgc_video",
                        "element_title": "企鹅爱测评：线下测评特辑",
                        "element_id": 11690,
                        "element_index": 12,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/11690",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-12-15 16:43:08",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 5,
                           "metro_id": 2733,
                           "element_type": "pgc_video",
                           "element_title": "企鹅爱测评：线下测评特辑",
                           "element_id": 11690,
                           "element_index": 12,
                           "element_label": "normal",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301039471/?title=%E4%BC%81%E9%B9%85%E5%90%83%E5%96%9D%E6%8C%87%E5%8D%97&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2016-12-15 16:43:08",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A11690%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-fl1kmh5peo50vu532pj3ucs4m1",
               "metro_data": {
                  "video_id": "11690",
                  "title": "企鹅爱测评：线下测评特辑",
                  "duration": {
                     "value": 224,
                     "text": "03:44"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/11690.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/11690.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 开胃",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/3154b612eaf86aff99c8c09f95bb9dcb.jpeg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301039471,
                     "nick": "企鹅吃喝指南",
                     "description": "你身边最懂吃喝的好朋友",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/c2e2a3647e1d62a7f383f9ab25d08f8d.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301039471/?title=%E4%BC%81%E9%B9%85%E5%90%83%E5%96%9D%E6%8C%87%E5%8D%97&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 11690,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/11690"
            }, {
               "metro_id": 2734,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "top_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2734,
                        "element_type": "pgc_video",
                        "element_title": "为什么只有1%的日本酱油是用这种方法制作的？",
                        "element_id": 309863,
                        "element_index": 13,
                        "element_label": "normal",
                        "relative_index": 1,
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:25",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309863%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2734,
                        "element_type": "pgc_video",
                        "element_title": "为什么只有1%的日本酱油是用这种方法制作的？",
                        "element_id": 309863,
                        "element_index": 13,
                        "element_label": "normal",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309863",
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:25",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 5,
                           "metro_id": 2734,
                           "element_type": "pgc_video",
                           "element_title": "为什么只有1%的日本酱油是用这种方法制作的？",
                           "element_id": 309863,
                           "element_index": 13,
                           "element_label": "normal",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/302387579/?title=BusinessInsider%E5%95%86%E4%B8%9A%E5%86%85%E5%B9%95&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "ops-tag",
                           "dev_release_time": "2022-05-29 00:00:25",
                           "dev_data_source": "top_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309863%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-88981kg02l3hc92at3qqoii70f",
               "metro_data": {
                  "video_id": "309863",
                  "title": "为什么只有1%的日本酱油是用这种方法制作的？",
                  "duration": {
                     "value": 482,
                     "text": "08:02"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309863.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309863.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 记录",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/6b5703677d373e37d4f50132f0e3cd67.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 302387579,
                     "nick": "Business Insider 商业内幕",
                     "description": "来自科技，金融，零售等等行业内部的出色报道。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/a9d793e540f55d65e89dc998516671a6.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/302387579/?title=BusinessInsider%E5%95%86%E4%B8%9A%E5%86%85%E5%B9%95&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309863,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309863"
            }, {
               "metro_id": 2735,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "weekly_monthly_top_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2735,
                        "element_type": "pgc_video",
                        "element_title": "我们感知到的世界，是真实的是世界吗",
                        "element_id": 308925,
                        "element_index": 14,
                        "element_label": "normal",
                        "relative_index": 2,
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-04-29 23:46:35",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308925%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2735,
                        "element_type": "pgc_video",
                        "element_title": "我们感知到的世界，是真实的是世界吗",
                        "element_id": 308925,
                        "element_index": 14,
                        "element_label": "normal",
                        "relative_index": 2,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/308925",
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-04-29 23:46:35",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 5,
                           "metro_id": 2735,
                           "element_type": "pgc_video",
                           "element_title": "我们感知到的世界，是真实的是世界吗",
                           "element_id": 308925,
                           "element_index": 14,
                           "element_label": "normal",
                           "relative_index": 2,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/304569180/?title=dinlab&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_month_top_rank",
                           "dev_release_time": "2022-04-29 23:46:35",
                           "dev_data_source": "weekly_monthly_top_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308925%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-ojnsd5dkn3vnrkhi0ket0irj83",
               "metro_data": {
                  "video_id": "308925",
                  "title": "我们感知到的世界，是真实的是世界吗",
                  "duration": {
                     "value": 430,
                     "text": "07:10"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308925.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308925.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 创意",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/d53d6989e299753574fa95bacd7d8a48.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 304569180,
                     "nick": "dinlab",
                     "description": "嘿，这里是dinlab宇宙电台。和dinlab的领航员们一起离开地球，他上最不可思议的探索之旅吧$n$$n$返回基地：www.dinlab.cn",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/00d450f95e6be1a704a81c1f5e7449e6.png?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/png",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/304569180/?title=dinlab&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 308925,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/308925"
            }, {
               "metro_id": 2736,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 7.5,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "personal_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2736,
                        "element_type": "pgc_video",
                        "element_title": "爱，死亡和机器人 3：吉巴罗",
                        "element_id": 309779,
                        "element_index": 15,
                        "element_label": "normal",
                        "relative_index": 3,
                        "dev_recommend_recall_type": "week_rank",
                        "dev_release_time": "2022-05-20 21:59:28",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309779%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 5,
                        "metro_id": 2736,
                        "element_type": "pgc_video",
                        "element_title": "爱，死亡和机器人 3：吉巴罗",
                        "element_id": 309779,
                        "element_index": 15,
                        "element_label": "normal",
                        "relative_index": 3,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309779",
                        "dev_recommend_recall_type": "week_rank",
                        "dev_release_time": "2022-05-20 21:59:28",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 5,
                           "metro_id": 2736,
                           "element_type": "pgc_video",
                           "element_title": "爱，死亡和机器人 3：吉巴罗",
                           "element_id": 309779,
                           "element_index": 15,
                           "element_label": "normal",
                           "relative_index": 3,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178685/?title=%E5%85%A8%E7%90%83%E5%8A%A8%E7%94%BB%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_rank",
                           "dev_release_time": "2022-05-20 21:59:28",
                           "dev_data_source": "personal_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309779%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-a9ovpg0psmrj3p6pihb72ct72m",
               "metro_data": {
                  "video_id": "309779",
                  "title": "爱，死亡和机器人 3：吉巴罗",
                  "duration": {
                     "value": 1026,
                     "text": "17:06"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309779.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309779.mp4",
                  "recommend_level": "none",
                  "tags": [{
                     "id": 0,
                     "title": "# 动画",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/5241794bf61a8b615d239583b79e3902.jpeg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178685,
                     "nick": "全球动画精选",
                     "description": "我们精选全球最好看的动画短片，有趣的人永远不缺童心。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/482c741c06644f5566c7218096dbaf26.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178685/?title=%E5%85%A8%E7%90%83%E5%8A%A8%E7%94%BB%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309779,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309779"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 1,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-06rfsad6mnv6c5f99558re3itp"
   }, {
      "card_id": 483,
      "type": "set_banner_list",
      "style": {
         "padding": {
            "top": 8,
            "right": 0,
            "bottom": 15,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "#3a000000",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0.5
            }
         }
      },
      "interaction": {
         "scroll": "h-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 5007,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2080,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "小馆.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220531/b7a6b78ef3ad5292dceed74a705ee6ad.png",
                           "size": 1423927,
                           "date": "2022-05-31",
                           "info": {
                              "width": 1455,
                              "height": 829,
                              "scale": 1.7551266586248493
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5007,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5007,
                        "element_index": 16,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/b7a6b78ef3ad5292dceed74a705ee6ad.png",
                        "relative_index": 0,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5007,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5007,
                        "element_index": 16,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/b7a6b78ef3ad5292dceed74a705ee6ad.png",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E6%88%91%E6%9D%A5%E5%AE%89%E5%88%A9%E4%B8%8D%E6%9B%BE%E4%B8%8A%E6%A6%9C%E7%9A%84%E5%AE%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-358397386%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5007,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5007,
                           "element_index": 16,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220531/b7a6b78ef3ad5292dceed74a705ee6ad.png",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-vsrjspmd6gblhv3qfd82kaohua",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220531/b7a6b78ef3ad5292dceed74a705ee6ad.png?x-oss-process=image/auto-orient,1/resize,w_1455/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2910,
                        "height": 1658,
                        "scale": 1.76
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E6%88%91%E6%9D%A5%E5%AE%89%E5%88%A9%E4%B8%8D%E6%9B%BE%E4%B8%8A%E6%A6%9C%E7%9A%84%E5%AE%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-358397386%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E6%88%91%E6%9D%A5%E5%AE%89%E5%88%A9%E4%B8%8D%E6%9B%BE%E4%B8%8A%E6%A6%9C%E7%9A%84%E5%AE%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-358397386%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5008,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2081,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "发光.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220531/d2f88f98e3acfbd11e296dd2330e2381.png",
                           "size": 912321,
                           "date": "2022-05-31",
                           "info": {
                              "width": 1442,
                              "height": 829,
                              "scale": 1.7394451145958987
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5008,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5008,
                        "element_index": 17,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/d2f88f98e3acfbd11e296dd2330e2381.png",
                        "relative_index": 1,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5008,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5008,
                        "element_index": 17,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220531/d2f88f98e3acfbd11e296dd2330e2381.png",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E5%BF%83%E5%8A%A8%E7%9A%84%E7%9E%AC%E9%97%B4+%7C+%E6%8D%95%E6%8D%89%E6%99%AE%E9%80%9A%E4%BA%BA%E7%9A%84%E5%8F%91%E5%85%89%E6%97%B6%E5%88%BB&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-282540486%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5008,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5008,
                           "element_index": 17,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220531/d2f88f98e3acfbd11e296dd2330e2381.png",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-2l70m1ueoo8od2gdch4b5osfb8",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220531/d2f88f98e3acfbd11e296dd2330e2381.png?x-oss-process=image/auto-orient,1/resize,w_1442/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2884,
                        "height": 1658,
                        "scale": 1.74
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E5%BF%83%E5%8A%A8%E7%9A%84%E7%9E%AC%E9%97%B4+%7C+%E6%8D%95%E6%8D%89%E6%99%AE%E9%80%9A%E4%BA%BA%E7%9A%84%E5%8F%91%E5%85%89%E6%97%B6%E5%88%BB&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-282540486%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E5%BF%83%E5%8A%A8%E7%9A%84%E7%9E%AC%E9%97%B4+%7C+%E6%8D%95%E6%8D%89%E6%99%AE%E9%80%9A%E4%BA%BA%E7%9A%84%E5%8F%91%E5%85%89%E6%97%B6%E5%88%BB&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-282540486%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5009,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2075,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "7BBDD667-9C32-4E86-B113-D211767AA915.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220528/c35dfffa4f93f0b519072df36003bd2e.png",
                           "size": 1079457,
                           "date": "2022-05-28",
                           "info": {
                              "width": 1380,
                              "height": 800,
                              "scale": 1.725
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5009,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5009,
                        "element_index": 18,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220528/c35dfffa4f93f0b519072df36003bd2e.png",
                        "relative_index": 2,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5009,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5009,
                        "element_index": 18,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220528/c35dfffa4f93f0b519072df36003bd2e.png",
                        "relative_index": 2,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E6%88%91%E6%83%B3%E5%8F%98%E6%88%90____&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3367047198%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5009,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5009,
                           "element_index": 18,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220528/c35dfffa4f93f0b519072df36003bd2e.png",
                           "relative_index": 2,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-jjo33faivnrlr9qj4jhigr8glf",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220528/c35dfffa4f93f0b519072df36003bd2e.png?x-oss-process=image/auto-orient,1/resize,w_1380/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2760,
                        "height": 1600,
                        "scale": 1.73
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E6%88%91%E6%83%B3%E5%8F%98%E6%88%90____&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3367047198%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E4%BB%8A%E5%A4%A9%EF%BC%8C%E6%88%91%E6%83%B3%E5%8F%98%E6%88%90____&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-3367047198%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5010,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2070,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "色调3.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220526/13fbfafff807e28f00cac5c1876458b6.png",
                           "size": 1421614,
                           "date": "2022-05-26",
                           "info": {
                              "width": 1442,
                              "height": 829,
                              "scale": 1.7394451145958987
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5010,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5010,
                        "element_index": 19,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220526/13fbfafff807e28f00cac5c1876458b6.png",
                        "relative_index": 3,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5010,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5010,
                        "element_index": 19,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220526/13fbfafff807e28f00cac5c1876458b6.png",
                        "relative_index": 3,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E6%8B%8D%E4%B8%80%E5%BC%A0%E5%B1%9E%E4%BA%8E%E4%BD%A0%E7%9A%84%E4%B8%93%E5%B1%9E%E8%89%B2%E8%B0%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-167626592%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5010,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5010,
                           "element_index": 19,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220526/13fbfafff807e28f00cac5c1876458b6.png",
                           "relative_index": 3,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-l5um8nihfoo0gd8mbjnohn7mc6",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220526/13fbfafff807e28f00cac5c1876458b6.png?x-oss-process=image/auto-orient,1/resize,w_1442/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2884,
                        "height": 1658,
                        "scale": 1.74
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E6%8B%8D%E4%B8%80%E5%BC%A0%E5%B1%9E%E4%BA%8E%E4%BD%A0%E7%9A%84%E4%B8%93%E5%B1%9E%E8%89%B2%E8%B0%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-167626592%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E6%8B%8D%E4%B8%80%E5%BC%A0%E5%B1%9E%E4%BA%8E%E4%BD%A0%E7%9A%84%E4%B8%93%E5%B1%9E%E8%89%B2%E8%B0%83&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-167626592%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5011,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2069,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "转角.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220525/93db2829f558fff2180af2191b4c67f0.png",
                           "size": 1569988,
                           "date": "2022-05-25",
                           "info": {
                              "width": 1380,
                              "height": 800,
                              "scale": 1.725
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5011,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5011,
                        "element_index": 20,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220525/93db2829f558fff2180af2191b4c67f0.png",
                        "relative_index": 4,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5011,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5011,
                        "element_index": 20,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220525/93db2829f558fff2180af2191b4c67f0.png",
                        "relative_index": 4,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC%EF%BD%9C%E3%80%8C%E6%88%91%E4%BA%BA%E7%94%9F%E7%9A%84%E9%87%8D%E8%A6%81%E8%8A%82%E7%82%B9%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-1086126333%22%2C%22page_type%22%3A%22card%22%7D%7D",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5011,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5011,
                           "element_index": 20,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220525/93db2829f558fff2180af2191b4c67f0.png",
                           "relative_index": 4,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-i6ruhnqovfqrudp66s7m8rajh3",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220525/93db2829f558fff2180af2191b4c67f0.png?x-oss-process=image/auto-orient,1/resize,w_1380/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2760,
                        "height": 1600,
                        "scale": 1.73
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC%EF%BD%9C%E3%80%8C%E6%88%91%E4%BA%BA%E7%94%9F%E7%9A%84%E9%87%8D%E8%A6%81%E8%8A%82%E7%82%B9%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-1086126333%22%2C%22page_type%22%3A%22card%22%7D%7D"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://cardlist/common?title=%E5%BC%80%E7%9C%BC%EF%BD%9C%E3%80%8C%E6%88%91%E4%BA%BA%E7%94%9F%E7%9A%84%E9%87%8D%E8%A6%81%E8%8A%82%E7%82%B9%E3%80%8D%E4%B8%BB%E9%A2%98%E4%BD%9C%E5%93%81%E5%BE%81%E9%9B%86&fit_window=1&api_request=%7B%22url%22%3A%22https%3A%5C%2F%5C%2Fapi.eyepetizer.net%5C%2Fv1%5C%2Fcard%5C%2Fpage%5C%2Fget_page%22%2C%22params%22%3A%7B%22page_label%22%3A%22topic_detail-1086126333%22%2C%22page_type%22%3A%22card%22%7D%7D"
            }, {
               "metro_id": 5002,
               "type": "image",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "slide_cover_image_with_footer",
                  "padding": {
                     "top": 0,
                     "right": 0.5,
                     "bottom": 0,
                     "left": 0.5
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  },
                  "banner_padding": 15
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "ad_material",
                     "params": {
                        "data_id": 0,
                        "ad_material": {
                           "id": 2076,
                           "title": "",
                           "type": "image",
                           "data_type": "ad_material",
                           "file_name": "丑2.png",
                           "url": "https://static.thefair.net.cn/thefair_project/20220530/90f17a71f06902192e614b1613ea9313.png",
                           "size": 941067,
                           "date": "2022-05-30",
                           "info": {
                              "width": 1367,
                              "height": 796,
                              "scale": 1.7173366834170853
                           },
                           "material_type": "image"
                        },
                        "video_cover": [],
                        "linkage_video_id": 0,
                        "footer_left_text": "了解详情",
                        "title": ""
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5002,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5002,
                        "element_index": 21,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220530/90f17a71f06902192e614b1613ea9313.png",
                        "relative_index": 5,
                        "dev_data_source": "ad_material"
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_banner_list",
                        "card_title": "",
                        "card_id": 483,
                        "card_index": 6,
                        "metro_id": 5002,
                        "element_type": "image",
                        "element_title": "",
                        "element_id": 5002,
                        "element_index": 21,
                        "element_label": "normal",
                        "element_content": "https://static.thefair.net.cn/thefair_project/20220530/90f17a71f06902192e614b1613ea9313.png",
                        "relative_index": 5,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://webview/?title=%E8%BF%9B%E6%9D%A5%EF%BC%81%E4%B8%80%E8%B5%B7%E4%BF%9D%E6%8A%A4%E6%88%91%E6%96%B9%E4%B8%91%E4%B8%9C%E8%A5%BF&url=https%3A%2F%2Fh5.eyepetizer.net%2Fv1%2Ftopic-vote%3Fcollection_id%3D5737",
                        "dev_data_source": "ad_material"
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_banner_list",
                           "card_title": "",
                           "card_id": 483,
                           "card_index": 6,
                           "metro_id": 5002,
                           "element_type": "image",
                           "element_title": "",
                           "element_id": 5002,
                           "element_index": 21,
                           "element_label": "normal",
                           "element_content": "https://static.thefair.net.cn/thefair_project/20220530/90f17a71f06902192e614b1613ea9313.png",
                           "relative_index": 5,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "",
                           "dev_data_source": "ad_material"
                        }
                     }]
                  }]
               },
               "metro_unique_id": "metro-1vpafrplc0l2bogidmsikfcvka",
               "metro_data": {
                  "image_id": 0,
                  "cover": {
                     "url": "https://static.thefair.net.cn/thefair_project/20220530/90f17a71f06902192e614b1613ea9313.png?x-oss-process=image/auto-orient,1/resize,w_1367/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 2734,
                        "height": 1592,
                        "scale": 1.72
                     }
                  },
                  "footer": {
                     "left": {
                        "text": "了解详情",
                        "link": "eyepetizer://webview/?title=%E8%BF%9B%E6%9D%A5%EF%BC%81%E4%B8%80%E8%B5%B7%E4%BF%9D%E6%8A%A4%E6%88%91%E6%96%B9%E4%B8%91%E4%B8%9C%E8%A5%BF&url=https%3A%2F%2Fh5.eyepetizer.net%2Fv1%2Ftopic-vote%3Fcollection_id%3D5737"
                     },
                     "right": {
                        "text": ""
                     }
                  },
                  "resource_type": "image",
                  "resource_id": 0
               },
               "link": "eyepetizer://webview/?title=%E8%BF%9B%E6%9D%A5%EF%BC%81%E4%B8%80%E8%B5%B7%E4%BF%9D%E6%8A%A4%E6%88%91%E6%96%B9%E4%B8%91%E4%B8%9C%E8%A5%BF&url=https%3A%2F%2Fh5.eyepetizer.net%2Fv1%2Ftopic-vote%3Fcollection_id%3D5737"
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "tpl_multi_slide_banner_list",
      "special_pos": "397_4",
      "allow_insert_card": 0,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-0dprrl5mp4h3jmtudcb04v3jb4"
   }, {
      "card_id": 397,
      "type": "set_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 0,
            "left": 0
         },
         "background": {
            "color": "#FFFFFF"
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "metro_list": [{
               "metro_id": 2737,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2737,
                        "element_type": "pgc_video",
                        "element_title": "不学会两道快手菜，怎么闯天下？",
                        "element_id": 22263,
                        "element_index": 22,
                        "element_label": "normal",
                        "relative_index": 0,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-05-16 16:01:19",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A22263%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2737,
                        "element_type": "pgc_video",
                        "element_title": "不学会两道快手菜，怎么闯天下？",
                        "element_id": 22263,
                        "element_index": 22,
                        "element_label": "normal",
                        "relative_index": 0,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/22263",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-05-16 16:01:19",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2737,
                           "element_type": "pgc_video",
                           "element_title": "不学会两道快手菜，怎么闯天下？",
                           "element_id": 22263,
                           "element_index": 22,
                           "element_label": "normal",
                           "relative_index": 0,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301039423/?title=%E6%97%A5%E9%A3%9F%E8%AE%B0&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2017-05-16 16:01:19",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A22263%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-vmop1v5nr2860r7g7c9cjkuai2",
               "metro_data": {
                  "video_id": "22263",
                  "title": "不学会两道快手菜，怎么闯天下？",
                  "duration": {
                     "value": 204,
                     "text": "03:24"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/22263.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/22263.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 开胃",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/0484cf7dd9587df2cd6b8ec8abdefc97.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301039423,
                     "nick": "日食记",
                     "description": "治愈你心和胃的日食记：） $n$快加我的微信公众号【日食记】，否则我就……求求你加我！ $n$微博 @日食记 @酥饼大人",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/2faf2139c4b655e56a54bdb2ee06e0b4.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301039423/?title=%E6%97%A5%E9%A3%9F%E8%AE%B0&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 22263,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/22263"
            }, {
               "metro_id": 2738,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "top_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2738,
                        "element_type": "pgc_video",
                        "element_title": "我在韩国私立学校看到的恐怖",
                        "element_id": 309861,
                        "element_index": 23,
                        "element_label": "normal",
                        "relative_index": 1,
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:23",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309861%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2738,
                        "element_type": "pgc_video",
                        "element_title": "我在韩国私立学校看到的恐怖",
                        "element_id": 309861,
                        "element_index": 23,
                        "element_label": "normal",
                        "relative_index": 1,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309861",
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:23",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2738,
                           "element_type": "pgc_video",
                           "element_title": "我在韩国私立学校看到的恐怖",
                           "element_id": 309861,
                           "element_index": 23,
                           "element_label": "normal",
                           "relative_index": 1,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301917358/?title=%E7%9B%B4%E5%87%BB%E5%BD%93%E4%B8%8B&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "ops-tag",
                           "dev_release_time": "2022-05-29 00:00:23",
                           "dev_data_source": "top_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309861%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-8ujm6me6plncuotrkdgshmnhtl",
               "metro_data": {
                  "video_id": "309861",
                  "title": "我在韩国私立学校看到的恐怖",
                  "duration": {
                     "value": 318,
                     "text": "05:18"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309861.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309861.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 记录",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/fc7caccae7b5d6ce31ae3478ceb2f45d.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301917358,
                     "nick": "直击当下",
                     "description": "直击当下是一个追踪现实、记录当下的纪实平台，我们直击真人真事，将镜头对准社会焦点。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/dd692dae17fadf756b828d4e94a9d341.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301917358/?title=%E7%9B%B4%E5%87%BB%E5%BD%93%E4%B8%8B&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309861,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309861"
            }, {
               "metro_id": 2739,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "weekly_monthly_top_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2739,
                        "element_type": "pgc_video",
                        "element_title": "想不到，运镜高手竟然是百事广告",
                        "element_id": 309988,
                        "element_index": 24,
                        "element_label": "normal",
                        "relative_index": 2,
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-28 09:00:10",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309988%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2739,
                        "element_type": "pgc_video",
                        "element_title": "想不到，运镜高手竟然是百事广告",
                        "element_id": 309988,
                        "element_index": 24,
                        "element_label": "normal",
                        "relative_index": 2,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309988",
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-28 09:00:10",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2739,
                           "element_type": "pgc_video",
                           "element_title": "想不到，运镜高手竟然是百事广告",
                           "element_id": 309988,
                           "element_index": 24,
                           "element_label": "normal",
                           "relative_index": 2,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/304450805/?title=%E7%99%BE%E4%BA%8B%E5%8F%AF%E4%B9%90Pepsi%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_month_top_rank",
                           "dev_release_time": "2022-05-28 09:00:10",
                           "dev_data_source": "weekly_monthly_top_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309988%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-h5uq7b17p37c70546k97i9pk3b",
               "metro_data": {
                  "video_id": "309988",
                  "title": "想不到，运镜高手竟然是百事广告",
                  "duration": {
                     "value": 60,
                     "text": "01:00"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309988.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309988.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/cover/20220526/1c22e47eea5616056115b3dc7959e36d.jpg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 304450805,
                     "nick": "百事可乐 Pepsi 广告精选",
                     "description": "百事可乐诞生于 19 世纪 90 年代，并于 1903 年 6 月 16 日将之注册为商标",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/d10875555f1d3c1b49085da6e6e5aad5.png?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/png",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/304450805/?title=%E7%99%BE%E4%BA%8B%E5%8F%AF%E4%B9%90Pepsi%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309988,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309988"
            }, {
               "metro_id": 2740,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "personal_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2740,
                        "element_type": "pgc_video",
                        "element_title": "影视情绪混剪：希望是一缕光，总能穿透黑暗",
                        "element_id": 309289,
                        "element_index": 25,
                        "element_label": "normal",
                        "relative_index": 3,
                        "dev_recommend_recall_type": "month_rank",
                        "dev_release_time": "2022-05-11 12:15:50",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309289%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2740,
                        "element_type": "pgc_video",
                        "element_title": "影视情绪混剪：希望是一缕光，总能穿透黑暗",
                        "element_id": 309289,
                        "element_index": 25,
                        "element_label": "normal",
                        "relative_index": 3,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309289",
                        "dev_recommend_recall_type": "month_rank",
                        "dev_release_time": "2022-05-11 12:15:50",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2740,
                           "element_type": "pgc_video",
                           "element_title": "影视情绪混剪：希望是一缕光，总能穿透黑暗",
                           "element_id": 309289,
                           "element_index": 25,
                           "element_label": "normal",
                           "relative_index": 3,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178681/?title=%E5%BC%80%E7%9C%BC%E5%BD%B1%E8%A7%86%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "month_rank",
                           "dev_release_time": "2022-05-11 12:15:50",
                           "dev_data_source": "personal_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309289%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-rjhncms35au52fqc2kdfdki5h7",
               "metro_data": {
                  "video_id": "309289",
                  "title": "影视情绪混剪：希望是一缕光，总能穿透黑暗",
                  "duration": {
                     "value": 488,
                     "text": "08:08"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309289.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309289.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 影视",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/0ee838331d7ef91004d0967250708166.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178681,
                     "nick": "开眼影视精选",
                     "description": "关于电影、剧集的一切",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/003829087e85ce7310b2210d9575ce67.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178681/?title=%E5%BC%80%E7%9C%BC%E5%BD%B1%E8%A7%86%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309289,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309289"
            }, {
               "metro_id": 2741,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2741,
                        "element_type": "pgc_video",
                        "element_title": "教你如何做个「好」丈夫",
                        "element_id": 15053,
                        "element_index": 26,
                        "element_label": "normal",
                        "relative_index": 4,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-03-08 09:00:01",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A15053%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2741,
                        "element_type": "pgc_video",
                        "element_title": "教你如何做个「好」丈夫",
                        "element_id": 15053,
                        "element_index": 26,
                        "element_label": "normal",
                        "relative_index": 4,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/15053",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2017-03-08 09:00:01",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2741,
                           "element_type": "pgc_video",
                           "element_title": "教你如何做个「好」丈夫",
                           "element_id": 15053,
                           "element_index": 26,
                           "element_label": "normal",
                           "relative_index": 4,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178680/?title=%E5%BC%80%E7%9C%BC%E7%BB%BC%E8%89%BA%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2017-03-08 09:00:01",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A15053%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-8ui5392or8t4dr530g0d1t7rcq",
               "metro_data": {
                  "video_id": "15053",
                  "title": "教你如何做个「好」丈夫",
                  "duration": {
                     "value": 71,
                     "text": "01:11"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/15053.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/15053.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 综艺",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/4440293a723439cd7fb8e7ec21e657a7.jpeg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178680,
                     "nick": "开眼综艺精选",
                     "description": "全球网红在表演什么",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/9f4c1559d54d4274e5463fba4262b284.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178680/?title=%E5%BC%80%E7%9C%BC%E7%BB%BC%E8%89%BA%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 15053,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/15053"
            }, {
               "metro_id": 2742,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "top_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2742,
                        "element_type": "pgc_video",
                        "element_title": "国际空间站视角下的地球有多美",
                        "element_id": 309972,
                        "element_index": 27,
                        "element_label": "normal",
                        "relative_index": 5,
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:27",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309972%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2742,
                        "element_type": "pgc_video",
                        "element_title": "国际空间站视角下的地球有多美",
                        "element_id": 309972,
                        "element_index": 27,
                        "element_label": "normal",
                        "relative_index": 5,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309972",
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-29 00:00:27",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2742,
                           "element_type": "pgc_video",
                           "element_title": "国际空间站视角下的地球有多美",
                           "element_id": 309972,
                           "element_index": 27,
                           "element_label": "normal",
                           "relative_index": 5,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301040692/?title=%E5%85%A8%E7%90%83%E6%97%85%E8%A1%8C%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "ops-tag",
                           "dev_release_time": "2022-05-29 00:00:27",
                           "dev_data_source": "top_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309972%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-09b5vd2cor8h6thhsjctdt569f",
               "metro_data": {
                  "video_id": "309972",
                  "title": "国际空间站视角下的地球有多美",
                  "duration": {
                     "value": 404,
                     "text": "06:44"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309972.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309972.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 旅行",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/832ed0f4311fc469aef47116dc04eed2.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301040692,
                     "nick": "全球旅行视频精选",
                     "description": "在这个世界上的很多地方都有着美丽的景色，我们用相机用镜头记录下这一切。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/385d659e77af15fa4be37fe638c75917.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301040692/?title=%E5%85%A8%E7%90%83%E6%97%85%E8%A1%8C%E8%A7%86%E9%A2%91%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309972,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309972"
            }, {
               "metro_id": 2743,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "weekly_monthly_top_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2743,
                        "element_type": "pgc_video",
                        "element_title": "用星球大战的方式打开大众汽车广告",
                        "element_id": 309987,
                        "element_index": 28,
                        "element_label": "normal",
                        "relative_index": 6,
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-28 09:00:04",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309987%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2743,
                        "element_type": "pgc_video",
                        "element_title": "用星球大战的方式打开大众汽车广告",
                        "element_id": 309987,
                        "element_index": 28,
                        "element_label": "normal",
                        "relative_index": 6,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309987",
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-28 09:00:04",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2743,
                           "element_type": "pgc_video",
                           "element_title": "用星球大战的方式打开大众汽车广告",
                           "element_id": 309987,
                           "element_index": 28,
                           "element_label": "normal",
                           "relative_index": 6,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_month_top_rank",
                           "dev_release_time": "2022-05-28 09:00:04",
                           "dev_data_source": "weekly_monthly_top_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309987%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-2ufrgdve49gocbihnlas15jf33",
               "metro_data": {
                  "video_id": "309987",
                  "title": "用星球大战的方式打开大众汽车广告",
                  "duration": {
                     "value": 60,
                     "text": "01:00"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309987.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309987.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/81750fc1785085c6176967e609ed6379.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178695,
                     "nick": "全球广告精选",
                     "description": "我们精选世界最好看的广告，为全世界广告人的精彩创意点赞。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/98beab66d3885a139b54f21e91817c4f.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309987,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309987"
            }, {
               "metro_id": 2744,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "personal_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2744,
                        "element_type": "pgc_video",
                        "element_title": "一颗蛋引发的「极地狂飙」，穿越极北之地",
                        "element_id": 308540,
                        "element_index": 29,
                        "element_label": "normal",
                        "relative_index": 7,
                        "dev_recommend_recall_type": "month_rank",
                        "dev_release_time": "2022-04-22 09:00:24",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308540%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2744,
                        "element_type": "pgc_video",
                        "element_title": "一颗蛋引发的「极地狂飙」，穿越极北之地",
                        "element_id": 308540,
                        "element_index": 29,
                        "element_label": "normal",
                        "relative_index": 7,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/308540",
                        "dev_recommend_recall_type": "month_rank",
                        "dev_release_time": "2022-04-22 09:00:24",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2744,
                           "element_type": "pgc_video",
                           "element_title": "一颗蛋引发的「极地狂飙」，穿越极北之地",
                           "element_id": 308540,
                           "element_index": 29,
                           "element_label": "normal",
                           "relative_index": 7,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "month_rank",
                           "dev_release_time": "2022-04-22 09:00:24",
                           "dev_data_source": "personal_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A308540%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-gds0pflnj8hn9552lmhoar691d",
               "metro_data": {
                  "video_id": "308540",
                  "title": "一颗蛋引发的「极地狂飙」，穿越极北之地",
                  "duration": {
                     "value": 120,
                     "text": "02:00"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308540.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/308540.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/71a6a4c19357bf186d150f83b0dffcc4.jpeg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178695,
                     "nick": "全球广告精选",
                     "description": "我们精选世界最好看的广告，为全世界广告人的精彩创意点赞。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/98beab66d3885a139b54f21e91817c4f.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 308540,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/308540"
            }, {
               "metro_id": 2745,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 1,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "recommend_daily_issue",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2745,
                        "element_type": "pgc_video",
                        "element_title": "特条丨Facebook 2016 温情回顾",
                        "element_id": 11545,
                        "element_index": 30,
                        "element_label": "normal",
                        "relative_index": 8,
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-12-12 17:07:37",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A11545%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2745,
                        "element_type": "pgc_video",
                        "element_title": "特条丨Facebook 2016 温情回顾",
                        "element_id": 11545,
                        "element_index": 30,
                        "element_label": "normal",
                        "relative_index": 8,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/11545",
                        "dev_recommend_recall_type": "daily_issue",
                        "dev_release_time": "2016-12-12 17:07:37",
                        "dev_data_source": "recommend_daily_issue",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2745,
                           "element_type": "pgc_video",
                           "element_title": "特条丨Facebook 2016 温情回顾",
                           "element_id": 11545,
                           "element_index": 30,
                           "element_label": "normal",
                           "relative_index": 8,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178677/?title=%E5%BC%80%E7%9C%BC%E9%9B%86%E9%94%A6%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "daily_issue",
                           "dev_release_time": "2016-12-12 17:07:37",
                           "dev_data_source": "recommend_daily_issue",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A11545%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-i6ha5b7g7o7jfug3fbbph03coq",
               "metro_data": {
                  "video_id": "11545",
                  "title": "特条丨Facebook 2016 温情回顾",
                  "duration": {
                     "value": 158,
                     "text": "02:38"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/11545.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/11545.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 记录",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/5f5c39e261da6b98eb3f52222f0c00ca.jpeg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpeg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178677,
                     "nick": "开眼集锦精选",
                     "description": "最好的部分 + 有化学反应的混剪",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/d7186edff72b6a6ddd03eff166ee4cd8.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178677/?title=%E5%BC%80%E7%9C%BC%E9%9B%86%E9%94%A6%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 11545,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/11545"
            }, {
               "metro_id": 2746,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "top_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2746,
                        "element_type": "pgc_video",
                        "element_title": "昔日队友赛场交锋，为培养中国顶级棒球球员",
                        "element_id": 310089,
                        "element_index": 31,
                        "element_label": "normal",
                        "relative_index": 9,
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-28 18:30:29",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A310089%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2746,
                        "element_type": "pgc_video",
                        "element_title": "昔日队友赛场交锋，为培养中国顶级棒球球员",
                        "element_id": 310089,
                        "element_index": 31,
                        "element_label": "normal",
                        "relative_index": 9,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/310089",
                        "dev_recommend_recall_type": "ops-tag",
                        "dev_release_time": "2022-05-28 18:30:29",
                        "dev_data_source": "top_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2746,
                           "element_type": "pgc_video",
                           "element_title": "昔日队友赛场交锋，为培养中国顶级棒球球员",
                           "element_id": 310089,
                           "element_index": 31,
                           "element_label": "normal",
                           "relative_index": 9,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/304317814/?title=%E5%92%8C%E4%B9%8B%E6%A2%A6%E6%94%BE%E9%80%81&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "ops-tag",
                           "dev_release_time": "2022-05-28 18:30:29",
                           "dev_data_source": "top_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A310089%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-4keeu34cf9mlsttark5dps56ce",
               "metro_data": {
                  "video_id": "310089",
                  "title": "昔日队友赛场交锋，为培养中国顶级棒球球员",
                  "duration": {
                     "value": 2569,
                     "text": "42:49"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://api.eyepetizer.net/v1/common/redirect/video_play_url?resource_id=310089&resource_type=pgc_video&edition_type=default",
                  "preview_url": "http://api.eyepetizer.net/v1/common/redirect/video_play_url?resource_id=310089&resource_type=pgc_video&edition_type=default",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 记录",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/cb7c8c4b6e7b7e027ad04cdd716894ee.png?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/png",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 304317814,
                     "nick": "和之梦放送",
                     "description": "用镜头拉近世界与你的距离",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/6b1e375c873210dd1fe1bc73f138d8ce.png?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/png",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/304317814/?title=%E5%92%8C%E4%B9%8B%E6%A2%A6%E6%94%BE%E9%80%81&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 310089,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/310089"
            }, {
               "metro_id": 2747,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "weekly_monthly_top_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2747,
                        "element_type": "pgc_video",
                        "element_title": "这支广告把断网的恐怖拍的「淋漓尽致」",
                        "element_id": 309601,
                        "element_index": 32,
                        "element_label": "normal",
                        "relative_index": 10,
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-23 09:00:17",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309601%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2747,
                        "element_type": "pgc_video",
                        "element_title": "这支广告把断网的恐怖拍的「淋漓尽致」",
                        "element_id": 309601,
                        "element_index": 32,
                        "element_label": "normal",
                        "relative_index": 10,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309601",
                        "dev_recommend_recall_type": "week_month_top_rank",
                        "dev_release_time": "2022-05-23 09:00:17",
                        "dev_data_source": "weekly_monthly_top_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2747,
                           "element_type": "pgc_video",
                           "element_title": "这支广告把断网的恐怖拍的「淋漓尽致」",
                           "element_id": 309601,
                           "element_index": 32,
                           "element_label": "normal",
                           "relative_index": 10,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_month_top_rank",
                           "dev_release_time": "2022-05-23 09:00:17",
                           "dev_data_source": "weekly_monthly_top_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309601%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-1k4jhoiffpskh1ugafem817cbe",
               "metro_data": {
                  "video_id": "309601",
                  "title": "这支广告把断网的恐怖拍的「淋漓尽致」",
                  "duration": {
                     "value": 60,
                     "text": "01:00"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309601.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309601.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/cover/20220516/fc5adf278b6382e23f4cdbb342b797c6.jpg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178695,
                     "nick": "全球广告精选",
                     "description": "我们精选世界最好看的广告，为全世界广告人的精彩创意点赞。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/98beab66d3885a139b54f21e91817c4f.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309601,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309601"
            }, {
               "metro_id": 2748,
               "type": "video",
               "alias_name": "",
               "allow_insert_above": 0,
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 10,
                     "left": 15
                  },
                  "background": {
                     "color": "#FFFFFF"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0.5
                     }
                  }
               },
               "tracking_params": {
                  "is_ad": 0,
                  "data_source": {
                     "label": "personal_recommend_feed",
                     "params": {
                        "data_id": 0
                     }
                  }
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2748,
                        "element_type": "pgc_video",
                        "element_title": "看香水广告如何打造一个「性感的水手」",
                        "element_id": 309338,
                        "element_index": 33,
                        "element_label": "normal",
                        "relative_index": 11,
                        "dev_recommend_recall_type": "week_rank",
                        "dev_release_time": "2022-05-25 09:00:02",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309338%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2748,
                        "element_type": "pgc_video",
                        "element_title": "看香水广告如何打造一个「性感的水手」",
                        "element_id": 309338,
                        "element_index": 33,
                        "element_label": "normal",
                        "relative_index": 11,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/309338",
                        "dev_recommend_recall_type": "week_rank",
                        "dev_release_time": "2022-05-25 09:00:02",
                        "dev_data_source": "personal_recommend_feed",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2748,
                           "element_type": "pgc_video",
                           "element_title": "看香水广告如何打造一个「性感的水手」",
                           "element_id": 309338,
                           "element_index": 33,
                           "element_label": "normal",
                           "relative_index": 11,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                           "dev_recommend_recall_type": "week_rank",
                           "dev_release_time": "2022-05-25 09:00:02",
                           "dev_data_source": "personal_recommend_feed",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A309338%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "metro_unique_id": "metro-fv2q3uu16vt0kmgnlvj3qjnkrj",
               "metro_data": {
                  "video_id": "309338",
                  "title": "看香水广告如何打造一个「性感的水手」",
                  "duration": {
                     "value": 45,
                     "text": "00:45"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309338.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/309338.mp4",
                  "recommend_level": "featured",
                  "tags": [{
                     "id": 0,
                     "title": "# 广告",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/cover/20220510/4ceb10d1b5a9df76d6ee8673fef9cd45.jpg?imageMogr2/auto-orient/thumbnail/675x/interlace/1/quality/80/format/jpg",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301178695,
                     "nick": "全球广告精选",
                     "description": "我们精选世界最好看的广告，为全世界广告人的精彩创意点赞。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/98beab66d3885a139b54f21e91817c4f.jpeg?imageMogr2/auto-orient/thumbnail/360x/interlace/1/quality/80/format/jpeg",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301178695/?title=%E5%85%A8%E7%90%83%E5%B9%BF%E5%91%8A%E7%B2%BE%E9%80%89&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 309338,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "link": "eyepetizer://detail/309338"
            }, {
               "metro_id": 2000001,
               "metro_unique_id": "metro-vp7t2kvmdq5oe77lqu9942o8q3",
               "type": "video",
               "style": {
                  "tpl_label": "feed_cover_small_video",
                  "padding": {
                     "top": 7.5,
                     "right": 15,
                     "bottom": 7.5,
                     "left": 15
                  },
                  "background": {
                     "color": "transparent"
                  },
                  "separator_line": {
                     "top": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     },
                     "bottom": {
                        "color": "transparent",
                        "margin": {
                           "top": 0,
                           "right": 0,
                           "bottom": 0,
                           "left": 0
                        },
                        "height": 0
                     }
                  }
               },
               "metro_data": {
                  "video_id": "196406",
                  "title": "Vlog：17位名人重启2020",
                  "duration": {
                     "value": 234,
                     "text": "03:54"
                  },
                  "play_ctrl": {
                     "autoplay": false,
                     "autoplay_times": 0,
                     "need_wifi": true,
                     "need_cellular": true,
                     "need_wifi_preload": false
                  },
                  "play_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/196406.mp4",
                  "preview_url": "http://static.thefair.net.cn/eyepetizer/pgc_video/video_summary/196406.mp4",
                  "recommend_level": "recommend",
                  "tags": [{
                     "id": 0,
                     "title": "# 记录",
                     "link": ""
                  }],
                  "cover": {
                     "url": "http://static.eyepetizer.net/ac2715a02bfa47f9aeeaaccb81baec93.png?image_process=image/auto-orient,1/resize,w_675/format,png/interlace,1/quality,q_80",
                     "img_info": {
                        "width": 562.5,
                        "height": 345.09,
                        "scale": 1.63
                     }
                  },
                  "author": {
                     "uid": 301117133,
                     "nick": "新世相",
                     "description": "我们终将改变潮水的方向。",
                     "avatar": {
                        "url": "http://static.eyepetizer.net/f4f2b2205861a02174d3b15eaa00214e.png?image_process=image/auto-orient,1/resize,w_360/format,png/interlace,1/quality,q_80",
                        "img_info": {
                           "width": 300,
                           "height": 300,
                           "scale": 1
                        },
                        "shape": "circle"
                     },
                     "link": "eyepetizer://pgc/detail/301117133/?title=%E6%96%B0%E4%B8%96%E7%9B%B8&userType=PGC&tabIndex=1",
                     "type": "pgc",
                     "followed": false
                  },
                  "resource_id": 196406,
                  "resource_type": "pgc_video",
                  "hot_value": 0
               },
               "tracking_data": {
                  "show": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2000001,
                        "element_type": "pgc_video",
                        "element_title": "Vlog：17位名人重启2020",
                        "element_id": 196406,
                        "element_index": 34,
                        "element_label": "normal",
                        "relative_index": 12,
                        "dev_release_time": "2020-06-08 17:05:14",
                        "dev_is_new_user": 0
                     }
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=exposure&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A196406%7D%5D",
                        "clickUrl": "",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }],
                  "click": [{
                     "sdk": "sensors",
                     "data": {
                        "card_type": "set_metro_list",
                        "card_title": "",
                        "card_id": 397,
                        "card_index": 7,
                        "metro_id": 2000001,
                        "element_type": "pgc_video",
                        "element_title": "Vlog：17位名人重启2020",
                        "element_id": 196406,
                        "element_index": 34,
                        "element_label": "normal",
                        "relative_index": 12,
                        "click_name": "查看详情",
                        "click_action": "REDIRECT",
                        "click_action_url": "eyepetizer://detail/196406",
                        "dev_release_time": "2020-06-08 17:05:14",
                        "dev_is_new_user": 0
                     },
                     "child": [{
                        "type": "user",
                        "data": {
                           "card_type": "set_metro_list",
                           "card_title": "",
                           "card_id": 397,
                           "card_index": 7,
                           "metro_id": 2000001,
                           "element_type": "pgc_video",
                           "element_title": "Vlog：17位名人重启2020",
                           "element_id": 196406,
                           "element_index": 34,
                           "element_label": "normal",
                           "relative_index": 12,
                           "click_name": "查看作者",
                           "click_action": "REDIRECT",
                           "click_action_url": "eyepetizer://pgc/detail/301117133/?title=%E6%96%B0%E4%B8%96%E7%9B%B8&userType=PGC&tabIndex=1",
                           "dev_release_time": "2020-06-08 17:05:14",
                           "dev_is_new_user": 0
                        }
                     }]
                  }, {
                     "sdk": "http",
                     "data": {
                        "organization": "http",
                        "viewUrl": "",
                        "clickUrl": "https://api.eyepetizer.net/v1/card/metro/set_batch_item_exposure_watch_status_v2?uid=0&udid=06829385a649457613b93b7a987f0552590419c7&device_id=1d1a6550f74e9aa4e9e700d971a25431&exposure_status=watch&item_list=%5B%7B%22item_type%22%3A%22pgc_video%22%2C%22item_id%22%3A196406%7D%5D",
                        "playUrl": "",
                        "monitorPositions": "",
                        "needExtraParams": []
                     }
                  }]
               },
               "link": "eyepetizer://detail/196406",
               "tracking_params": {
                  "data_source": []
               }
            }]
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 1,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-t3551se0i1hj766l7elf5narrl"
   },
{
      "card_id": 44,
      "type": "call_metro_list",
      "style": {
         "padding": {
            "top": 0,
            "right": 0,
            "bottom": 7.5,
            "left": 0
         },
         "separator_line": {
            "top": {
               "color": "transparent",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            },
            "bottom": {
               "color": "#3a000000",
               "margin": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               },
               "height": 0
            }
         }
      },
      "interaction": {
         "scroll": "v-scroll"
      },
      "card_data": {
         "header": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         },
         "body": {
            "api_request": {
               "url": "https://api.eyepetizer.net/v1/card/metro/call_metro_list_v2",
               "params": {
                  "card": "{$q$card_id$q$:44,$q$type$q$:$q$call_metro_list$q$,$q$style$q$:{$q$padding$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:7.5,$q$left$q$:0},$q$separator_line$q$:{$q$top$q$:{$q$color$q$:$q$transparent$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0},$q$bottom$q$:{$q$color$q$:$q$#3a000000$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0}}},$q$interaction$q$:{$q$scroll$q$:$q$v-scroll$q$},$q$card_data$q$:{$q$header$q$:{$q$left$q$:[],$q$center$q$:[],$q$right$q$:[],$q$style$q$:{$q$padding$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0}}},$q$body$q$:{$q$metro_list$q$:[{$q$metro_id$q$:235,$q$material_id$q$:235,$q$type$q$:$q$video$q$,$q$start_time$q$:$q$2020-12-17 00:00:00$q$,$q$end_time$q$:$q$2030-01-01 00:00:00$q$,$q$alias_name$q$:$q$$q$,$q$allow_insert_above$q$:1,$q$style$q$:{$q$tpl_label$q$:$q$feed_cover_small_video$q$,$q$tpl_params$q$:{$q$redirect_type$q$:$q$$q$,$q$redirect_value$q$:0},$q$padding$q$:{$q$top$q$:7.5,$q$right$q$:15,$q$bottom$q$:7.5,$q$left$q$:15},$q$background$q$:{$q$color$q$:$q$#FFFFFF$q$},$q$separator_line$q$:{$q$top$q$:{$q$color$q$:$q$transparent$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0.5},$q$bottom$q$:{$q$color$q$:$q$transparent$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0.5}}},$q$data_source$q$:{$q$label$q$:$q$recommend_feed$q$,$q$params$q$:{$q$data_id$q$:0,$q$last_item_id$q$:10,$q$page_label$q$:$q$recommend$q$}},$q$tracking_params$q$:{$q$is_ad$q$:0},$q$tracking_data$q$:[]}]},$q$footer$q$:{$q$left$q$:[],$q$center$q$:[],$q$right$q$:[],$q$style$q$:{$q$padding$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0}}}},$q$tracking_params$q$:{$q$is_ad$q$:0},$q$alias_name$q$:$q$底部推荐 Feed$q$,$q$create_source$q$:$q$$q$,$q$special_pos$q$:$q$$q$,$q$allow_insert_card$q$:0,$q$allow_insert_above$q$:1,$q$start_time$q$:$q$2020-12-15 00:00:00$q$,$q$end_time$q$:$q$2030-01-01 00:00:00$q$,$q$tracking_data$q$:[],$q$card_unique_id$q$:$q$card-8sfve3f29gkntbbs5t07n36rqr$q$}",
                  "card_index": 8,
                  "material_index": 35,
                  "material_relative_index": 0,
                  "material": "{$q$metro_id$q$:235,$q$material_id$q$:235,$q$type$q$:$q$video$q$,$q$start_time$q$:$q$2020-12-17 00:00:00$q$,$q$end_time$q$:$q$2030-01-01 00:00:00$q$,$q$alias_name$q$:$q$$q$,$q$allow_insert_above$q$:1,$q$style$q$:{$q$tpl_label$q$:$q$feed_cover_small_video$q$,$q$tpl_params$q$:{$q$redirect_type$q$:$q$$q$,$q$redirect_value$q$:0},$q$padding$q$:{$q$top$q$:7.5,$q$right$q$:15,$q$bottom$q$:7.5,$q$left$q$:15},$q$background$q$:{$q$color$q$:$q$#FFFFFF$q$},$q$separator_line$q$:{$q$top$q$:{$q$color$q$:$q$transparent$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0.5},$q$bottom$q$:{$q$color$q$:$q$transparent$q$,$q$margin$q$:{$q$top$q$:0,$q$right$q$:0,$q$bottom$q$:0,$q$left$q$:0},$q$height$q$:0.5}}},$q$data_source$q$:{$q$label$q$:$q$recommend_feed$q$,$q$params$q$:{$q$data_id$q$:0,$q$last_item_id$q$:10,$q$page_label$q$:$q$recommend$q$}},$q$tracking_params$q$:{$q$is_ad$q$:0},$q$tracking_data$q$:[]}",
                  "data_source": "recommend_feed",
                  "last_item_id": 10,
                  "page_label": "recommend",
                  "page_params": "[]"
               }
            }
         },
         "footer": {
            "style": {
               "padding": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0
               }
            },
            "left": [],
            "center": [],
            "right": []
         }
      },
      "create_source": "",
      "special_pos": "",
      "allow_insert_card": 0,
      "allow_insert_above": 1,
      "tracking_data": {},
      "card_unique_id": "card-8sfve3f29gkntbbs5t07n36rqr"
   }],
   "float_entrance": [],
   "modal_list": [{
      "data": {
         "modal_id": "community_convention-v1",
         "bg_image": {
            "url": "",
            "img_info": {
               "width": 345,
               "height": 460,
               "scale": 0.75
            }
         },
         "body": {
            "url": "https://h5.eyepetizer.net/v1/app-dialog?content_url=https%3A%2F%2Fwww.eyepetizer.net%2Fcommunity_convention.html&id=community_convention-v1",
            "corner_radius": 0,
            "width_ratio": 0.85,
            "scale": 0.75
         },
         "enable_cancel": false,
         "show_duration": 0,
         "show_rule": "only_show_once",
         "redirect_url": ""
      },
      "tracking_data": {
         "show": [{
            "sdk": "sensors",
            "data": {
               "element_content_id": "community_convention-v1",
               "element_content_type": "modal",
               "action_url": ""
            }
         }],
         "click": [{
            "sdk": "sensors",
            "data": {
               "element_content_id": "community_convention-v1",
               "element_content_type": "modal",
               "action_url": ""
            }
         }]
      }
   }]
}

"""
