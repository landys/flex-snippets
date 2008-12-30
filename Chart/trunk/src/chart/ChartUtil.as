package chart
{
	import util.OpenWindowUtil;
	
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
	}
}