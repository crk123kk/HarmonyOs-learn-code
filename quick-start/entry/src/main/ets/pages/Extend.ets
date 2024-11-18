
// 针对需要扩展的组件来写装饰器内容，这里需要对文本内容进行装饰器修改，所以传入Text
@Extend(Text)
function textFn() {
  .fontSize(20)
  .fontWeight(FontWeight.Bold)
}

@Extend(Text)
function bannerItem(bgColor: ResourceColor, msg: string) {
  .textAlign(TextAlign.Center)
  .backgroundColor(bgColor)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}

@Entry
@Component
struct Index {

  @State message: string = '@Extend-扩展组件（样式、事件）'

  build() {
    Column(){
      Text(this.message)
        .textFn()

      Swiper() {
        Text('1')
          .bannerItem(Color.Orange, '轮播图1')
        Text('2')
          .bannerItem(Color.Blue, '轮播图2')
        Text('3')
          .bannerItem(Color.Pink, '轮播图3')
      }
      .width('100%')
      .height(200)
    }
  }
}



















