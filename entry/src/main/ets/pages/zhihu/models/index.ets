export interface ReplyItem{
  avatar:ResourceStr;//头像
  author:string;// 作者
  id:number;// id
  content:string;// 内容
  time:string;// 时间
  area:string;// 地区
  likeNum:number;// 点赞数
  likeFlag:boolean|null;// 是否点赞

}
@ObservedV2
export class ReplyItemModel implements ReplyItem{
  avatar:ResourceStr;//头像
  author:string;// 作者
  id:number;// id
  content:string;// 内容
  time:string;// 时间
  area:string;// 地区
  @Trace likeNum:number;// 点赞数
  @Trace likeFlag:boolean|null;// 是否点赞

  constructor(model:ReplyItem) {
    this.avatar = model.avatar;
    this.author = model.author;
    this.id = model.id;
    this.content = model.content;
    this.time = model.time;
    this.area = model.area;
    this.likeNum = model.likeNum;
    this.likeFlag = model.likeFlag;
  }



}