@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text()
        .fontColor(Color.White)
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.flower'))
          // 坐标的单位和元素宽高的默认单位不同的，所以显示的时候和实际是会有区别的
        .backgroundImagePosition({
          x:vp2px(150),
          y:vp2px(100)
        }) // 图片左上角的位置距离原点的位置
    }
  }
}