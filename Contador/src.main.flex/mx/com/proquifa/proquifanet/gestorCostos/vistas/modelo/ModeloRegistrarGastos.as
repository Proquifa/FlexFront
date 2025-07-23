package mx.com.proquifa.proquifanet.gestorCostos.vistas.modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.comun.PartidaPedido;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	public class ModeloRegistrarGastos extends EventDispatcher
	{
		
		
		///////////////////////////// OBTIENE NUMERO PENDIENTES  ///////////////////////////// 
		private var numeroPendientes:ArrayCollection;
		public function setObtenerPendientesGestorCompras(data:ArrayCollection):void
		{
			var temp:ArrayCollection = new ArrayCollection();
			var arrayAux:Array;
			var objectAux:Object = new Object();
			objectAux.pendiente = "";
			objectAux.conteo = "";
			if(data.length != 0){
				for(var x:int=0; x < data.length; x++){
					arrayAux = (data[x] as String).split("/");
					objectAux.pendiente = arrayAux[0];
					objectAux.conteo = arrayAux[1];
					temp.addItem(ObjectUtil.copy(objectAux));
				}
			}
			/*else{
			temp = new ArrayCollection();
			}*/
			numeroPendientes = temp;
			dispatchEvent(new Event("obtenerNumeroDePendientesModeloGestorCompras"));
		}
		
		[Bindable(event="obtenerNumeroDePendientesModeloGestorCompras")]
		public function get enviarObtenerPendientesGestorCompras():ArrayCollection
		{
			return numeroPendientes;
		}
		
		//////////////////  OBTINE ORDEN DE DESPACHOS Registrar Gastos   //////////////////
		private var _agentesAduanalesRG:ArrayCollection;//
		private var agenteAduanalPieRG:ArrayCollection;//
		private var proveedoresPieRG:ArrayCollection;//
		private var ordenesRG:ArrayCollection;//
		/*private var universoOrdenes:ArrayCollection;*/
		public var _sqlAcuseRG:Query;
		public function setObtenerOrdenDespachosRegistrarGastos($ordenes:ArrayCollection):void
		{
			var punterosAgentes:Array;
			var punterosProvee:Array;
			var numFila:int = 1;
			var queryProvee:Query;
			var punteros:Array;
			var orden:PartidaPedido;
			if($ordenes == null)
				_agentesAduanalesRG = new ArrayCollection();
			else
			{
				/*universoOrdenes = ObjectUtil.copy($ordenes) as ArrayCollection;*/
				ordenesRG = ObjectUtil.copy($ordenes) as ArrayCollection;
				var resumenAgente:ResumenConsulta = new ResumenConsulta();
				var resumenProveedor:ResumenConsulta = new ResumenConsulta();
				_agentesAduanalesRG = new ArrayCollection();
				punterosAgentes = new Array();
				agenteAduanalPieRG = new ArrayCollection();
				////////////////////////////////Agentes Aduanales///////////////////////////////
				_sqlAcuseRG = new Query($ordenes,["agenteAduanal"],true);
				punterosAgentes = _sqlAcuseRG.getPunteros(["agenteAduanal"]);
				
				resumenAgente.totalAgentesAduanales = punterosAgentes.length;
				//var _sqlAuxProvee:Query;
				for each (var agente:String in punterosAgentes) 
				{
					resumenAgente = new ResumenConsulta();
					orden = new PartidaPedido();
					punteros = _sqlAcuseRG.getPunteros([agente]);
					orden = ObjectUtil.copy(_sqlAcuseRG.universo.getItemAt(punteros[0])) as PartidaPedido;
					resumenAgente = new ResumenConsulta();
					resumenAgente.etiqueta = agente.toUpperCase();
					orden.numFila = numFila;
					orden.totalOD = _sqlAcuseRG.getPunteros([agente],"pedimento").length;
					orden.totalProveedores= _sqlAcuseRG.getPunteros([agente],"nombreProveedor","nombreProveedor").length;
					resumenAgente.totalPedimentos = _sqlAcuseRG.getPunteros([agente],"pedimento").length;
					resumenAgente.totalAgentesAduanales = 1;
					orden.totalPiezas = resumenAgente.piezasTotal = _sqlAcuseRG.getSumarCampo('cant',punteros);
					orden.totalMonto = resumenAgente.monto = _sqlAcuseRG.getSumarCampo('montoUnitario',punteros);
					
					_agentesAduanalesRG.addItem(orden);
					agenteAduanalPieRG.addItem(resumenAgente);
					
					numFila++;
				}
				////////////////////////////////Totales Proveedores///////////////////////////////
				queryProvee = new Query($ordenes,["nombreProveedor"],true);
				punterosProvee = queryProvee.getPunteros(["nombreProveedor"]);
				proveedoresPieRG= new ArrayCollection();
				var cont:int = 0;
				for each (var proveedores:String in punterosProvee) 
				{
					punteros = new Array();
					punteros = queryProvee.getPunteros([proveedores]);
					resumenProveedor = new ResumenConsulta();
					resumenProveedor.etiqueta = proveedores.toUpperCase();
					resumenProveedor.totalProveedores = 1;
					resumenProveedor.piezasTotal = queryProvee.getSumarCampo('cant',punteros);
					resumenProveedor.monto = queryProvee.getSumarCampo('montoUnitario',punteros);
					resumenProveedor.totalPedimentos = queryProvee.getPunteros([proveedores],"pedimento").length;
					/*	resumenProveedor.totalPedimentos =34;*/
					proveedoresPieRG.addItem(resumenProveedor);
					cont++;
				}
			}
			/*dispatchEvent(new Event("enviarODRegistrarGastos"));*/
			dispatchEvent(new Event("obtenerUniversoODModeloRegistrarGastos"));
			dispatchEvent(new Event("obtenerOrdenDespachosModeloRegistrarGastos"));
			dispatchEvent(new Event("obtenerTotalesPiesModeloRegistrarGastos"));
			dispatchEvent(new Event("obtenerTotalesPiesProveedorModeloRegistrarGastos"));
			/*dispatchEvent(new Event("obtenerUniversoParaElGridPedimento"));*/
		}
		[Bindable(event="obtenerOrdenDespachosModeloRegistrarGastos")]
		public function get obtenerOrdenDespachoRegistrarGastos():ArrayCollection
		{
			return _agentesAduanalesRG;
		}
		/*[Bindable(event="enviarODRegistrarGastos")]
		public function get enviarODRegistroGastos():ArrayCollection
		{
			return _agentesAduanalesRG;
		}*/
		[Bindable(event="obtenerUniversoODModeloRegistrarGastos")]
		public function get obtenerUniversoODRegistrarGastos():ArrayCollection
		{
			return ordenesRG;
		}
		[Bindable(event="obtenerTotalesPiesModeloRegistrarGastos")]
		public function get obtenerTotalesPiesRegistrarGastos():ArrayCollection
		{
			return agenteAduanalPieRG;
		}
		[Bindable(event="obtenerTotalesPiesProveedorModeloRegistrarGastos")]
		public function get obtenerTotalesPieProveedoresRegistrarGastos():ArrayCollection
		{
			return proveedoresPieRG;
		}
		/*[Bindable(event="obtenerUniversoParaElGridPedimento")]
		public function get obtenerUniversoParaElGridPedimento():ArrayCollection
		{
			return universoOrdenes;
		}*/
		
		///////////////////////////// OBTIENE RESPUESTA GUARDAR GASTOS  ///////////////////////////// 
		private var respuesta:Boolean;
		public function setObtenerRespuestaResgistrar(data:Boolean):void
		{
			respuesta = data;
			dispatchEvent(new Event("obtenerRespuestaRegistraGastosModeloGestorCompras"));
		}
		
		[Bindable(event="obtenerRespuestaRegistraGastosModeloGestorCompras")]
		public function get enviarRespuestaRegistrarGastos():Boolean
		{
			return respuesta;
		}
		
		///////////////////////////// OBTIENE RUTAS DE IMAGENES  ///////////////////////////// 
		private var listaImagenes:ArrayCollection;
		public function setListaRutasImagenes(data:ArrayCollection):void
		{
			if(data == null)
				return ;
			listaImagenes = data;
			dispatchEvent(new Event("obtenerImagenesPreviasRegistraGastos"));
		}
		
		[Bindable(event="obtenerImagenesPreviasRegistraGastos")]
		public function get enviarListaRutasImagenes():ArrayCollection
		{
			return listaImagenes;
		}
		
		
		///////////////////////////// OBTIENE MONTOS DE GASTOS  ///////////////////////////// 
		private var montosGastos:ArrayCollection;
		public function setMontosGastos(data:ArrayCollection):void
		{
			if(data == null)
				return ;
			montosGastos = data;
			dispatchEvent(new Event("obtenerMontosGastosRegistraGastos"));
		}
		
		[Bindable(event="obtenerMontosGastosRegistraGastos")]
		public function get enviarMontosGastos():ArrayCollection
		{
			return montosGastos;
		}
		
		/**
		 ************************************************************** error **************************************************************
		 */
		public function errorRegistrarGastos(objeto:Object):void
		{
			trace("ERROR REGISTRAR GASTOS")
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloRegistrarGastos(target:IEventDispatcher=null)
		{
			super(target);
		}
	}
}

