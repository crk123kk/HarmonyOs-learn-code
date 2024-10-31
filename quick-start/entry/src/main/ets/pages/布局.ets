@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text('小说简介')
        .width('100%')
        .height(40)
        .fontSize(20)
        .fontWeight(FontWeight.Bolder)
      Row(){
        Text('都市')
          .width(50)
          .height(30)
          .backgroundColor(Color.Orange)
        Text('生活')
          .width(50)
          .height(30)
          .backgroundColor(Color.Pink)
        Text('情感')
          .width(50)
          .height(30)
          .backgroundColor(Color.Yellow)
        Text('男频')
          .width(50)
          .height(30)
          .backgroundColor(Color.Gray)
      }
      .width('100%')
    }
  }
}