import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/tilecard.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/travel_dao.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/travel_model.dart';

const String url ="https://m.ctrip.com/restapi/soa2/16189/json/searchTripShootListForHomePageV2?_fxpcqlniredt=09031010211161114530&__gw_appid=99999999&__gw_ver=1.0&__gw_from=10650013707&__gw_platform=H5";
const String groupChannelCode = "tourphoto_global1";
const int type = 1;
const int pageIndex = 1;
const int pageSize = 10;

class TravelPageViewWidget extends StatefulWidget{
  Map params;
  _TravelPageViewWidget createState() => _TravelPageViewWidget();

  TravelPageViewWidget({this.params});


}

class  _TravelPageViewWidget extends State<TravelPageViewWidget>{
  String result = "";
  ScrollController _scrollController = new ScrollController();

  TravelModel travelModel;
  @override
  void initState() {
    super.initState();
    _getData();
  }
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      child: new StaggeredGridView.countBuilder(
        controller: _scrollController,
        itemCount: travelModel?.resultList?.length??0,
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        itemBuilder: (context, index) => TileCard(
          img: '${travelModel?.resultList[index]?.article?.images[0].originalUrl}',
          title: '${travelModel?.resultList[index]?.article?.articleTitle}',
          author: '${travelModel?.resultList[index]?.article?.author?.nickName}',
          authorUrl: '${travelModel?.resultList[index]?.article?.author?.coverImage}',
          type: 'EXISE',
          worksAspectRatio: 20.0,
        ),
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      ),
      
    );
  }

  void _getData() async{
    
   var travelModel = await TravelDao.fetch(url, params, groupChannelCode, type, pageIndex, pageSize);
   setState(() {
     this.travelModel = travelModel;
   });
  }
  
  
  
}