@Entry
@Component
struct Index {

  @State titles: string[] = ['电子产品', '精品服饰', '母婴产品', '影音娱乐', '海外旅游']
  @State flag: boolean = true
  build() {

    Column(){
      if (!this.flag) {
        ForEach(this.titles, (item: string, index) => {
          Text(item)
            .fontSize(24)
            .fontWeight(700)
            .fontColor(Color.Orange)
            .width('100%')
            .padding(15)
        })
      }

    }
  }
}