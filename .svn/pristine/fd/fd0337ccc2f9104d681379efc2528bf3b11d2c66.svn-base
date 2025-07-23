package mx.com.proquifa.vista.modelo.registrarDespacho
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.OrdenDespacho;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	public class ModeloRegistrarDespacho extends EventDispatcher
	{
		
		private var odRegistradas:ArrayCollection;
		private var ordenesGraficaBarras:ArrayCollection;
		private var total:Object
		public static var query:Query;
		
		public function setOrdenDespachoRegistradas($data:ArrayCollection):void
		{
			var punterosAgentes:Array;
			var orden:OrdenDespacho;
			var punteros:Array;
			var numFila:int = 1;
			ordenesGraficaBarras = new ArrayCollection();
			total = new Object();
			total.urgente = 0;
			total.et = 0;
			total.ft = 0;
			total.urgentePiezasTotal = 0;
			total.etPiezasTotal = 0;
			total.ftPiezasTotal = 0;
			
			if($data == null || $data.length ==0){
				odRegistradas = new ArrayCollection();
				query = null;
			}
			else{
				punterosAgentes = new Array();
				odRegistradas = new ArrayCollection();
				query = new Query($data,["nombreAgenteAduanal","folio","nombreProveedor","enTiempo","fueraDeTiempo","urgente"],true);
				punterosAgentes = query.getPunteros(["nombreAgenteAduanal"]);
				
				for each (var agente:String in punterosAgentes) 
				{
					orden = new OrdenDespacho();
					punteros = query.getPunteros([agente]);
					
					orden = ObjectUtil.copy(query.universo.getItemAt(punteros[0])) as OrdenDespacho;
					orden.numFila = numFila;
					orden.totalOD = query.getPunteros([agente],"folio").length;
					orden.totalProveedores = query.getSumarCampo('totalProveedores',punteros);
					orden.totalPiezas = query.getSumarCampo('totalPiezas',punteros);
					orden.totalMonto = query.getSumarCampo('totalMonto',punteros);
					
					orden.totalEnTiempo = query.getSumarCampo('totalPartidasET',punteros);
					orden.totalFueraDeTiempo = query.getSumarCampo('totalPartidasFT',punteros);
					orden.totalUrgente = query.getSumarCampo('totalPartidasUR',punteros);
					
					numFila++;
					
					odRegistradas.addItem(orden);
				}
				//ARMA ARREGLO PARA GRAFICA DE TRANSITO
				for(var i:int=0;i<$data.length;i++){
					total.et += $data[i].totalPartidasET;
					total.etPiezasTotal += $data[i].totalPartidasET;
					
					total.ft += $data[i].totalPartidasFT;
					total.ftPiezasTotal += $data[i].totalPartidasFT;
					
					total.urgente+= $data[i].totalPartidasUR;
					total.urgentePiezasTotal += $data[i].totalPartidasUR;
				}
			}
			
			dispatchEvent(new Event("obtenerOrdenesRegistradas"));
			dispatchEvent(new Event("obtenerTotalesRegistrarDespacho"));
		}
		
		[Bindable(event="obtenerOrdenesRegistradas")]
		public function get obtenerOrdenDespachoRegistradas():ArrayCollection
		{
			return odRegistradas;
		}
		
		[Bindable(event="obtenerTotalesRegistrarDespacho")]
		public function get obtenerTotalesTrasito():Object
		{
			return total;
		}
		
		/////////////	OBTIENE PARTIDAS DE PRODUCTOS DE ORDENES DE DESPACHO REGISTRADAS   ///////////
		private var totalPie:ArrayCollection;
		public function setObtenerTotalesOrden($data:ArrayCollection):void
		{
			if($data == null)
				totalPie = new ArrayCollection();
			else{
				for(var i:int = 0;i<$data.length;i++){
					($data[i] as ResumenConsulta).totalProveedores = 1;
					($data[i] as ResumenConsulta).totalValorAduanal = ($data[i] as ResumenConsulta).monto;
					($data[i] as ResumenConsulta).piezasTotal = ($data[i] as ResumenConsulta).totalPiezas;
					($data[i] as ResumenConsulta).etiqueta = ($data[i] as ResumenConsulta).nombreProveedor;
				}
				totalPie = $data;
			}
			
			dispatchEvent(new Event("obtenerTotalesOrdenesRegistradas"));
		}
		[Bindable(event="obtenerTotalesOrdenesRegistradas")]
		public function get enviarTotalesOrden():ArrayCollection
		{
			return totalPie;
		}
		
		/////////////	OBTIENE PARTIDAS DE PRODUCTOS DE ORDENES DE DESPACHO REGISTRADAS   ///////////
		private var partidas:ArrayCollection;
		public function setPartidasDeOrden($data:ArrayCollection):void
		{
			partidas = $data;
			dispatchEvent(new Event("obtenerPartidasOrdenesRegistradas"));
		}
		[Bindable(event="obtenerPartidasOrdenesRegistradas")]
		public function get enviarPartidasDeOrden():ArrayCollection
		{
			return partidas;
		}
		
		/////////////	OBTIENE RESPUESTA DE CERRAR PENDIENTE DE ORDENES DE DESPACHO REGISTRADAS   ///////////
		private var respuesta:Boolean;
		public function setRespuestaCierreOrden(value:Boolean):void
		{
			respuesta = value;
			dispatchEvent(new Event("obtenerRespuestaCierreOrdenesRegistradas"));
		}
		[Bindable(event="obtenerRespuestaCierreOrdenesRegistradas")]
		public function get enviarRespuestaCierreOrden():Boolean
		{
			return respuesta;
		}
		
		/////////////	OBTIENE LA LISTA DE IMAGENES   ///////////
		private var listaImagenes:ArrayCollection;
		public function setListaImagenes($data:ArrayCollection):void
		{
			if($data != null)
				listaImagenes = $data;
			else
				listaImagenes = new ArrayCollection
			dispatchEvent(new Event("envirListaOrdenesRegistradas"));
		}
		[Bindable(event="envirListaOrdenesRegistradas")]
		public function get envirListaImagenes():ArrayCollection
		{
			return listaImagenes;
		}
		
		
		private var listaOrdenShipper:ArrayCollection;
		public function obtenerOrdenDespachoShiper($data:ArrayCollection):void
		{		
			if($data !=null){
				listaOrdenShipper = $data;
		
			} else{
				listaOrdenShipper = new ArrayCollection;
			}
			dispatchEvent(new Event("enviarOrdenDespachoShipperModeloRegistrar"));
			
		}
		
		[Bindable(event="enviarOrdenDespachoShipperModeloRegistrar")]
		public function get enviarOrdeDespachoShipper():ArrayCollection{
			return listaOrdenShipper;
		}
		/**
		 ************************************************************** error **************************************************************
		 */
		public function errorOrdenDespacho(objeto:Object):void
		{
			trace("ERROR ORDEN DESPACHO")
			trace("error de que??" +objeto.toString())
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloRegistrarDespacho(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		
	}
}

