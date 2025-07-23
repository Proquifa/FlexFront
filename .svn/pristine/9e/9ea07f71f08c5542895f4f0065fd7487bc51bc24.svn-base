package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.comun
{
	import spark.components.Group;
	import spark.primitives.Rect;
	
	public class GroupMenu extends Group
	{
		
		private var rec:Rect;
		public function GroupMenu()
		{
			super();
		}
		
		
		override protected function createChildren():void
		{
			super.createChildren();
		}
		
		private var _endX:Number;
		
		public function get endX():Number
		{
			return _endX;
		}
		
		public function set endX(value:Number):void
		{
			_startX = this.x;
			_endX = value;
		}
		
		private var _startX:Number;
		public function updateTween(elapsedTime:Number, duration:Number):void 
		{
			var tempX:Number = ExponentialEaseOut(elapsedTime, _startX, _endX - _startX, duration);
			this.x = tempX;
		}
		
		public static function ExponentialEaseOut(t:Number, b:Number, c:Number, d:Number):Number
		{
			return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
		}
	}
}