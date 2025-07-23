package modelo.singletons.enRealizacion
{
	import modelo.objetos.PendientesMensajero;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.despachos.mensajero.PersonalAlmacenCliente;
	import mx.utils.ObjectUtil;

	public class DatosGlobalesEnRealizacion
	{
		
		private static var _instace:DatosGlobalesEnRealizacion;
		
		public function DatosGlobalesEnRealizacion()
		{
		}
		
		private var _contactosParaEdicionServicio:ArrayCollection;
		private var _contactosParaEdicionVista:Array;
		
		private var _contactosOriginales:ArrayCollection;
		
		private var _currentEmpresa:String;
		private var _currentIdEmpresa:Number;
		private var _currentEvento:String;
		private var _currentPendienteNoVerificado:PendientesMensajero;
		private var _currentPendientes:Array;
		private var _ponerLaSiguienteVista:String;
		
		private var _currentPendientesParaRealizacion:Array;
		
		public static function getInstance():DatosGlobalesEnRealizacion
		{
			if(_instace == null)
			{
				_instace = new DatosGlobalesEnRealizacion;
			}
			return _instace;
		}

		public function get contactosParaEdicionServicio():ArrayCollection
		{
			return _contactosParaEdicionServicio;
		}

		public function set contactosParaEdicionServicio(value:ArrayCollection):void
		{
			_contactosParaEdicionServicio = value;
		}

		public function get contactosParaEdicionVista():Array
		{
			return _contactosParaEdicionVista;
		}

		public function set contactosParaEdicionVista(value:Array):void
		{
			_contactosParaEdicionVista = value;
		}

		public function get contactosOriginales():ArrayCollection
		{
			return _contactosOriginales;
		}

		public function set contactosOriginales(value:ArrayCollection):void
		{
			var tempArray:Array = value.source;
			
			tempArray = tempArray.sort(ordenarPorNombre);
			
			_contactosOriginales = new ArrayCollection(tempArray);
			
			_contactosParaEdicionServicio = ObjectUtil.copy(value) as  ArrayCollection;
			_contactosParaEdicionVista = ObjectUtil.copy(value.source) as Array;
		}
		
		private function ordenarPorNombre(item1:PersonalAlmacenCliente,item2:PersonalAlmacenCliente):int
		{
			if(item1.nombre.toLowerCase() > item2.nombre.toLowerCase())
			{
				return 1;
			}
			else if(item1.nombre.toLowerCase() == item2.nombre.toLowerCase())
			{
				return 0;
			}
			else
			{
				return -1;
			}
		}

		public function get currentEmpresa():String
		{
			return _currentEmpresa;
		}

		public function set currentEmpresa(value:String):void
		{
			_currentEmpresa = value;
		}

		public function get currentIdEmpresa():Number
		{
			return _currentIdEmpresa;
		}

		public function set currentIdEmpresa(value:Number):void
		{
			_currentIdEmpresa = value;
		}

		public function get currentEvento():String
		{
			return _currentEvento;
		}

		public function set currentEvento(value:String):void
		{
			_currentEvento = value;
		}
		
		public function restablecerContactosOriginales():void
		{
			_contactosParaEdicionServicio = ObjectUtil.copy(_contactosOriginales) as  ArrayCollection;
			_contactosParaEdicionVista = ObjectUtil.copy(_contactosOriginales.source) as Array;
		}

		public function get currentPendientes():Array
		{
			return _currentPendientes;
		}

		public function set currentPendientes(value:Array):void
		{
			_currentPendientes = value;
		}

		public function get currentPendienteNoVerificado():PendientesMensajero
		{
			return _currentPendienteNoVerificado;
		}

		public function set currentPendienteNoVerificado(value:PendientesMensajero):void
		{
			_currentPendienteNoVerificado = value;
		}

		public function get currentPendientesParaRealizacion():Array
		{
			return _currentPendientesParaRealizacion;
		}

		public function set currentPendientesParaRealizacion(value:Array):void
		{
			_currentPendientesParaRealizacion = value;
		}

		public function get ponerLaSiguienteVista():String
		{
			return _ponerLaSiguienteVista;
		}

		public function set ponerLaSiguienteVista(value:String):void
		{
			_ponerLaSiguienteVista = value;
		}


	}
}