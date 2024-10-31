@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Row(){
        // 左侧
        Column({
          space: 8
        }){
          Text('玩一玩')
            .fontSize(18)
            .fontWeight(700)
          Text('签到兑礼 | 超多大奖 超好玩')
            .fontSize(12)
            .fontColor('#999')
        }
        .alignItems(HorizontalAlign.Start)
        // 右侧
        // 这边不加 Column 其实也是可以的，但是个人觉得为了规范还是加上去，因为你要想，在一个Row中，是不同的Column组合而成的
        Column(){
          Row(){
            Image($r('app.media.tree'))
              .width(50)
              .backgroundColor('#efefef')
              .borderRadius(5)
            Image($r('app.media.ic_arrow_right'))
              .width(24)
              .fillColor('#999')
          }
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 15,
        right: 15
      })
      .width('100%')
      .height(80)
      .backgroundColor('#fff')
      .borderRadius(5)

      Row(){
        // 需要注意的是，在一个Row中横向排列的都是一个个的Column，但是每个组件本身就是一个Column
        // 但是在每一个 Column 中，每个组件又是一个个的Row，可以将 Column、Row 看做是制定主轴方向，而每个组件根据这个主轴方向判定自身是inline-block还是block
        Row(){// 不管是Column还是Row，因为在一个Row里面，所以都是inline的形式
          Text('文本内容1')
          Text('文本内容2')
        }
        Column(){
          Text('文本内容3')
          Text('文本内容4')
        }
      }
      .width('100%')
      .height(80)
      .backgroundColor('#fff')
      .borderRadius(5)
      .margin({top: 8})
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}