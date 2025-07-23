package mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.agenteAduanal
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="mx.com.proquifa.proquifanet.modelo.catalogos.agenteAduanal.LugarAgenteAduanal")]
	[Bindable]
	public class LugarAgenteAduanal
	{
		private var _id_lugarAgente:Number;
		private var _lugarAgente:String;
		private var _direccion1:String;
		private var _direccion2:String;
		private var _pais:String;
		private var _ciudad:String;
		private var _estado:String;
		private var _cp:String;
		private var _monto:Number=0;
		private var _porcentaje:Number=0;
		private var _FK01_AgenteAduanal:Number;
		private var _fua:Date
		private var _lugarConceptos:ArrayCollection
		private var _limiteConsolidacion:Number = 0;
		
		
		//variables para vista
		private var _lugarAgenteAbreviatura:String;
		
		
		public function LugarAgenteAduanal()
		{
		}

		public function get id_lugarAgente():Number
		{
			return _id_lugarAgente;
		}

		public function set id_lugarAgente(value:Number):void
		{
			_id_lugarAgente = value;
		}

		public function get lugarAgente():String
		{
			return _lugarAgente;
		}

		public function set lugarAgente(value:String):void
		{
			_lugarAgente = value;
			
			if(value.toLocaleLowerCase() == "aeropuerto")
				_lugarAgenteAbreviatura = "AICM";
			else if(value.toLocaleLowerCase() == "laredo")
				_lugarAgenteAbreviatura = "LRD";
			else if(value.toLocaleLowerCase() == "san diego")
				_lugarAgenteAbreviatura = "SNDGO";
		}

		public function get direccion1():String
		{
			return _direccion1;
		}

		public function set direccion1(value:String):void
		{
			_direccion1 = value;
		}

		public function get direccion2():String
		{
			return _direccion2;
		}

		public function set direccion2(value:String):void
		{
			_direccion2 = value;
		}

		public function get pais():String
		{
			return _pais;
		}

		public function set pais(value:String):void
		{
			_pais = value;
		}

		public function get ciudad():String
		{
			return _ciudad;
		}

		public function set ciudad(value:String):void
		{
			_ciudad = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get cp():String
		{
			return _cp;
		}

		public function set cp(value:String):void
		{
			_cp = value;
		}

		public function get monto():Number
		{
			return _monto;
		}

		public function set monto(value:Number):void
		{
			_monto = value;
		}

		public function get porcentaje():Number
		{
			return _porcentaje;
		}

		public function set porcentaje(value:Number):void
		{
			_porcentaje = value;
		}

		public function get FK01_AgenteAduanal():Number
		{
			return _FK01_AgenteAduanal;
		}

		public function set FK01_AgenteAduanal(value:Number):void
		{
			_FK01_AgenteAduanal = value;
		}

		public function get fua():Date
		{
			return _fua;
		}

		public function set fua(value:Date):void
		{
			_fua = value;
		}

		public function get lugarAgenteAbreviatura():String
		{
			return _lugarAgenteAbreviatura;
		}

		public function set lugarAgenteAbreviatura(value:String):void
		{
			_lugarAgenteAbreviatura = value;
		}

		public function get lugarConceptos():ArrayCollection
		{
			return _lugarConceptos;
		}

		public function set lugarConceptos(value:ArrayCollection):void
		{
			_lugarConceptos = value;
		}

		public function get limiteConsolidacion():Number
		{
			return _limiteConsolidacion;
		}

		public function set limiteConsolidacion(value:Number):void
		{
			_limiteConsolidacion = value;
		}


	}
}