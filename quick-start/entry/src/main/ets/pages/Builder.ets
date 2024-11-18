
// 全局 Builder
@Builder
function navItem(icon: ResourceStr, txt: string) {
  Column({space: 10}) {
    Image(icon)
      .width('80%')
    Text(txt)
  }
  .width('25%')
  .onClick(() => {
    AlertDialog.show({
      message: '点了'
    })
  })
}

@Entry
@Component
struct Index {

  @State message: string = '@Builder'

  build() {
    Column({space: 20}){
      Text(this.message)
        .fontSize(30)

      Row(){
        Row(){
          navItem($r('app.media.zfb_pro_pic3'), '阿里')
          navItem($r('app.media.zfb_pro_pic3'), '百度')
          navItem($r('app.media.zfb_pro_pic3'), '腾讯')
          navItem($r('app.media.zfb_pro_pic2'), '字节')
        }
      }

    }
    .width('100%')
    .height('100%')
  }
}



















