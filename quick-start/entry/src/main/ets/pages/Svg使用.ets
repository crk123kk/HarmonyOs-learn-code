@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Image($r('app.media.ic_late'))
        .width(50)
        .fillColor(Color.Orange)
    }
  }
}