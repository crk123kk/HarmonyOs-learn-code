@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text('待完善')
        .padding(5)
        .border({
          width: 1,
          color: Color.Red,
          style: BorderStyle.Dotted
        })
        .margin(20)
      Text('单边框')
        .padding(10)
        .border({
          width:{
            left:1,
            right: 2
          },
          color: {left: Color.Red, right: Color.Green},
          style: {left: BorderStyle.Dashed, right: BorderStyle.Solid}
        })
        .margin({
          bottom: 15
        })
      Text('圆角')
        .width(100)
        .height(60)
        .backgroundColor(Color.Orange)
        .borderRadius(15)
        .borderRadius({
          topLeft: 12,
          topRight: 15,
          bottomLeft:30,
          bottomRight: 20
        })
      Text('正圆')
        .width(150)//宽高一样
        .height(150)
        .backgroundColor(Color.Gray)
        .borderRadius(75)
      Image($r('app.media.cat'))
        .width(100)
        .height(100)
        .borderRadius(50)
      Text('胶囊按钮')
        .width(240)
        .height(50)
        .borderRadius(25)
        .backgroundColor(Color.Pink)
        .margin({top: 15})
        .textAlign(1)
    }
  }
}