@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Row() {
        Text('左侧')
          // 自适应伸缩，按照份数权重，分配剩余空间
          .layoutWeight(1)
        Text('右侧固定')
          .width(80)
          .height(40)
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')

      Row(){
        Text('111')
          .layoutWeight(1)
          .backgroundColor(Color.Gray)
        Text('222')
          .layoutWeight(2)
          .backgroundColor(Color.Orange)
        Text('333')
          .layoutWeight(3)
          .backgroundColor(Color.Pink)
      }
      .width(300)
      .height(40)
      .backgroundColor('#fff')
      .margin({top: 10})
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}