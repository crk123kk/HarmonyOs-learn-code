
interface ImageCount {
  url: string
  count: number
}

@Entry
@Component
struct Index {

  build() {
    Column(){
      // 轮播内容
      Swiper(){
        Text('1')
        Text('2')
        Text('3')
      }
      // 设置尺寸（内容会自动拉伸）
      .width('100%')
      .height(100)
      .aspectRatio(2)

      Swiper(){
        Image($r('app.media.ic_swiper_xmyp01'))
        Image($r('app.media.ic_swiper_xmyp02'))
        Image($r('app.media.ic_swiper_xmyp03'))
        Image($r('app.media.ic_swiper_xmyp04'))
      }
      .width('100%')
      .height(150)
      .loop(true)
      .autoPlay(true)
      .interval(1000)
      .vertical(true)
      // 定制小圆点
      // .indicator(false)
      .indicator(
        Indicator.dot()
      )
    }
  }
}



















