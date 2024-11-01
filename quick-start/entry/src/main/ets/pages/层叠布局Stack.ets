@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 层叠布局
    Stack({
      alignContent: Alignment.Bottom
    }){
      Text('1')
        .width(250).height(250)
        .backgroundColor(Color.Green)
      Text('2')
        .width(150).height(150)
        .backgroundColor(Color.Orange)
      Text('3')
        .width(50).height(50)
        .backgroundColor(Color.Yellow)
    }
    .width(300).height(600)
    .backgroundColor(Color.Pink)
  }
}