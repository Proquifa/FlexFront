package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	import flash.utils.getTimer;
	
	import mx.collections.ArrayCollection;
	import mx.utils.ObjectUtil;
	
	public class UtilsGrid
	{
		public function UtilsGrid()
		{
		}
		/**
		 * SELECT * FROM $lista WHERE $nombreCampoBusqueda = $valorBusqueda 
		 * luego quita los repetidos dejando solo uno de cada $campo
		 */
		public static function queryQuitarRepetidosXDosCampos($lista:ArrayCollection, $valorBusqueda:String="", $nombreCampoBusqueda:String="", $campo:String=""):ArrayCollection
		{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayTemp2:ArrayCollection = new ArrayCollection();
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( arrayTemp[m][$nombreCampoBusqueda].toString() == $valorBusqueda ){
					arrayTemp2.addItem(arrayTemp[m]);
				}
			}
			while(arrayTemp2.length > 0){
				var tipo:String = arrayTemp2[0][$campo];
				arrayRegreso.addItem(arrayTemp2[0]);
				for( var h:int = 0; h<arrayTemp2.length; h++){
					if(tipo == arrayTemp2[h][$campo].toString() ){
						arrayTemp2.removeItemAt(h);
						h -= 1;
					}
				}
			}
			trace("queryQuitarRepetidosXDosCampos: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		/**
		 * Quitar repetidos dejando solo uno de cada $campo
		 */
		public static function queryQuitarRepetidos($lista:ArrayCollection, $campo:String=""):ArrayCollection
		{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			while(arrayTemp.length > 0){
				var tipo:String = arrayTemp[0][$campo];
				arrayRegreso.addItem(arrayTemp[0]);
				for( var h:int = 0; h<arrayTemp.length; h++){
					if( arrayTemp[h][$campo] != null ){
						if(tipo == arrayTemp[h][$campo].toString() ){
							arrayTemp.removeItemAt(h);
							h -= 1;
						}
					}
				}
			}
			trace("queryQuitarRepetidos: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		/**
		 * SELECT * FROM $lista WHERE $nombreCampoBusqueda = $valorBusqueda
		 */
		public static function queryCampoX($lista:ArrayCollection, $nombreCampoBusqueda:String="", $valorBusqueda:String=""):ArrayCollection{
			var time:Number = getTimer();
			var _sql:Query = new Query($lista,[$nombreCampoBusqueda]);
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			
			var tmp:Array = _sql.getPunteros([$valorBusqueda]);
			arrayRegreso = _sql.armarLista(tmp);
			trace("queryCampoX: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		
		/**
		 * SELECT * FROM $lista WHERE $nombreCampoBusqueda = $valorBusqueda
		 */
		public static function queryCampoXResp($lista:ArrayCollection, $nombreCampoBusqueda:String="", $valorBusqueda:String="", $diferente:Boolean = false):ArrayCollection{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var umFila:int = 1;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( arrayTemp[m][$nombreCampoBusqueda] != null ){
					if( $diferente == false){
						if( arrayTemp[m][$nombreCampoBusqueda].toString() == $valorBusqueda ){
							arrayTemp[m].numFila = umFila;
							arrayRegreso.addItem(arrayTemp[m]);
							umFila++;
						}
					}else{
						if( arrayTemp[m][$nombreCampoBusqueda].toString() != $valorBusqueda ){
							arrayTemp[m].numFila = umFila;
							arrayRegreso.addItem(arrayTemp[m]);
							umFila++;
						}
					}
				}
			}
			trace("queryCampoX: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		/**
		 * SELECT * FROM $lista WHERE $campo LIKE '$valor'
		 */
		public static function queryCampoXLike($lista:ArrayCollection, $campo:String="", $valor:String=""):ArrayCollection{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var umFila:int = 1;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( (arrayTemp[m] as Object)[$campo] != null ){
					if( arrayTemp[m][$campo].toString().toUpperCase().indexOf($valor.toUpperCase()) != -1 ){
						if (arrayTemp[m].hasOwnProperty("numFila"))
							arrayTemp[m].numFila = umFila;
						arrayRegreso.addItem(arrayTemp[m]);
						umFila++;
					}
				}
			}
			trace("queryCampoXLike: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}		/**
		 * SELECT * FROM $lista WHERE $campo LIKE '$valor'
		 */
		public static function queryCampoXLikeDosCampos($lista:ArrayCollection, $campo:String="",$campo2:String="", $valor:String=""):ArrayCollection{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var umFila:int = 1;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( (arrayTemp[m] as Object)[$campo] != null && (arrayTemp[m] as Object)[$campo2] != null ){
					if( arrayTemp[m][$campo].toString().toUpperCase().indexOf($valor.toUpperCase()) != -1 ||
						arrayTemp[m][$campo2].toString().toUpperCase().indexOf($valor.toUpperCase()) != -1 
					){
						arrayTemp[m].numFila = umFila;
						arrayRegreso.addItem(arrayTemp[m]);
						umFila++;
					}
				}
			}
			trace("queryCampoXLike: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		/**
		 * SELECT * FROM $lista WHERE $campo1 = $valor1 AND $campo2 = $valor2
		 */
		public static function queryADosCampos($lista:ArrayCollection,  $campo1:String, $valor1:String, $campo2:String, $valor2:String):ArrayCollection{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var umFila:int = 1;
			for(var g:int = 0;g < arrayTemp.length; g++){
				if( arrayTemp[g][$campo1] != null && arrayTemp[g][$campo2] != null ){
					if( arrayTemp[g][$campo1].toString() == $valor1 && 
						arrayTemp[g][$campo2].toString() == $valor2 ){
						arrayTemp[g].numFila = umFila;
						arrayRegreso.addItem(arrayTemp[g]);
						umFila++;
					}
				}
			}
			trace("queryADosCampos: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		/**
		 * SELECT min($campoFecha) FROM $lista
		 */
		public static function queryFechaMenor($lista:ArrayCollection,  $campoFecha:String):Date{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var fechaRegreso:Date = new Date();
			if(arrayTemp[0][$campoFecha].getTime() < 0) (arrayTemp[0][$campoFecha] as Date).setTime( arrayTemp[0][$campoFecha].getTime() * -1 );
			fechaRegreso = arrayTemp[0][$campoFecha];
			for(var g:int = 0;g < arrayTemp.length; g++){
				if( arrayTemp[g][$campoFecha] != null ){
					if(arrayTemp[g][$campoFecha].getTime() < 0) (arrayTemp[g][$campoFecha] as Date).setTime( arrayTemp[g][$campoFecha].getTime() * -1 );
					if( arrayTemp[g][$campoFecha].getTime() < fechaRegreso.getTime() ){
						fechaRegreso = arrayTemp[g][$campoFecha];
					}
				}
			}
			trace("queryFechaMenor: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return fechaRegreso;
		}
		/**
		 * SELECT max($campoFecha) FROM $lista
		 */
		public static function queryFechaMayor($lista:ArrayCollection,  $campoFecha:String):Date{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var fechaRegreso:Date = new Date();
			if(arrayTemp[0][$campoFecha].getTime() < 0) (arrayTemp[0][$campoFecha] as Date).setTime( arrayTemp[0][$campoFecha].getTime() * -1 );
			fechaRegreso = arrayTemp[0][$campoFecha];
			for(var g:int = 0;g < arrayTemp.length; g++){
				if( arrayTemp[g][$campoFecha] != null ){
					if(arrayTemp[g][$campoFecha].getTime() < 0) (arrayTemp[g][$campoFecha] as Date).setTime( arrayTemp[g][$campoFecha].getTime() * -1 );
					if( arrayTemp[g][$campoFecha].getTime() > fechaRegreso.getTime() ){
						fechaRegreso = arrayTemp[g][$campoFecha];
					}
				}
			}
			trace("queryFechaMayor: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return fechaRegreso;
		}
		////////////////////////////////////////////////////////////////////////////////////CONTEOS////////////////////////////////////////////////////////////////////////////////////
		/**
		 * SELECT count(*) FROM $lista WHERE $campo1 = $valor1 AND $campo2 = $valor2
		 */
		public static function conteoADosCampos($lista:ArrayCollection,  $campo1:String, $valor1:String, $campo2:String, $valor2:String):int{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var conteo:int = 0;
			for(var g:int = 0;g < arrayTemp.length; g++){
				if( arrayTemp[g][$campo1] != null &&
					arrayTemp[g][$campo2] != null){
					if( arrayTemp[g][$campo1].toString() == $valor1 && 
						arrayTemp[g][$campo2].toString() == $valor2) conteo += 1;
				}
			}
			trace("conteoADosCampos: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return conteo;
		}
		/**
		 * SELECT count(*) FROM $lista WHERE $campo1 = $valor1 AND $campo2 = $valor2 AND  $campo3 = $valor3
		 */
		public static function conteoATresCampos($lista:ArrayCollection,  $campo1:String, $valor1:String, $campo2:String, $valor2:String, $campo3:String, $valor3:String):int{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var conteo:int = 0;
			for(var g:int = 0;g < arrayTemp.length; g++){
				if(arrayTemp[g][$campo1] != null &&
					arrayTemp[g][$campo2] != null &&
					arrayTemp[g][$campo3] != null ){
					if( arrayTemp[g][$campo1].toString() == $valor1 && 
						arrayTemp[g][$campo2].toString() == $valor2 &&
						arrayTemp[g][$campo3].toString() == $valor3) conteo += 1;
				}
			}
			trace("conteoATresCampos: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return conteo;
		}
		/**
		 * SELECT count(*) FROM $lista WHERE $campo = $valor ---- si $diferente = true la consulta cambia a SELECT count(*) FROM $lista WHERE $campo != $valor
		 */
		public static function conteoCampoX($lista:ArrayCollection = null, $campo:String="", $valor:String="", $diferente:Boolean = false):int{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var conteo:int = 0;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if(arrayTemp[m][$campo] != null ){
					if( $diferente == true ){
						if( arrayTemp[m][$campo].toString() != $valor ) conteo += 1;
					}else{
						if( arrayTemp[m][$campo].toString() == $valor ) conteo += 1;
					}
				}
			}
			trace("conteoCampoX: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return conteo;
		}
		/**
		 * SELECT * FROM $lista WHERE $campo > $valor ---- si $diferente = true la consulta cambia a SELECT * FROM $lista WHERE $campo < $valor 
		 */
		public static function conteoCampoXMayorQueMenorQue($lista:ArrayCollection = null, $campo:String="", $valor:int=0, $diferente:Boolean = false):int{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var conteo:int = 0;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( arrayTemp[m][$campo] != null ){
					//if( $diferente == false){
					if( arrayTemp[m][$campo] > $valor  ) conteo += 1;
					//}else{
					//if( arrayTemp[m][$campo] < $valor  ) conteo += 1;
					//}
				}
			}
			trace("conteoCampoXMayorQueMenorQue: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return conteo;
		}
		/**
		 * Sumar todos los numeros de un campo
		 */
		public static function sumatoria($lista:ArrayCollection, $campo:String):Number{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var suma:Number = 0;
			for( var m:int = 0; m<arrayTemp.length; m++){
				if( arrayTemp[m][$campo] != null ) suma += (arrayTemp[m][$campo] as Number);
			}
			trace("sumatoria: "+(getTimer()-time)+"ms en "+$lista.length+" filas.");
			return suma;
		}
		
		/**
		 * SELECT * FROM $lista WHERE $campo LIKE '$valor' ... OR $campo LIKE '$valor'
		 */
		public static function queryCampoXLikeVariosCampos($lista:ArrayCollection, $campos:Array=null, $valor:String=""):ArrayCollection{
			var time:Number = getTimer();
			var arrayTemp:ArrayCollection = ObjectUtil.copy($lista) as ArrayCollection;
			var arrayRegreso:ArrayCollection = new ArrayCollection();
			var umFila:int = 1;
			for( var m:int = 0; m<arrayTemp.length; m++)
			{
				for each (var campo:String in $campos) 
				{
					if( (arrayTemp[m] as Object)[campo] != null  ){
						if( arrayTemp[m][campo].toString().toUpperCase().indexOf($valor.toUpperCase()) != -1 ){
							arrayTemp[m].numFila = umFila;
							arrayRegreso.addItem(arrayTemp[m]);
							umFila++;
							break;
						}
					}
				}
			}
			trace("queryCampoXLikeVariosCampos: "+(getTimer()-time)+"ms regresando "+arrayRegreso.length+" de "+$lista.length+" filas.");
			return arrayRegreso;
		}
		
		public static function numerarArreglo($datos:ArrayCollection):ArrayCollection
		{
			for (var i:int = 0; i < $datos.length; i++)
			{
				$datos[i].numFila = i + 1;
			}
			return $datos;
		}
		
		
		/**
		 * Regresa un arreglo unidireccional, de un bidireccional
		 */
		public static function generateArrayBiToArrayUni($collection:Array):Array
		{
			var arreTemp:Array = new Array()
			for ( var i:int=0;i<$collection.length;i++)
			{
				if ($collection[i].length > 1)
				{
					for(var j:int=0; j<$collection[i].length; j++)
					{
						arreTemp.push($collection[i][j]);
					}
				}
				else
					arreTemp.push($collection[i][0]);
			}
			return arreTemp;
		}
		
		
		public static function indexQueryCampoX($lista:ArrayCollection, $nombreCampoBusqueda:String="", $valorBusqueda:String=""):ArrayCollection{
			var arry:ArrayCollection = new ArrayCollection;
			for (var i:int = 0; i < $lista.length; i++) 
			{
				if ($lista[i][$nombreCampoBusqueda] == $valorBusqueda )
				{
					arry.addItem(i);
				}
			}
			return arry;
		}
	}
}