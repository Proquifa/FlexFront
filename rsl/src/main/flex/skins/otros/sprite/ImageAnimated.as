package skins.otros.sprite
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.utils.setTimeout;
	
	import mx.core.BitmapAsset;
	
	import spark.components.Group;
	import spark.components.Image;
	
	
	/**
	 * Es para crear una imagen animada, mediante la transición de imagenes, utilizando un Sprite. 
	 * 
	 *<p>Argumentos:
	 * <ul>
	 * 		<li> imagen   | example:  imagen="@Embed('/rsl/src/main/flex/skins/otros/sprite/assets/esperarSprite.png')". Argumento nescesario </li>
	 * 		<li> frames  |  example: frames="8" </li>
	 * 		<li> speedAnimation |  example: speedAnimation="90" </li>
	 * 		<li> usarPrimerPixelColorComoTransparente  | example: usarPrimerPixelColorComoTransparente="true" </li>
	 * </ul>
	 * </p>
	 * 
	 *  <p>The ImageAnimated contiene características por default como las siguientes:</p>
	 *  <table class="innertable">
	 *     <tr><th>Characteristic</th><th>Description</th></tr>
	 *     <tr><td>frames</td><td>1</td></tr>
	 *     <tr><td>usarPrimerPixelColorComoTransparente size</td><td>false</td></tr>
	 *     <tr><td>speedAnimation</td><td>10</td></tr>
	 *  </table>
	 * **/
	public class ImageAnimated extends Group
	{
		private var _bitmapData:BitmapData = null;
		private var _frameWidth:Number=0;
		private var _frameHeight:Number=0;
		private var _imagenSpark:Image;
		private var seguirAnimando:Boolean;
		public var _bitmapAsset:BitmapAsset;
		private var framePlaying:uint =0;
		
		//Variables que se llenan desde al MXML
		private var _imagen:Object;
		private var _frames:int = 1;
		private var _usarPrimerPixelColorComoTransparente:Boolean = false;
		private var _speedAnimation:uint = 10;
		
		public function ImageAnimated()
		{
			super();
			_imagenSpark = new Image();
			addElement(_imagenSpark);
		}
		
		public function GraphicsResource():void
		{
			_bitmapData = _bitmapAsset.bitmapData;
			
			if(_usarPrimerPixelColorComoTransparente){
				useFirstPixelAsTransparentColor();
			}
			_frameWidth = _bitmapData.width / frames;
			_frameHeight = _bitmapData.height;
		}
		
		/*		protected function createBitmapData(image:Object):BitmapData
		{
		var bitmap:BitmapData = new BitmapData(image.width, image.height);
		bitmap.draw(image as DisplayObject);
		return bitmap;
		}*/
		
		public function play():void
		{
			seguirAnimando = true;
			framePlaying =0;
			
			if(_imagen != null){
				GraphicsResource();
				var firtsFrame:BitmapData;
				firtsFrame= frameBitmapData(framePlaying);
				_imagenSpark.source = new Bitmap(firtsFrame);
			}
			start();
		}
		
		private function start():void
		{
			if(seguirAnimando && framePlaying <_frames){
				var currentFrame:BitmapData = frameBitmapData(framePlaying);
				_imagenSpark.source = new Bitmap(currentFrame);				
				framePlaying ++;
				setTimeout(start,_speedAnimation);
			}else{
				if(seguirAnimando){
					framePlaying = 0;
					start();
				}
			}
		}
		
		public function stop():void
		{
			seguirAnimando = false;
		}
		
		public function frameBitmapData(frameIdx:int):BitmapData
		{
			if(frameIdx < 0 || frameIdx >= _frames) { 
				throw new Error("index out of bounds")
				seguirAnimando = false;
			}
			
			var xOffset:int = _frameWidth * frameIdx;
			var yOffset:int = 0;
			
			var bmpData:BitmapData;
			bmpData = new BitmapData(_frameWidth, _frameHeight, true, 0);
			bmpData.copyPixels(_bitmapData,new Rectangle(xOffset,yOffset,_frameWidth, _frameHeight), new Point(0,0));
			return bmpData;   
		}
		
		public function useFirstPixelAsTransparentColor():void
		{
			var pixelValue:uint = _bitmapData.getPixel32(1,1);
			var w:int = _bitmapData.width;
			var h:int = _bitmapData.height;
			var bmpData:BitmapData = new BitmapData(w, h, true, 0);
			bmpData.copyPixels(_bitmapData,new Rectangle(0,0,w, h), new Point(0,0));
			// threshold se usa para convertir todos los pixeles senejandes al obtenido en transparentes
			bmpData.threshold(_bitmapData, _bitmapData.rect, new Point(0,0), "==", pixelValue, 0);
			_bitmapData = bmpData;
		}
		
		public function get imagen():Object
		{
			return _imagen;
		}
		
		public function set imagen(value:Object):void
		{
			_imagen = value;
			var myClass:Class = value as Class;
			_bitmapAsset = new myClass();
		}
		public function get frames():int
		{
			return _frames;
		}
		
		public function set frames(value:int):void
		{
			_frames = value;
		}
		
		public function get usarPrimerPixelColorComoTransparente():Boolean
		{
			return _usarPrimerPixelColorComoTransparente;
		}
		
		public function set usarPrimerPixelColorComoTransparente(value:Boolean):void
		{
			_usarPrimerPixelColorComoTransparente = value;
		}
		
		public function get speedAnimation():uint
		{
			return _speedAnimation;
		}
		
		public function set speedAnimation(value:uint):void
		{
			_speedAnimation = value;
		}
		
		
	}
}