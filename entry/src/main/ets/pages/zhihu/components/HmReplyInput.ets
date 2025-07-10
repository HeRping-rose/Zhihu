
@Preview
@ComponentV2
struct HmReplyinput {
  @Local content:string = ''
  @Event publishComment:(content:string)=>void  = () => {}
  build() {
    Row({space:10}){
      TextInput({text:$$this.content, placeholder:'请输入评论'})
        .layoutWeight(1)
        .borderRadius(20)
        .border({
          width:1,
          color:Color.Gray,
          style:BorderStyle.Solid
        })
        .onSubmit(()=> {
          if (this.content) {
            this.publishComment(this.content)
            this.content = ''
          }
        })
      Button('发布')
        .onClick(()=>{
          if (this.content) {
            this.publishComment(this.content)
            this.content = ''
          }
        })
    }
    .padding({left:20,right:20})
    .width('100%')
    .height(40)
  }
}
export {HmReplyinput}