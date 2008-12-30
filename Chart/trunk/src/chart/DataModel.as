package chart
{
	import mx.collections.ArrayCollection;
	
	public final class DataModel
	{
		private static var _allData:ArrayCollection;
		
		private static var _summaryData:Object;
		
		private static var _cityBegin:String;
		
		private static var _cityEnd:String;
		
		private static var _host:String;
		
		public static function initAllData(data:ArrayCollection, summaryData:Object, c1:String, c2:String, host:String):void
		{
			_allData = data;
			_summaryData = summaryData;
			_cityBegin = c1;
			_cityEnd = c2;
			_host = host;
		}
		
		public static function get cityBegin():String
		{
			return _cityBegin;
		}
		
		public static function get cityEnd():String
		{
			return _cityEnd;
		}
		
		public static function get host():String
		{
			return _host;
		}
		
		public static function get allData():ArrayCollection
		{
			return _allData;
		}
		
		public static function get summaryData():Object
		{
			return _summaryData;
		}
		
		public static function getItem(date:String):Object
		{
			for (var i:int=0; i<_allData.length; i++)
			{
				if (date == _allData.getItemAt(i).day)
				{
					return _allData.getItemAt(i);
				}
			}
			
			return null;
		}
	}
}