import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class AnalyticsService extends GetxService{
  FirebaseAnalytics? analytics;
  Future<AnalyticsService>init() async{
    analytics =FirebaseAnalytics.instance;
    
    return this;
  }
  
  logEvent() async{
    await FirebaseAnalytics.instance.logEvent(
      name: "select_content",
      parameters: {
        "content_type":"image",
        "item_id":"2322",
      },
      );
  }
}