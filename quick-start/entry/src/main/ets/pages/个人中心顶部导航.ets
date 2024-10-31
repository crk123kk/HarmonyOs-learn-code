@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    Column(){
      Row(){
        Image($r('app.media.ic_arrow_left'))
          .width(30)
        Text('个人中心')
        Image($r('app.media.ic_more'))
          .width(24)
      }
      .width('100%')
      .height(40)
      .backgroundColor(Color.White)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 10,
        right: 10
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}