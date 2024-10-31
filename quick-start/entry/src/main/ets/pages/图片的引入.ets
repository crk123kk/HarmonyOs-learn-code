@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      // 加载网络图片
      // Image('https://www.itheima.com/images/logo.png')
      //  .height(50)

      // 加载本地图片 app.media 指向的就是 resources 中的 media 资源
      Image($r('app.media.background'))
        .width(200)
      Row() {
        Image($r('app.media.startIcon'))
          .width(200)
      }
    }
  }
}