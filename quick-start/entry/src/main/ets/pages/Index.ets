
interface ImageCount {
  url: string
  count: number
}

@Entry
@Component
struct Index {

  // 数据
  @State images: ImageCount[] =[
    {url: 'app.media.bg_00', count: 0},
    {url: 'app.media.bg_01', count: 0},
    {url: 'app.media.bg_02', count: 0},
    {url: 'app.media.bg_03', count: 0},
    {url: 'app.media.bg_04', count: 0},
    {url: 'app.media.bg_05', count: 0},
  ]
  // 控制遮罩的显示和隐藏
  @State maskOpacity: number = 0 // 透明度
  // 控制遮罩层级
  @State maskZIndex : number = -1

  // 控制图片的缩放
  @State maskImgX: number = 0
  @State maskImgY: number = 0

  // 随机的生肖卡序号
  @State randomIndex: number = 0

  // 控制中大奖的遮罩的显示隐藏
  @State isGet: boolean = false

  // 奖池
  @State arr: string[] = ['pg', 'hw', 'xm']
  // 默认没中奖
  @State prize: string = ''

  build() {

    Stack(){
      Column(){
        Grid(){
          ForEach(this.images, (item: ImageCount, index) => {
            GridItem() {
              Badge({
                count: item.count,
                position: BadgePosition.RightTop,
                style: {
                  fontSize: 14,
                  badgeSize: 20,
                  badgeColor: '#fa2a2d'
                }
              }){
                Image($r(item.url))
                  .width(80)
              }
            }
          })
        }
        .width('100%')
        .height(300)
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .columnsGap(5)
        .rowsGap(5)
        .margin({top: 20})

        Button('立即抽卡')
          .width(200)
          .backgroundColor('#ed5b8c')
          .margin({top: 50})
          .onClick(() => {
            // 计算随机数，获取要得到的图片的图标
            // 要乘以6，否则 5 就取不到
            this.randomIndex = Math.floor(Math.random() * 6)

            // 点击时，修改遮罩参数,让遮罩显示
            this.maskOpacity = 1
            this.maskZIndex = 99
            // 让图片放大显示
            this.maskImgX = 1
            this.maskImgY = 1
          })
      }
      .width('100%')
      .height('100%')

      // 抽卡遮罩
      Column({space: 30}){
        Text('获取生肖卡')
          .fontColor('#f5ebcf')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
        Image($r(`app.media.img_0${this.randomIndex}`))
          .width(200)
          .scale({
            x: this.maskImgX,
            y: this.maskImgY
          })
          .animation({
            duration: 500
          })

        Button('开心收下')
          .width(200)
          .height(50)
          .backgroundColor(Color.Transparent)
          .border({width: 2, color: '#fff9e0'})
          .onClick(() => {
            // 将获取到的图片进行更新状态
            // 对象需要更新的时候，需要替换整个对象
            this.images[this.randomIndex] = {
              url: `app.media.img_0${this.randomIndex}`,
              // ++ 和 +1 是不同的， ++得到的可能是字符串，+1得到的就是数值
              count: this.images[this.randomIndex].count + 1
            }

            // 恢复状态，重置
            this.maskOpacity = 0
            this.maskZIndex = -1
            this.maskImgX = 0
            this.maskImgY = 0

            // 判断是否集齐卡片，是否抽中大奖
            this.isGet = this.images.every((item: ImageCount, index, arr) => item.count != 0)

            if(this.isGet) {
              let arrIdx = Math.floor(Math.random()*3)
              this.prize = this.arr[arrIdx]
            }

          })
      }
      .width('100%')
      .height('100%')
      // 颜色十六进制色值，如果是八位，前两位就是透明度
      .backgroundColor('#cc000000')
      .justifyContent(FlexAlign.Center)
      // 设置透明度
      .opacity(this.maskOpacity)
      .zIndex(this.maskZIndex)
      // 添加动画 当元素有状态的改变的时候，可以添加 animation 的动画
      .animation({
        duration: 500
      })

      // 抽到大奖的遮罩层
      if(this.isGet) {
        Column({space: 30}){
          Text('恭喜获得手机一部')
            .fontColor('#f5ebcf')
            .fontSize(25)
            .fontWeight(700)
          Image($r(`app.media.${this.prize}`))
            .width(300)
          Button('再来一次')
            .width(200)
            .height(50)
            .backgroundColor(Color.Transparent)
            .border({width: 2, color: '#fff9e0'})
            .onClick(() => {
              this.isGet = false
              this.prize = ''
              this.images = [
                {url: 'app.media.bg_00', count: 0},
                {url: 'app.media.bg_01', count: 0},
                {url: 'app.media.bg_02', count: 0},
                {url: 'app.media.bg_03', count: 0},
                {url: 'app.media.bg_04', count: 0},
                {url: 'app.media.bg_05', count: 0},
              ]
            })
        }
        .width('100%')
        .height('100%')
        .backgroundColor('#cc000000')
        .justifyContent(FlexAlign.Center)
      }
    }
  }
}



















