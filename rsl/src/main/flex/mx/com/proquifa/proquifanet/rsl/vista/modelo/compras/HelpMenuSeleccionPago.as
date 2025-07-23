package mx.com.proquifa.proquifanet.rsl.vista.modelo.compras
{
	public class HelpMenuSeleccionPago
	{
		
		private var _finicio:Date;
		private var _ffin:Date;
		
		private var _proveedor:Number;
		private var _pagador:Number;
		private var _estado:String;
		private var _comprador:Number;
		private var _compro:String;
		private var _factura:String;
		private var _moneda:String;
		private var _folioOC:String;
		
		private var _empresaCompro:String;
		private var _empresaVendio:String;
		
		//Generales
		private var _isBusquedaAvanzada:Boolean;
		private var _numFiltrosModificadosAvanzada:int;
		private var _keyModificadosAvanzada:Object;
		private var _numFiltrosModificadosRapida:int;
		private var _keyModificadosRapida:Object;
		
		private var _isActualizar:Boolean;
		private var _busquedaRapidacheck:Boolean;
		
		public function HelpMenuSeleccionPago()
		{
			_keyModificadosAvanzada = new Object;
			_keyModificadosRapida = new Object;
		}

		public function get finicio():Date
		{
			return _finicio;
		}

		public function set finicio(value:Date):void
		{
			_finicio = value;
		}

		public function get ffin():Date
		{
			return _ffin;
		}

		public function set ffin(value:Date):void
		{
			_ffin = value;
		}

		public function get proveedor():Number
		{
			return _proveedor;
		}

		public function set proveedor(value:Number):void
		{
			_proveedor = value;
		}

		public function get pagador():Number
		{
			return _pagador;
		}

		public function set pagador(value:Number):void
		{
			_pagador = value;
		}

		public function get estado():String
		{
			return _estado;
		}

		public function set estado(value:String):void
		{
			_estado = value;
		}

		public function get comprador():Number
		{
			return _comprador;
		}

		public function set comprador(value:Number):void
		{
			_comprador = value;
		}

		public function get compro():String
		{
			return _compro;
		}

		public function set compro(value:String):void
		{
			_compro = value;
		}

		public function get factura():String
		{
			return _factura;
		}

		public function set factura(value:String):void
		{
			_factura = value;
		}

		public function get moneda():String
		{
			return _moneda;
		}

		public function set moneda(value:String):void
		{
			_moneda = value;
		}

		public function get folioOC():String
		{
			return _folioOC;
		}

		public function set folioOC(value:String):void
		{
			_folioOC = value;
		}

		public function get isBusquedaAvanzada():Boolean
		{
			return _isBusquedaAvanzada;
		}

		public function set isBusquedaAvanzada(value:Boolean):void
		{
			_isBusquedaAvanzada = value;
		}

		public function get numFiltrosModificadosAvanzada():int
		{
			return _numFiltrosModificadosAvanzada;
		}

		public function set numFiltrosModificadosAvanzada(value:int):void
		{
			_numFiltrosModificadosAvanzada = value;
		}

		public function get keyModificadosAvanzada():Object
		{
			return _keyModificadosAvanzada;
		}

		public function set keyModificadosAvanzada(value:Object):void
		{
			_keyModificadosAvanzada = value;
		}

		public function get numFiltrosModificadosRapida():int
		{
			return _numFiltrosModificadosRapida;
		}

		public function set numFiltrosModificadosRapida(value:int):void
		{
			_numFiltrosModificadosRapida = value;
		}

		public function get keyModificadosRapida():Object
		{
			return _keyModificadosRapida;
		}

		public function set keyModificadosRapida(value:Object):void
		{
			_keyModificadosRapida = value;
		}

		public function get empresaCompro():String
		{
			return _empresaCompro;
		}

		public function set empresaCompro(value:String):void
		{
			_empresaCompro = value;
		}

		public function get empresaVendio():String
		{
			return _empresaVendio;
		}

		public function set empresaVendio(value:String):void
		{
			_empresaVendio = value;
		}

		public function get isActualizar():Boolean
		{
			return _isActualizar;
		}

		public function set isActualizar(value:Boolean):void
		{
			_isActualizar = value;
		}

		public function get busquedaRapidacheck():Boolean
		{
			return _busquedaRapidacheck;
		}

		public function set busquedaRapidacheck(value:Boolean):void
		{
			_busquedaRapidacheck = value;
		}


	}
}