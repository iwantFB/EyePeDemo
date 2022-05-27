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
