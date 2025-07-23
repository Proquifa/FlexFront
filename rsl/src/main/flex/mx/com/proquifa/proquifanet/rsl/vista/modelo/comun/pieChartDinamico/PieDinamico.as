package mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.pieChartDinamico
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class PieDinamico
	{
		private var _lblTitulo:String="no definido";
		private var _subTitulo:String = "no definido";
		private var _tituloSize:int=15;// Tamaño de letra lblTitulo Default:15
		private var _tituloColor:uint = 0x000000;
		private var _tipoPie:int = 0;// 0 para pieSeriesPqNet, 1 para pieSeriesVS. Default:0
		private var _fila:int=0;// Cuando 'fila' es mayor de 0 crea otra fila (fila = HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'). Default:0
		[Inspectable(category="General", enumeration="vertical,horizontal", defaultValue="horizontal")]
		private var _orientacion:String="vertical";// ("vertical" "horizontal") "vertical" crea un VGroup, "horizontal" crea un HGroup contenedor de lblTitulo y PieChart
		[Inspectable(category="General", enumeration="0,1", defaultValue="0")]
		private var _ordenTitulo:int=0;// (0, 1) 0 Para que el titulo aparezca antes del pie, 1 para despues del pie Default:0
		[Inspectable(category="General", enumeration="0,1", defaultValue="0")]
		private var _posicionLabel:int=0;// (0, 1) 0 Para q no tenga etiquetas, 1 para labelPosition = callout
		[Inspectable(category="General", enumeration="true,false", defaultValue="false")]
		private var _sinTitulo:Boolean = false;// true = no mostrar titulo
		private var _margenLeft:int=0;// Margen izquierdo para el grupo que contiene el pieChart y el titulo. Default:0
		private var _margenRight:int=0;// Margen derecho para el grupo que contiene el pieChart y el titulo. Default:0
		private var _margenTop:int=0;// Margen superior para el grupo que contiene el pieChart y el titulo. Default:0
		private var _margenBottom:int=0;// Margen inferior para el grupo que contiene el pieChart y el titulo. Default:0
		
		private var _filaMargenIzquierdo:int=0; // Margen izquierdo que se aplica a la fila (fila=un HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'), debe declararse solo una vez, en caso de declararse mas de una vez se tomara el valor mas grande. Default:0
		private var _filaMargenDerecho:int=0;// Margen derecho que se aplica a la fila (fila=un HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'), debe declararse solo una vez, en caso de declararse mas de una vez se tomara el valor mas grande. Default:0
		[Inspectable(category="General", enumeration="bottom,middle,top", defaultValue="middle")]
		private var _verticalAlign:String="bottom";// ("bottom" "middle" "top") Esta propiedad se aplica al grupo q contiene el pie y el titulo. Default:"middle"
		[Inspectable(category="General", enumeration="left,center,right", defaultValue="center")]
		private var _horizontalAlign:String="center";// ("left" "center" "right") Esta propiedad se aplica al grupo que contiene el pie y el titulo. Default:"center"
		private var _arregloAlimentador:ArrayCollection = new ArrayCollection();// ArrayCollection que alimenta la grafica, debe tener las propiedades 'tipo' y 'total' en caso contrario no se llenara la grafica
		
		[Inspectable(category="General", enumeration="true,false", defaultValue="false")]
		private var _popUpHabilitado:Boolean = false;// Permite hacer clic sobre la grafica y desplegar un popup
		private var _infoGeneralDeLaGrafica:String = "No hay información disponible.";
		
		public function PieDinamico()
		{
		}

		public function get tituloColor():uint
		{
			return _tituloColor;
		}

		public function set tituloColor(value:uint):void
		{
			_tituloColor = value;
		}

		public function get subTitulo():String
		{
			return _subTitulo;
		}

		public function set subTitulo(value:String):void
		{
			_subTitulo = value;
		}

		public function get infoGeneralDeLaGrafica():String
		{
			return _infoGeneralDeLaGrafica;
		}

		public function set infoGeneralDeLaGrafica(value:String):void
		{
			_infoGeneralDeLaGrafica = value;
		}

		public function get popUpHabilitado():Boolean
		{
			return _popUpHabilitado;
		}

		public function set popUpHabilitado(value:Boolean):void
		{
			_popUpHabilitado = value;
		}

		public function get sinTitulo():Boolean
		{
			return _sinTitulo;
		}

		public function set sinTitulo(value:Boolean):void
		{
			_sinTitulo = value;
		}

		/**
		 * (0, 1) 0 Para que no tenga etiquetas, 1 para labelPosition = callout
		 */
		public function get posicionLabel():int
		{
			return _posicionLabel;
		}

		public function set posicionLabel(value:int):void
		{
			_posicionLabel = value;
		}

		/**
		 * (0, 1) 0 Para que el titulo aparezca antes del pie, 1 para despues del pie Default:0
		 */
		public function get ordenTitulo():int
		{
			return _ordenTitulo;
		}

		public function set ordenTitulo(value:int):void
		{
			_ordenTitulo = value;
		}
		/**
		 * Tamaño de letra lblTitulo Default:15
		 */
		public function get tituloSize():int
		{
			return _tituloSize;
		}

		public function set tituloSize(value:int):void
		{
			_tituloSize = value;
		}
		/**
		 * ArrayCollection que alimenta la grafica, debe tener las propiedades 'tipo' y 'total' en caso contrario no se llenara la grafica
		 */
		public function get arregloAlimentador():ArrayCollection
		{
			return _arregloAlimentador;
		}

		public function set arregloAlimentador(value:ArrayCollection):void
		{
			_arregloAlimentador = value;
		}
		/**
		 * ("right" "center" "left") Esta propiedad se aplica al grupo que contiene el pie y el titulo. Default:"center"
		 */
		public function get horizontalAlign():String
		{
			return _horizontalAlign;
		}
		public function set horizontalAlign(value:String):void
		{
			_horizontalAlign = value;
		}
		/**
		* ("bottom" "center" "top") Esta propiedad se aplica al grupo q contiene el pie y el titulo. Default:"middle"
		*/
		public function get verticalAlign():String
		{
			return _verticalAlign;
		}

		public function set verticalAlign(value:String):void
		{
			_verticalAlign = value;
		}
		/**
		 * Margen derecho que se aplica a la fila (fila=un HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'), debe declararse solo una vez, en caso de declararse mas de una vez se tomara el valor mas grande. Default:0
		 */
		public function get filaMargenDerecho():int
		{
			return _filaMargenDerecho;
		}
		public function set filaMargenDerecho(value:int):void
		{
			_filaMargenDerecho = value;
		}
		/**
		 * Margen izquierdo que se aplica a la fila (fila=un HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'), debe declararse solo una vez, en caso de declararse mas de una vez se tomara el valor mas grande. Default:0
		 */
		public function get filaMargenIzquierdo():int
		{
			return _filaMargenIzquierdo;
		}

		public function set filaMargenIzquierdo(value:int):void
		{
			_filaMargenIzquierdo = value;
		}
		/**
		 * Margen inferior para el grupo que contiene el pieChart y el titulo. Default:0
		 */
		public function get margenBottom():int
		{
			return _margenBottom;
		}

		public function set margenBottom(value:int):void
		{
			_margenBottom = value;
		}
		/**
		 * Margen superior para el grupo que contiene el pieChart y el titulo. Default:0
		 */
		public function get margenTop():int
		{
			return _margenTop;
		}
		
		public function set margenTop(value:int):void
		{
			_margenTop = value;
		}
		/**
		 * Margen derecho para el grupo que contiene el pieChart y el titulo. Default:0
		 */
		public function get margenRight():int
		{
			return _margenRight;
		}

		public function set margenRight(value:int):void
		{
			_margenRight = value;
		}
		/**
		 * Margen izquierdo para el grupo que contiene el pieChart y el titulo. Default:0
		 */
		public function get margenLeft():int
		{
			return _margenLeft;
		}

		public function set margenLeft(value:int):void
		{
			_margenLeft = value;
		}
		/**
		 * ("vertical" "horizontal") "vertical" crea un VGroup, "horizontal" crea un HGroup contenedor de lblTitulo y PieChart
		 */
		public function get orientacion():String
		{
			return _orientacion;
		}

		public function set orientacion(value:String):void
		{
			_orientacion = value;
		}
		/**
		 * Cuando 'fila' es mayor de 0 crea otra fila (fila = HGroup creado dinamicamente que contiene todas las graficas con el mismo valor en 'fila'). Default:0 
		 */
		public function get fila():int
		{
			return _fila;
		}

		public function set fila(value:int):void
		{
			_fila = value;
		}
		/**
		 * 0 para pieSeriesPqNet, 1 para pieSeriesVS. Default:0
		 */
		public function get tipoPie():int
		{
			return _tipoPie;
		}

		public function set tipoPie(value:int):void
		{
			_tipoPie = value;
		}
		public function get lblTitulo():String
		{
			return _lblTitulo;
		}

		/**
		 * @private
		 */
		public function set lblTitulo(value:String):void
		{
			_lblTitulo = value;
		}

	}
}