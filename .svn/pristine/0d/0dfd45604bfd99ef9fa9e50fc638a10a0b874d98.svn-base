package mx.com.proquifa.proquifanet.rsl.vista.vistas.componentes.pq.seleccionHorario.Clases
{
	import flash.display.Sprite;
	
	public class Celda extends Sprite
	{
		
		public static const CELDA_DEFAULT_WIDTH:Number = 110;
		public static const CELDA_DEFAULT_HEIGHT:Number = 15;
		
		/*public static const COLOR_VERDEAZUL:uint = 0x257d92;*/
		public static const COLOR_VERDEAZUL:uint = 0x2fa0bb;
		public static const COLOR_RED:uint = 0xCC0066;
		public static const COLOR_BLANCO:uint = 0xFFFFFF;
		public static const COLOR_GRIS:uint = 0xE1E1E1;
		public static const COLOR_GRIS_SUAVE:uint = 0xF3F3F3;
		
		
		private var _dinamicWidth:Number = CELDA_DEFAULT_WIDTH;
		private var _dinamicHeight:Number = CELDA_DEFAULT_HEIGHT;
		
		public var posicion_x:Number; 
		public var posicion_y:Number;
		
		public var px_offset:Number;
		public var py_offset:Number;
		
		public function Celda($px:int,$py:int,$dinWidth:Number,$dinHeight:Number)
		{
			super();
			
			posicion_x = $px;
			posicion_y = $py;
			_dinamicWidth = $dinWidth;
			_dinamicHeight = $dinHeight;
			
			px_offset = _dinamicWidth * posicion_x;
			py_offset = _dinamicHeight * posicion_y;
			setColor(COLOR_BLANCO);	
		}
		
		public function setColor($color:uint, $selected:Boolean = false):void
		{
			/*if ($selected ){*/
			graphics.clear();

			graphics.beginFill(COLOR_GRIS_SUAVE);
			graphics.lineStyle(1, COLOR_GRIS_SUAVE);
			graphics.moveTo(px_offset, py_offset + _dinamicHeight-2);
			graphics.lineTo(px_offset + _dinamicWidth, py_offset + _dinamicHeight-2);
			graphics.endFill();
			
			graphics.lineStyle(1, $color);
			graphics.beginFill($color);
			graphics.moveTo(px_offset, py_offset);
			graphics.lineTo(px_offset + _dinamicWidth, py_offset);
			graphics.lineTo(px_offset + _dinamicWidth, py_offset + _dinamicHeight - 3);
			graphics.lineTo(px_offset, py_offset + _dinamicHeight - 3);
			graphics.lineTo(px_offset, py_offset);
			graphics.endFill();
			
			
			/*
			graphics.clear();
			graphics.beginFill($color);
			graphics.moveTo(px_offset, py_offset);
			graphics.lineStyle(1, COLOR_GRIS_SUAVE);
			graphics.lineTo(px_offset + _dinamicWidth, py_offset);
			graphics.lineStyle(1, $color);
			graphics.lineTo(px_offset + _dinamicWidth, py_offset + _dinamicHeight);
			graphics.lineTo(px_offset, py_offset + _dinamicHeight);
			graphics.lineTo(px_offset, py_offset);
			graphics.endFill();
			*/
			
		}
		
		public function get dinamicWidth():Number
		{
			return _dinamicWidth;
		}
		
		public function set dinamicWidth(value:Number):void
		{
			_dinamicWidth = value;
		}
		
		public function get dinamicHeight():Number
		{
			return _dinamicHeight;
		}
		
		public function set dinamicHeight(value:Number):void
		{
			_dinamicHeight = value;
		}
		
		
	}
	
}