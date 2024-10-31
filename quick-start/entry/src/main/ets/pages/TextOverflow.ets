@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text('HarmonyOS开发初体验')
        .width('100%')
        .fontWeight(FontWeight.Bolder)
        .lineHeight(50)
        .fontSize(20)
      Text('方舟开发框架（简称ArkUi)为HarmonyOS应用的UI开发提供了完整的基础设施，包括简介的UI语法，丰富的UI功能（组件、布局、动画以及交互事件），以及实施界面预览工具等，可以支持开发者进行可视化界面开发。')
        .width('100%')
        .lineHeight(24)
        .textOverflow({
          overflow:TextOverflow.Ellipsis
        })
          // 必须配合maxLines才有效果
        .maxLines(3)
    }
    .width('100%')
  }
}