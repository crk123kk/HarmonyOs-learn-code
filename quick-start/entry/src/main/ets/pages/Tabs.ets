

@Entry
@Component
struct Index {

  build() {
    Tabs({barPosition: BarPosition.Start}){
      TabContent(){
        Text('首页内容')
      }
      .tabBar('首页')
      TabContent(){
        Text('推荐内容')
      }
      .tabBar('推荐')
      TabContent(){
        Text('发现内容')
      }
      .tabBar('发现')
      TabContent(){
        Text('我的内容')
      }
      .tabBar('我的')
    }
    .vertical(false)
    // 是否开启手势滑动
    .scrollable(false)
    // 点击滑动的动画时间
    .animationDuration(0)
  }
}



















