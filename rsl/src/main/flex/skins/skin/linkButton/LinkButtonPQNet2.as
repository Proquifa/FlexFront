package skins.skin.linkButton
{
	import spark.components.Button;
	import spark.skins.SparkButtonSkin;
	
	
	/*[Style(name="fontSizeLink", type="uint", format="int", inherit="no", theme="spark, mobile")]*/
	public class LinkButtonPQNet2 extends Button
	{
		private var _dateNC:String;
		public function LinkButtonPQNet2()
		{
			//TODO: implement function
			super();
			buttonMode = true;
		}
		[Bindable]
		public function get dateNC():String
		{
			return _dateNC;
		}

		public function set dateNC(value:String):void
		{
			_dateNC = value;
		}

		override public function set enabled(value:Boolean):void{
			super.enabled= value;
			buttonMode = value;
		}
	}
}