@Entry
@Component
struct Index {
  @State message: string = 'Hello Harmony';

  build() {
    // 布局内容：先排版、再内容
    Column({
      // 控制组件间的距离
      space: 10
    }){
      // 文本输入框
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      })
        .type(InputType.Password)
      // 按钮
      Button('登录')
        .width(200)
    }
  }
}