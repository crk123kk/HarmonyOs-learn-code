@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 1、整体的Stack布局 + 底部的 tab
    Stack({
      alignContent: Alignment.Bottom
    }){
      // 主体
      Stack({
        alignContent: Alignment.Top
      }){
        // 头部
        Row(){
          // 左侧 定位+天气
          Column(){
            Text('北京').fontSize(18).fontColor('#fff')
            Text('晴 2°C').fontSize(12).fontColor('#fff')
            Image($r('app.media.zfb_head_down'))
              .width(12)
              .fillColor('#fff')
              .position({
                x:40,
                y:0
              })
          }

          // 中间 搜索框，自适应宽度
          Row(){
            Image($r('app.media.zfb_head_search'))
              .width(20)
              .fillColor('#666')
              .margin({left:5, right: 5})
            Text('北京交通一卡通')
              .layoutWeight(1)
            Text('搜索')
              .width(55)
              .fontColor('#5b73de')
              .fontWeight(700)
              .textAlign(TextAlign.Center)
              .border({
                width: {left: 1},
                color: '#ccc'
              })
          }
          .height(32)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .borderRadius(5)
          .margin({left: 25, right: 12})

          // 右边
          Image($r('app.media.zfb_head_plus'))
            .width(30)
            .fillColor('#fff')
        }
        .width('100%').height(60)
        .padding({left:10, right:10})
        .backgroundColor('#5b73de')
        .zIndex(1)

        // 主体页面 利用 Scroll 来实现内部滚动
        Scroll(){
          Column() {
            // top 快捷区域
            Row(){
              Column(){
                Image($r('app.media.zfb_top_scan'))
                  .width(36)
                  .fillColor('#FFF')
                Text('扫一扫')
                  .fontColor('#fff')
              }
              .layoutWeight(1)
              Column(){
                Image($r('app.media.zfb_top_pay'))
                  .width(36)
                  .fillColor('#FFF')
                Text('收付款')
                  .fontColor('#fff')
              }
              .layoutWeight(1)
              Column(){
                Image($r('app.media.zfb_top_travel'))
                  .width(36)
                  .fillColor('#FFF')
                Text('出行')
                  .fontColor('#fff')
              }
              .layoutWeight(1)
              Column(){
                Image($r('app.media.zfb_top_card'))
                  .width(36)
                  .fillColor('#FFF')
                Text('卡包')
                  .fontColor('#fff')
              }
              .layoutWeight(1)
            }
            .backgroundColor('#5b73de')
            .padding({top: 5, bottom: 15})

            // 主体区域
            Column(){
              // 导航区
              Column({space: 10}){
                Row(){
                  Column(){
                    Image($r('app.media.zfb_nav1'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('滴滴出行')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav2'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('生活缴费')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav3'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('股票')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav4'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('蚂蚁森林')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav5'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('手机充值')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                }
                Row(){
                  Column(){
                    Image($r('app.media.zfb_nav6'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('余额宝')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav7'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('花呗')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav8'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('飞猪旅行')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav9'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('淘票票')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav10'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('饿了么')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                }
                Row(){
                  Column(){
                    Image($r('app.media.zfb_nav11'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('读书听书')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav12'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('基金')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav13'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('直播广场')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav14'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('医疗健康')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                  Column(){
                    Image($r('app.media.zfb_nav15_more'))
                      .width(28)
                      .margin({bottom: 8})
                    Text('更多')
                      .fontSize(12)
                      .fontColor('#666')
                  }
                  .layoutWeight(1)
                }
              }
              .padding(10)

              // 产品区
              Row({space: 5}){
                Image($r('app.media.zfb_pro_pic1'))
                  .layoutWeight(1)
                Image($r('app.media.zfb_pro_pic2'))
                  .layoutWeight(1)
                Image($r('app.media.zfb_pro_pic3'))
                  .layoutWeight(1)
              }
              .padding(10)

              Column({space: 10}){
                Image($r('app.media.zfb_pro_list1'))
                  .width('100%')
                Image($r('app.media.zfb_pro_list2'))
                  .width('100%')
              }
              .padding(10)
            }
            .width('100%')
            .backgroundColor('#fff')
            .borderRadius({
              topLeft: 20,
              topRight: 20
            })

          }
          .width('100%')
          // 避免内部元素被头部和底部的导航栏遮盖
          .padding({top: 60, bottom: 60})
        }
      }
      .width('100%').height('100%')

      // 底部
      Row(){
        Column(){
          Image($r('app.media.zfb_tab_home'))
            .width(35)
        }
        .layoutWeight(1)
        Column(){
          Image($r('app.media.zfb_tab_money'))
            .width(28).margin({bottom: 2})
          Text('理财')
            .fontSize(12)
        }
        .layoutWeight(1)
        Column(){
          Image($r('app.media.zfb_tab_life'))
            .width(28).margin({bottom: 2})
          Text('生活')
            .fontSize(12)
        }
        .layoutWeight(1)
        Column(){
          Image($r('app.media.zfb_tab_chat'))
            .width(28).margin({bottom: 2})
          Text('消息')
            .fontSize(12)
        }
        .layoutWeight(1)
        Column(){
          Image($r('app.media.zfb_tab_me'))
            .width(28).margin({bottom: 2})
          Text('我的')
            .fontSize(12)
        }
        .layoutWeight(1)
      }
      .width('100%').height(60)
      .backgroundColor('#fbfcfe')
    }
    .width('100%').height('100%')
    .backgroundColor('#5b73de')
  }
}