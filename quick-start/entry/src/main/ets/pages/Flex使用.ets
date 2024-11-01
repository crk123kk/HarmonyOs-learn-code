@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // Flex默认主轴水平往右，交叉轴垂直往下 → Row
    // 1.主轴方向
    //    direction:FlexDirection.Row / Column
    // 2.主轴对齐方式
    //    justifyContent:FlexAlign.SpaceAround
    // 3.交叉轴对齐方式
    //    alignItems:ItemAlign.Stretch/Start/Center/End
    // 单行或者单列的情况，优先还是使用线性布局(本质基于FLex设计的，且还做了性能优化)
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.SpaceAround,
      alignItems: ItemAlign.Stretch
    }){
      Text('1')
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({width:1, color: Color.Blue})
        .textAlign(TextAlign.Center)
      Text('2')
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({width:1, color: Color.Blue})
        .textAlign(TextAlign.Center)
      Text('3')
        .width(80).height(80)
        .backgroundColor(Color.Pink)
        .border({width:1, color: Color.Blue})
        .textAlign(TextAlign.Center)
    }
    .width('100%').height('100%')
    .backgroundColor(Color.Green)
  }
}