@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column({
      space: 8
    }){
      Image($r('app.media.m_user'))
        .width(100)
      Text('大王叫我来巡山')
        .fontSize(15)
        .fontWeight(FontWeight.Bold)
        .margin(10)
      Button('QQ登录')
        .width('100%')
        .margin({
          top: 15
        })
      Button('微信登录')
        .width('100%')
        .backgroundColor('#ddd')
        .fontColor(Color.Black)
    }
    .width('100%')
    .padding(16)
  }
}