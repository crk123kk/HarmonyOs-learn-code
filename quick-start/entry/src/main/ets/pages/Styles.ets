
// 全局定义
@Styles function commonStyles() {
  .width(100)
  .height(100)
}

@Entry
@Component
struct Index {

  @State message: string = '@Styles'
  @State bgColor: ResourceColor = Color.Gray

  // 组件内定义 可以访问内部状态
  @Styles setBg() {
    .backgroundColor(this.bgColor)
    .onClick(() => {
      this.bgColor = Color.Orange
    })
  }

  build() {
    Column({space: 10}){
      Text(this.message)
        .commonStyles()
        .fontColor(Color.White)
        .setBg()

      Column(){}
      .commonStyles()
      .setBg()

      Button('按钮')
        .commonStyles()
        .setBg()
    }
    .width('100%')
    .height('100%')
  }
}



















