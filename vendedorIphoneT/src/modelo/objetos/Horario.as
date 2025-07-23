package modelo.objetos
{
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.Direccion;

	[Bindable]
	[RemoteClass (alias="mx.com.proquifa.proquifanet.modelo.comun.Horario")]
	public class Horario
	{
		private var _diario:Boolean;
		private var _diaDe1:String;
		private var _diaA1:String;
		private var _diaDe2:String;
		private var _diaA2:String;
		private var _lunes:Boolean;
		private var _luDe1:String;
		private var _luA1:String;
		private var _luDe2:String;
		private var _luA2:String;
		private var _martes:Boolean;
		private var _maDe1:String;
		private var _maA1:String;
		private var _maDe2:String;
		private var _maA2:String;
		private var _miercoles:Boolean;
		private var _miDe1:String;
		private var _miA1:String;
		private var _miDe2:String;
		private var _miA2:String;
		private var _jueves:Boolean;
		private var _juDe1:String;
		private var _juA1:String;
		private var _juDe2:String;
		private var _juA2:String;
		private var _viernes:Boolean;
		private var _viDe1:String;
		private var _viA1:String;
		private var _viDe2:String;
		private var _viA2:String;
		
		private var _tipo:String;
		private var _direccion:Direccion;
		
		private var _idCliente:Number;
		private var _idHorario:Number;
		private var _idDireccion:Number;
		
		
		private var _pLunes:ArrayCollection;
		private var _pMartes:ArrayCollection;
		private var _pMiercoles:ArrayCollection;
		private var _pJueves:ArrayCollection;
		private var _pViernes:ArrayCollection;
		private var _eliminar:Boolean;
		
		private var _borrar:Boolean;
		
		public function Horario()
		{
		}

		public function get viA2():String
		{
			return _viA2;
		}

		public function set viA2(value:String):void
		{
			_viA2 = value;
		}

		public function get viDe2():String
		{
			return _viDe2;
		}

		public function set viDe2(value:String):void
		{
			_viDe2 = value;
		}

		public function get viA1():String
		{
			return _viA1;
		}

		public function set viA1(value:String):void
		{
			_viA1 = value;
		}

		public function get viDe1():String
		{
			return _viDe1;
		}

		public function set viDe1(value:String):void
		{
			_viDe1 = value;
		}

		public function get viernes():Boolean
		{
			return _viernes;
		}

		public function set viernes(value:Boolean):void
		{
			_viernes = value;
		}

		public function get juA2():String
		{
			return _juA2;
		}

		public function set juA2(value:String):void
		{
			_juA2 = value;
		}

		public function get juDe2():String
		{
			return _juDe2;
		}

		public function set juDe2(value:String):void
		{
			_juDe2 = value;
		}

		public function get juA1():String
		{
			return _juA1;
		}

		public function set juA1(value:String):void
		{
			_juA1 = value;
		}

		public function get juDe1():String
		{
			return _juDe1;
		}

		public function set juDe1(value:String):void
		{
			_juDe1 = value;
		}

		public function get jueves():Boolean
		{
			return _jueves;
		}

		public function set jueves(value:Boolean):void
		{
			_jueves = value;
		}

		public function get miA2():String
		{
			return _miA2;
		}

		public function set miA2(value:String):void
		{
			_miA2 = value;
		}

		public function get miDe2():String
		{
			return _miDe2;
		}

		public function set miDe2(value:String):void
		{
			_miDe2 = value;
		}

		public function get miA1():String
		{
			return _miA1;
		}

		public function set miA1(value:String):void
		{
			_miA1 = value;
		}

		public function get miDe1():String
		{
			return _miDe1;
		}

		public function set miDe1(value:String):void
		{
			_miDe1 = value;
		}

		public function get miercoles():Boolean
		{
			return _miercoles;
		}

		public function set miercoles(value:Boolean):void
		{
			_miercoles = value;
		}

		public function get maA2():String
		{
			return _maA2;
		}

		public function set maA2(value:String):void
		{
			_maA2 = value;
		}

		public function get maDe2():String
		{
			return _maDe2;
		}

		public function set maDe2(value:String):void
		{
			_maDe2 = value;
		}

		public function get maA1():String
		{
			return _maA1;
		}

		public function set maA1(value:String):void
		{
			_maA1 = value;
		}

		public function get maDe1():String
		{
			return _maDe1;
		}

		public function set maDe1(value:String):void
		{
			_maDe1 = value;
		}

		public function get martes():Boolean
		{
			return _martes;
		}

		public function set martes(value:Boolean):void
		{
			_martes = value;
		}

		public function get luA2():String
		{
			return _luA2;
		}

		public function set luA2(value:String):void
		{
			_luA2 = value;
		}

		public function get luDe2():String
		{
			return _luDe2;
		}

		public function set luDe2(value:String):void
		{
			_luDe2 = value;
		}

		public function get luA1():String
		{
			return _luA1;
		}

		public function set luA1(value:String):void
		{
			_luA1 = value;
		}

		public function get luDe1():String
		{
			return _luDe1;
		}

		public function set luDe1(value:String):void
		{
			_luDe1 = value;
		}

		public function get lunes():Boolean
		{
			return _lunes;
		}

		public function set lunes(value:Boolean):void
		{
			_lunes = value;
		}

		public function get diaA2():String
		{
			return _diaA2;
		}

		public function set diaA2(value:String):void
		{
			_diaA2 = value;
		}

		public function get diaDe2():String
		{
			return _diaDe2;
		}

		public function set diaDe2(value:String):void
		{
			_diaDe2 = value;
		}

		public function get diaA1():String
		{
			return _diaA1;
		}

		public function set diaA1(value:String):void
		{
			_diaA1 = value;
		}

		public function get diaDe1():String
		{
			return _diaDe1;
		}

		public function set diaDe1(value:String):void
		{
			_diaDe1 = value;
		}

		public function get diario():Boolean
		{
			return _diario;
		}

		public function set diario(value:Boolean):void
		{
			_diario = value;
		}

		public function get tipo():String
		{
			return _tipo;
		}

		public function set tipo(value:String):void
		{
			_tipo = value;
		}

		public function get direccion():Direccion
		{
			return _direccion;
		}

		public function set direccion(value:Direccion):void
		{
			_direccion = value;
		}

		public function get idCliente():Number
		{
			return _idCliente;
		}

		public function set idCliente(value:Number):void
		{
			_idCliente = value;
		}

		public function get idHorario():Number
		{
			return _idHorario;
		}

		public function set idHorario(value:Number):void
		{
			_idHorario = value;
		}

		public function get pLunes():ArrayCollection
		{
			return _pLunes;
		}

		public function set pLunes(value:ArrayCollection):void
		{
			_pLunes = value;
		}

		public function get pMartes():ArrayCollection
		{
			return _pMartes;
		}

		public function set pMartes(value:ArrayCollection):void
		{
			_pMartes = value;
		}

		public function get pMiercoles():ArrayCollection
		{
			return _pMiercoles;
		}

		public function set pMiercoles(value:ArrayCollection):void
		{
			_pMiercoles = value;
		}

		public function get pJueves():ArrayCollection
		{
			return _pJueves;
		}

		public function set pJueves(value:ArrayCollection):void
		{
			_pJueves = value;
		}

		public function get pViernes():ArrayCollection
		{
			return _pViernes;
		}

		public function set pViernes(value:ArrayCollection):void
		{
			_pViernes = value;
		}

		public function get eliminar():Boolean
		{
			return _eliminar;
		}

		public function set eliminar(value:Boolean):void
		{
			_eliminar = value;
		}

		public function get idDireccion():Number
		{
			return _idDireccion;
		}

		public function set idDireccion(value:Number):void
		{
			_idDireccion = value;
		}

		public function get borrar():Boolean
		{
			return _borrar;
		}

		public function set borrar(value:Boolean):void
		{
			_borrar = value;
		}


	}
}