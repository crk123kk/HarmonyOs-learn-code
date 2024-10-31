@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column(){
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({width: 2})
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({width: 2})
        .margin(5)
      Text()
        .width(200).height(100)
        .backgroundColor(Color.Pink)
        .border({width: 2})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    // 设置排布主方向的对齐方式（主轴）
    // justifyContent (枚举 FlexAlign) 提示快捷键：ctrl + p \ cmd + p
    // 1、 start: （排布主方向）主轴起始位置对齐
    // 2、 Center: 主轴居中对齐
    // 3、 End: 主轴结束位置对齐
    // 4、 spaceBetween: 贴边显示，中间的元素均匀分布间隙
    // 5、 spaceAround: 间隙环绕，靠边只有一半的间隙
    // 6、 spaceEvenly: 间隙均匀环绕，靠边也是完整的一份间隙
    .justifyContent(FlexAlign.SpaceEvenly)
  }
}