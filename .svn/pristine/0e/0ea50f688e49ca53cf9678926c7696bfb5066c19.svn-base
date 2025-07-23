package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	public class UtilsFormatoMoneda
	{
		
		
		
		public function UtilsFormatoMoneda()
		{
		}
		
		public static const SIMBOLO_DOLARES:String ="$"; 
		public static const SIMBOLO_DOLARES_CANADIENSES:String ="$"; 
		public static const SIMBOLO_MONEDA_NACIONAL:String ="$"; 
		public static const SIMBOLO_EUROS:String ="€"; 
		public static const SIMBOLO_LIBRAS:String ="£"; 
		public static const SIMBOLO_YENES:String ="¥"; 
		
		public static const ABREVIATURA_DOLARES:String = "Dls";
		public static const ABREVIATURA_MONEDA_NACIONAL:String = "M.N.";
		public static const ABREVIATURA_EUROS:String = "EUR";
		public static const ABREVIATURA_LIBRAS:String = "Lbs";
		public static const ABREVIATURA_YENES:String = "Yns";
		public static const ABREVIATURA_DOLARES_CANADIENSES:String = "DlCan";
		public static const ABREVIATURA_FRANCO_SUIZO:String = "CHF";
		
		/**
		 * funcion publica que determina el simbolo de la moneda
		 */ 
		public static function determinaMoneda($tipoMoneda:String, $valorDefault:String ="sin coincidencias"):String{

			var moneda:String = $tipoMoneda.toLowerCase();
			if( moneda == "pesos" || moneda=="m.n." || moneda=="dolares" || moneda=="usd" || moneda=="dlcan" || 
				moneda=="mn"|| moneda=="dolar" || moneda=="dls"){
				$valorDefault = "$"
			}else if( moneda=="euros" || moneda=="eur" || moneda== "euro" ){
				$valorDefault = "€";
			}else if( moneda=="libras" || moneda=="libra" || moneda=="lbs"){
				$valorDefault = "£";
			}else if( moneda=="yenes" || moneda=="yen" || moneda=="yns"){
				$valorDefault = "¥";
			}else if( moneda=="franco suizo" || moneda=="chf"){
				$valorDefault = "CHF";
			}
			return $valorDefault;
		}
		public static function monedaGenerica($tipoMoneda:String, $valordefault:String='sin coincidencias'):String{
			
			var moneda:String = $tipoMoneda.toLowerCase();
			if( moneda=="pesos" || moneda=="m.n." || moneda=="mn"){
				$valordefault = "M.N.";
			}else if( moneda=="eur" || moneda=="euros" ){
				$valordefault = "EUR";
			}else if( moneda=="libras" || moneda=="libra" ){
				$valordefault = "Lbs";
			}else if( moneda=="yenes" || moneda=="yen" ){
				$valordefault = "Yns";
			}else if( moneda=="dolares" || moneda=="usd"){
				$valordefault = "Dls";
			}else if( moneda=="dlcan"){
				$valordefault = "DlCan";
			}else if( moneda=="chf"){
				$valordefault = "CHF";
			}
			
			return $valordefault;
		}
		
		public static function iva():Number{
			var iva:Number = .16;
			return iva;
		}
		
	}
}