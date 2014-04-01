package chart
{
	import util.OpenWindowUtil;
	import flash.external.ExternalInterface;
	
	public final class ChartUtil
	{
		public static function doNavigate(begCity:String, endCity:String, name:String, day:String, host:String) : void
		{
			if (name == "去程")
			{
				OpenWindowUtil.openWindow(host+begCity+"-"+endCity+".html?departDate="+day, "_blank");
				//navigateToURL(new URLRequest(encodeURI("/"+c1+"-"+c2+".html?departDate="+e.hitData.item.day)), "_blank");
			}
			else
			{
				OpenWindowUtil.openWindow(host+endCity+"-"+begCity+".html?departDate="+day, "_blank");
				//navigateToURL(new URLRequest(encodeURI("/"+c2+"-"+c1+".html?departDate="+e.hitData.item.day)), "_blank");
			}
		}
		
		public static function goSiteName(begCity:String, endCity:String, name:String, day:String, siteId:String, code:String) : void
		{
			var c1:String;
			var c2:String;
			if (name == "去程")
			{
				c1 = begCity;
				c2 = endCity;
			}
			else
			{
				c1 = endCity;
				c2 = begCity;
			}
			
			ExternalInterface.call('TourBao.Utils.loggerNewWindow', 'ud_flight', siteId, c1, c2, day, '', 
					'/urlRedirect.do?type=flight&siteId=' + siteId
					+ '&departCity=' + c1 + '&destCity=' + c2 + '&flyDate='
					+ day + '&code=' + code);
		}
	}
}