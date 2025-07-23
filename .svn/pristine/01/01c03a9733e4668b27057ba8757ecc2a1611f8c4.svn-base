package mx.com.proquifa.vista.modelo.gestionarBackOrder
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.MonitorearOcNoArribada;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.com.proquifa.vista.eventos.gestionarBackOrder.EventoGestionarBackOrder;
	import mx.utils.ObjectUtil;
	
	public class ModelogestionarBackOrder extends EventDispatcher
	{
		
		// ++++++++++++++++++++  OBTIENE LISTA DE RESUMEN OC  ++++++++++++++++++++
	
		private var resumenOC:ArrayCollection;
		private var resumenTotalOC:MonitorearOcNoArribada;
		private var resumenGraficaProveedor:ArrayCollection;
		private var resumenGraficaLineaProductos:ArrayCollection;
		private var listaBackOrder:ArrayCollection;
		private var totalesTiempoLista:ArrayCollection;
		private var resumenGraficaFlete:ArrayCollection;
		private var resumenGraficaEntrega:ArrayCollection;
		private var resumenGraficaOrigen:ArrayCollection;
		private var totalesSemaforoLista:ArrayCollection;
		private var ordenesCompra:ArrayCollection;
		private var historial:ArrayCollection;
		private var ultimaModificacion:ArrayCollection;
		private var total:Object
		private var totalLinea:Object
		public static var query:Query;
		public var universoPartidasBO:ArrayCollection = new ArrayCollection; 
		
		public function setObtenerFaltanteOD(data:ArrayCollection):void
		{   
			
			if(data == null)
			{
				listaBackOrder = new ArrayCollection();
			}
			else
			{
				
				listaBackOrder = data;	
				
				var punterosTodos:Array;
				resumenGraficaProveedor = new ArrayCollection();
				total = new Object();
				total.totalOC = 0;
				total.totalPiezas = 0;
				total.totalProductos = 0;
				total.totalMontos = 0;
				universoPartidasBO = ObjectUtil.copy(listaBackOrder) as ArrayCollection;
				ordenesCompra = new ArrayCollection();
				query = new Query(listaBackOrder,['nombreProveedor','todos','diasFiltrados','familia','origen']);
				
				var punteroProveedores:Array = query.getPunteros(['nombreProveedor'],'nombreProveedor');
				total.totalProveedores = punteroProveedores.length;
				for each (var proveedor:String in punteroProveedores) 
				{
					var punteros:Array = query.getPunteros([proveedor]);
					var punterosProductos:Array = query.getPunteros([proveedor],'idProducto');
					
					var orcompra:RegistroConfirmacion = ObjectUtil.copy(query.universo.getItemAt(punteros[0])) as RegistroConfirmacion;
					
					orcompra.montoTotal = query.getSumarCampo('montoTotal',punteros);
					orcompra.totalPiezas = query.getSumarCampo('totalPiezas',punteros);
					orcompra.totalProductos = orcompra.totalProductos = punterosProductos.length
					orcompra.totalOC = orcompra.totalOC = punteros.length;
					orcompra.nombreProveedor;
					ordenesCompra.addItem(orcompra);
					total.totalOC += orcompra.totalOC;
					total.totalPiezas += orcompra.totalPiezas;
					total.totalProductos += orcompra.totalProductos;
					total.totalMontos += orcompra.montoTotal;
				} 
				
				//////// TOTAL PROVEEDORES ////////////
				for each (var provee:String in punteroProveedores ) 
				{
					
					var tempReg:ResumenConsulta = new ResumenConsulta();
					var punterosTemp:Array;
					var punterosTempPro:Array;
					
					punterosTemp = query.getPunteros([provee]);
					punterosTempPro = query.getPunteros([provee],'idProducto');
					tempReg.etiqueta = provee.toUpperCase();
					tempReg.totalProveedores = 1;
					//tempReg.ocompras = tempReg.ocompras = punteros.length;
					tempReg.noProductos = punterosTempPro.length;
					tempReg.piezasTotal = query.getSumarCampo('totalPiezas',punterosTemp);
					tempReg.total = query.getSumarCampo('montoTotal',punterosTemp);
					resumenGraficaProveedor.addItem(tempReg);
				}
				
				/////////TOTALES  LIENA PRODUCTOS
				resumenGraficaLineaProductos = new ArrayCollection();
				punteroProveedores = query.getPunteros([null,null,null,'familia'],'familia');
				
				for each (var familiaA:String in punteroProveedores) 
				{
					
					var tempListaProductos:ResumenConsulta = new ResumenConsulta();
					var puntfamilia:Array;
					var puntfamiliaPro:Array;
					
					puntfamilia = query.getPunteros([null,null,null,familiaA]);
					puntfamiliaPro = query.getPunteros([null,null,null,familiaA],'idProducto');
					tempListaProductos.etiqueta = familiaA.toLocaleUpperCase();
					tempListaProductos.cantFamilia = 1;
					tempListaProductos.piezasTotal = query.getSumarCampo('totalPiezas',puntfamilia);
					tempListaProductos.monto = query.getSumarCampo('montoTotal',puntfamilia);
					tempListaProductos.noProductos = puntfamiliaPro.length;
					resumenGraficaLineaProductos.addItem(tempListaProductos);
					
				}
				
				
				////////////TOTALES ORIGEN //////////////
				resumenGraficaOrigen = new ArrayCollection();
				punteroProveedores = query.getPunteros([null,null,null,null,'origen'],'origen');
				for each (var origenA:String in punteroProveedores) 
				{
					
					var tempOrigen:ResumenConsulta = new ResumenConsulta();
					var puntOrigen:Array 
					var puntOrigenPro:Array 
					
					puntOrigen = query.getPunteros([null,null,null,null,origenA]);
					puntOrigenPro = query.getPunteros([null,null,null,null,origenA],'idProducto');
					tempOrigen.etiqueta = origenA.toLocaleUpperCase();
					tempOrigen.noProductos = puntOrigenPro.length;
					tempOrigen.piezasTotal = query.getSumarCampo('totalPiezas',puntOrigen);
					tempOrigen.monto = query.getSumarCampo('montoTotal',puntOrigen);
					resumenGraficaOrigen.addItem(tempOrigen);	
					
				}
				
				
				
				
				/////////////////////////  TOTALES DE TIEMPO Y SEMAFORO  /////////////////////////
				totalesSemaforoLista = new ArrayCollection();
				punterosTodos = query.getPunteros([null,"false"]);
				var totalesSemaforo:Object = new Object();
				var contadorEntiempo:Number = 0;
				var contadorUrgente:Number = 0;
				var contadorFueraTiempo:Number = 0;
				var listaTem:RegistroConfirmacion = new RegistroConfirmacion();
				var punterosTem:Array;
				var fecha:Date = new Date();
			/*	var punt:RegistroConfirmacion = ObjectUtil.copy(query.universo.getItemAt(punteros[0])) as RegistroConfirmacion;*/
				var diferencia:int;
				
				
				totalesSemaforo.tipo = "";
				totalesSemaforo.piezas = 0;
				for (var i:int = 0; i < listaBackOrder.length ; i++) 
				{
					diferencia = UtilsFecha.regresaDiferenciaEntreFechasEnDias(fecha,listaBackOrder[i].fechaMonitoreo);
					
					if(diferencia > 2){
						
						contadorEntiempo = contadorEntiempo + 1;
						
					}
						
					else if(diferencia < 0){
						
						contadorFueraTiempo = contadorFueraTiempo + 1; 
						
					}
						
					else if(diferencia < 2 && diferencia > 0){
						contadorUrgente = contadorUrgente +1;
						
					}
				}
				
				
				var semaforoObj:Object = new Object;
				semaforoObj.tipo = "";
				semaforoObj.partidas = 0;
				semaforoObj.tipo = "Retrasado";
				semaforoObj.partidas = contadorFueraTiempo;
				totalesSemaforoLista.addItem(semaforoObj);
				
				semaforoObj = new Object;
				semaforoObj.tipo = "";
				semaforoObj.partidas = 0;
				semaforoObj.tipo = "Urgente";
				semaforoObj.partidas = contadorUrgente;
				totalesSemaforoLista.addItem(semaforoObj);
				
				semaforoObj = new Object;
				semaforoObj.tipo = "";
				semaforoObj.partidas = 0;
				semaforoObj.tipo = "En tiempo";
				semaforoObj.partidas = contadorEntiempo;
				totalesSemaforoLista.addItem(semaforoObj);
				
				
				
				/////////////////////////  TOTALES DE TIEMPO  /////////////////////////
				
				totalesTiempoLista = new ArrayCollection();
				var punteroGraficaTiempo:Array = query.getPunteros([null,'false']);
				
				
				var totalesTiempo:Object = new Object();
				/*totalesTiempo.monto = 0;
				totalesTiempo.piezas = 0;*/
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				
				totalesTiempo.tipo = 'pasado';
				/*totalesTiempo.partidas = query.getSumarCampo('PASADO',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'pasado'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'ayer';
				/*totalesTiempo.partidas = query.getSumarCampo('AYER',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'ayer'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'antier';
				/*totalesTiempo.partidas = query.getSumarCampo('ANTIER',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'antier'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'hoy';
				/*totalesTiempo.partidas = query.getSumarCampo('DIA0',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'dia0'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'manana';
				/*totalesTiempo.patidas = query.getSumarCampo('DIA1',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'dia1'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'pasadomanana';
				/*totalesTiempo.partidas = query.getSumarCampo('DIA2',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'dia2'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				totalesTiempo = new Object();
				totalesTiempo.partidas = 0;
				totalesTiempo.tipo = "";
				totalesTiempo.tipo = 'futuro';
				/*totalesTiempo.partidas = query.getSumarCampo('FUTURO',punteroGraficaTiempo);*/
				totalesTiempo.partidas =  query.getPunteros([null,null,'futuro'.toUpperCase()]).length;
				totalesTiempoLista.addItem(totalesTiempo);
				
				
			}
			dispatchEvent(new Event("enviaruniversoGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGestionarBackOrder"));
			dispatchEvent(new Event("enviarordenesdeCompraGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaProveedorGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaTiempoGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaSemaforoGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaTransitoGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaLineaGestionarBackOrder"));
			dispatchEvent(new Event("enviarTotalesGraficaOrigenestionarBackOrder"));

			
		}
		
		
		[Bindable(event="enviarTotalesGraficaOrigenestionarBackOrder")]
		public function get enviarInfoOrigen():ArrayCollection
		{
			return resumenGraficaOrigen;
		}
		
		[Bindable(event="enviarTotalesGraficaLineaGestionarBackOrder")]
		public function get enviarInfoLinea():ArrayCollection
		{
			return resumenGraficaLineaProductos;
		}
		
		[Bindable(event="enviarTotalesGraficaTransitoGestionarBackOrder")]
		public function get enviarInfoTransito():ArrayCollection
		{
			return resumenGraficaFlete;
		}
		
		[Bindable(event="enviarTotalesGraficaProveedorGestionarBackOrder")]
		public function get enviarInfoProveedoresBO():ArrayCollection
		{
			return resumenGraficaProveedor;
		}
		
		[Bindable(event="enviarTotalesGraficaTiempoGestionarBackOrder")]
		public function get enviarInfoTiempo():ArrayCollection
		{
			return totalesTiempoLista;
		}
		[Bindable(event="enviarTotalesGraficaSemaforoGestionarBackOrder")]
		public function get enviarInfoSemaforo():ArrayCollection
		{
			return totalesSemaforoLista;
		}
		
		[Bindable(event="enviarTotalesGestionarBackOrder")]
		public function get enviaruniversoGestionarBackOrder():ArrayCollection
		{
			return universoPartidasBO;
		}
		
		[Bindable(event="enviarordenesdeCompraGestionarBackOrder")]
		public function get enviarordenesdeCompraGestionarBackOrder():ArrayCollection
		{
			return ordenesCompra;
		}
		[Bindable(event="enviarTotalesGestionarBackOrder")]
		public function get enviarTotalesGestionarBackOrder():Object
		{
			return total;
		}
		
		
		
		public function setObtenerHistorial(phistorial:ArrayCollection, event:EventoGestionarBackOrder):void
		{
			historial = phistorial;
			historial.addItemAt(event, 0 );
			dispatchEvent(new Event("enviarHistorialModeloGestionarBackOrder"));
		}
		
		[Bindable(event="enviarHistorialModeloGestionarBackOrder")]
		public function get obtenerHistorial():ArrayCollection
		{
			return historial;
			
		}

		
		
		public function setObtenerUltimaModificacion(pultimaModificacion:ArrayCollection, event:EventoGestionarBackOrder):void
		{
			ultimaModificacion = pultimaModificacion;
			ultimaModificacion.addItemAt(event, 0 );
			dispatchEvent(new Event("enviarUltimaModificacionModeloGestionarBackOrder"));
		}
		
		[Bindable(event="enviarUltimaModificacionModeloGestionarBackOrder")]
		public function get obtenerUltimaModificacion():ArrayCollection
		{
			return ultimaModificacion;
			
		}
		
		
		private var respuestaRegistrar:int;
		public function setObtenerRespuestaRegistrarBOG(value:int):void
		{
			// 1 bien
			//-1 no bien
			//-2 se bloquea hay una confirmacion
			/*if(value == 1)
			respuestaRegistrar = true	
			else if(value == -1)
			respuestaRegistrar = false
			else
			respuestaRegistrar = false*/
			respuestaRegistrar = value;
			dispatchEvent(new Event("enviaRespuestaRegistrarBOG"));
		}
		
		[Bindable(event="enviaRespuestaRegistrarBOG")]
		public function get enviarRespuestaBOG():int
		{
			return respuestaRegistrar;
		}
		
		// ++++++++++++++++++++++++  ERRORES    +++++++++++++++++++++++++++
		public function errorRegistarConfirmacion(objeto:Object):void
		{
			trace("ERROR REGISTRAR CONFIRMACION")
			trace(objeto.toString())
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModelogestionarBackOrder()
		{
			
		}
	}
}



