@Preview
@ComponentV2
struct HmNavBar {
  @Param title: string= "Title";
  build() {
    Column(){
      Row(){
        Image('/pages/assets/fanhui.svg')
          .width(15)
          .height(15)
        Text(this.title)
          .height('100%')
          .fontSize(25)
          .fontColor(Color.Black)
        Text('')
          .width(15)
          .height(15)
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      .padding({left:20,right:20})

    }
    .width('100%')
    .height(30)


  }
}

export { HmNavBar }