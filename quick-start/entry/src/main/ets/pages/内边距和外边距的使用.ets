@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text('文字内容')
        .backgroundColor(Color.Orange)
          //.padding(20)
        .padding({
          top: 20,
          right: 10,
          bottom: 5,
          left: 10
        })
      Row(){
        Text('文字内容111')
          .backgroundColor(Color.Red)
        Text('文字内容222')
          .backgroundColor(Color.Orange)
            //.margin(20)
          .margin({
            top: 20,
            right: 10,
            bottom: 5,
            left: 10
          })
        Text('文字内容333')
          .backgroundColor(Color.Gray)
      }
    }
  }
}