@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text('')
        .fontColor(Color.White)
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
          // .backgroundImage($r('app.media.flower'))
          // .backgroundImage($r('app.media.flower'), ImageRepeat.XY) // 是否平铺
        .backgroundImage($r('app.media.flower'))
          // 坐标的单位和元素宽高的默认单位不同的，所以显示的时候和实际是会有区别的
          // .backgroundImagePosition({x:100, y: 50}) // 图片左上角的位置距离原点的位置
        .backgroundImagePosition(Alignment.Center)
        .backgroundImageSize({
          width:50,
          height: 50
        })
        .backgroundImageSize(ImageSize.Cover)// 等比例缩放背景图，当宽或者高与组件尺寸相同停止缩放
        .backgroundImageSize(ImageSize.Contain)// 等比例缩放背景图至图片完全覆盖组件范围
    }
  }
}