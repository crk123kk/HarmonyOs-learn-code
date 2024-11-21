

@Entry
@Component
struct Index {

  // 创建 Scroller 对象（实例化）
  myScroller: Scroller = new Scroller()

  build() {
    Column(){
      // 内部滚动
      // 绑定实例化对象，控制滚动条
      Scroll(this.myScroller) {
        Column({space: 10}){
          ForEach(Array.from({length: 10}), (item:string, index) => {
            Text('测试文本' + (index + 1))
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Orange)
              .fontSize(20)
              .fontColor(Color.White)
              .borderRadius(10)
          })
        }
      }
      .width('100%')
      .height(400)
      // 滚动方向
      .scrollable(ScrollDirection.Vertical)
      // 滚动条 On 一直显示 Off 一直隐藏 Auto 滑动显示
      .scrollBar((BarState.Auto))
      // 滚动条颜色
      .scrollBarColor(Color.Blue)
      // 滚动条宽度
      .scrollBarWidth(5)
      // 边缘滑动效果： None 无 Spring 弹簧 Fade 阴影
      .edgeEffect(EdgeEffect.Spring)
      .onScroll(() => {
        console.log('yOffset', this.myScroller.currentOffset().yOffset)
      })

      Button('控制滚动条位置').margin(20)
        .onClick(() => {
          this.myScroller.scrollEdge(Edge.Top)
        })
      Button('获取已经滚动的距离')
        .onClick(() => {
          const y = this.myScroller.currentOffset().yOffset
          AlertDialog.show({
            message: `y: ${y}`
          })
        })
    }
    .padding(10)
    .width('100%')
  }
}



















