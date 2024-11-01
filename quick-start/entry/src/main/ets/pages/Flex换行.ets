@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    Column() {
      Text('阶段选择')
        .fontSize(30)
        .fontWeight(700)
        .padding(15)
        .width('100%')
      Flex({
        wrap: FlexWrap.Wrap
      }){
        Text('ArkUI').margin(5).padding(10).backgroundColor('#dedede')
        Text('ArkTs').margin(5).padding(10).backgroundColor('#dedede')
        Text('界面开发').margin(5).padding(10).backgroundColor('#dedede')
        Text('系统能力').margin(5).padding(10).backgroundColor('#dedede')
        Text('权限控制').margin(5).padding(10).backgroundColor('#dedede')
        Text('元服务').margin(5).padding(10).backgroundColor('#dedede')
      }
    }
  }
}