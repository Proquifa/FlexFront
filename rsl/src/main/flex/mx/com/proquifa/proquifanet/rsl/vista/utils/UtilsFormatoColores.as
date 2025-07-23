package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import mx.graphics.SolidColor;

	public class UtilsFormatoColores
	{
		
		public function UtilsFormatoColores()
		{
		}
		public static function colorVerdeGraficaPie():SolidColor{
			var colorSeleccionado:SolidColor = new SolidColor(); 
			colorSeleccionado.color = 0xFF0000;
			return colorSeleccionado;
		}
		public static function colorRojoGraficaPie():SolidColor{
			var colorSeleccionado:SolidColor = new SolidColor(); 
			colorSeleccionado.color = 0xFF0000;
			return colorSeleccionado;
		}
	}
}