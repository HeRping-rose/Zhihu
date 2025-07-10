import { ReplyItem, ReplyItemModel } from "../models";

@Preview
@ComponentV2
struct HmCommentItem {
  @Param item: ReplyItemModel=new ReplyItemModel({} as ReplyItem);
  @Event onLike:()=>void =()=>{}
  build() {
    Column(){
      Row({space: 10}){
        Image(this.item.avatar)
          .width(60)
          .height(60)
          .borderRadius('50%')
        Column({space: 10}){
          Text(this.item.author)
            .width('100%')
            .fontSize(24)
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.Black)
            .textAlign(TextAlign.Start)
          Text(this.item.content)
            .width('100%')
          .fontSize(14)
          .fontColor(Color.Black)
          Row(){
            Row(){
              Text(this.item.time)
                .fontSize(12)
                .fontColor(Color.Gray)
              Text('.IP属地' + this.item.area)
                .fontSize(12)
                .fontColor(Color.Gray)
            }

            Row(){
              if(!this.item.likeFlag){
                Image($rawfile('like_gray.svg'))
                  .width(20)
                  .height(20)
              }else{
                Image($rawfile('like_red.svg'))
                  .width(20)
                  .height(20)
              }

              Text(this.item.likeNum.toString())
              .fontSize(12)
              .fontColor(Color.Gray)
            }
            .onClick(()=>{
              this.onLike()
              // this.item.likeFlag = !this.item.likeFlag;
              // this.item.likeNum = this.item.likeFlag ? this.item.likeNum + 1 : this.item.likeNum - 1;
            })
          }.width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .layoutWeight(1)

      }
      .padding(10)
      .width('100%')
    }
  }
}

export { HmCommentItem }