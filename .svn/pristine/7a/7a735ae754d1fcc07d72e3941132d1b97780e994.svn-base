package mx.com.proquifa.vista.modelo.RegistrarConfirmacion
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.compras.RegistroConfirmacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.consultas.comun.ResumenConsulta;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Query;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.alertaSingleton;
	import mx.utils.ObjectUtil;
	
	public class ModeloRegistrarConfirmacion extends EventDispatcher
	{
		
		// ++++++++++++++++++++  OBTIENE LISTA DE RESUMEN OC  ++++++++++++++++++++
		public var _sql:Query;
		private var resumenOC:ArrayCollection;
		private var resumenTotalOC:RegistroConfirmacion;
		private var resumenGraficaProveedor:ArrayCollection;
		private var resumenGraficaFlete:ArrayCollection;
		private var resumenGraficaEntrega:ArrayCollection;
		private var totalesTiempoLista:ArrayCollection;
		private var totalesSemaforoLista:ArrayCollection;
		
		public function setObtenerFaltanteOD(data:ArrayCollection):void
		{
			if(data == null)
				resumenOC = new ArrayCollection();
			else{
				/*data = iniciarListaPrueba(); */////INICIO DE PRUEBA
				
				resumenOC = data;
				var punterosProvee:Array;
				var punterosTodos:Array;
				_sql = new Query(resumenOC,["nombreProveedor","todos"],true);
				punterosProvee = _sql.getPunteros(["nombreProveedor"],"nombreProveedor");
				resumenTotalOC = new RegistroConfirmacion();
				resumenGraficaProveedor = new ArrayCollection();
				totalesTiempoLista = new ArrayCollection();
				totalesSemaforoLista = new ArrayCollection();
				resumenGraficaFlete = new ArrayCollection();
				resumenGraficaEntrega = new ArrayCollection();
				punterosTodos = _sql.getPunteros([null,"false"]);
				
				
				
				/////////////////////////  TOTALES GRAFICA PROVEEDORES  /////////////////////////
				for each (var provee:String in punterosProvee) 
				{
					var tempReg:ResumenConsulta = new ResumenConsulta();
					var punterosTemp:Array;
					punterosTemp = _sql.getPunteros([provee]);
					tempReg.etiqueta = provee.toUpperCase();
					tempReg.totalProveedores = 1;
					tempReg.ocompras = _sql.getSumarCampo('totalOC',punterosTemp);
					tempReg.noProductos = _sql.getSumarCampo('totalProductos',punterosTemp);
					tempReg.piezasTotal = _sql.getSumarCampo('piezas',punterosTemp);
					tempReg.total = _sql.getSumarCampo('monto',punterosTemp);
					
					resumenGraficaProveedor.addItem(tempReg);
				}
				
				/////////////////////////  TOTALES GRAFICA FLETE  /////////////////////////
				var tempTransito:ResumenConsulta;
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Normal'.toUpperCase();
				tempTransito.tipoFletera = 1;
				tempTransito.totalFleteNormal = _sql.getSumarCampo("fleteNormalCompuesto.piezas",punterosTodos);
				tempTransito.totalFleteExpress = 0;
				tempTransito.total = _sql.getSumarCampo("fleteNormalCompuesto.monto",punterosTodos);
				
				if(tempTransito.totalFleteNormal > 0)
					resumenGraficaFlete.addItem(tempTransito);
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Express'.toUpperCase();
				tempTransito.tipoFletera = 1;
				tempTransito.totalFleteNormal = 0;
				tempTransito.totalFleteExpress = _sql.getSumarCampo("flete.piezas",punterosTodos);
				tempTransito.total = _sql.getSumarCampo("flete.monto",punterosTodos);
				
				if(tempTransito.totalFleteExpress > 0)
					resumenGraficaFlete.addItem(tempTransito);
				/////////////////////////  TOTALES GRAFICA ENTREGA  /////////////////////////
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Única'.toUpperCase();
				tempTransito.tipoEntrega = 1;
				tempTransito.totalEntregaProgramada = 0;
				tempTransito.totalEntregaUnica = _sql.getSumarCampo("entregaUnicaCompuesto.piezas",punterosTodos);
				tempTransito.total = _sql.getSumarCampo("entregaUnicaCompuesto.monto",punterosTodos);
				if(tempTransito.totalEntregaUnica > 0)
					resumenGraficaEntrega.addItem(tempTransito);
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Programada'.toUpperCase();
				tempTransito.tipoEntrega = 1;
				tempTransito.totalEntregaProgramada = _sql.getSumarCampo("programado.piezas",punterosTodos);
				tempTransito.totalEntregaUnica = 0;
				tempTransito.total = _sql.getSumarCampo("programado.monto",punterosTodos);
				
				if(tempTransito.totalEntregaProgramada > 0)
					resumenGraficaEntrega.addItem(tempTransito);
				
				
				/////////////////////////  TOTALES  /////////////////////////
				resumenTotalOC.totalOC = _sql.getSumarCampo("totalOC",punterosTodos);
				resumenTotalOC.monto = _sql.getSumarCampo("monto",punterosTodos);
				resumenTotalOC.piezas = _sql.getSumarCampo("piezas",punterosTodos);
				resumenTotalOC.totalProductos = _sql.getSumarCampo("totalProductos",punterosTodos);
				resumenTotalOC.dia1 = _sql.getSumarCampo("dia1",punterosTodos);
				resumenTotalOC.dia2 = _sql.getSumarCampo("dia2",punterosTodos);
				resumenTotalOC.dia3 = _sql.getSumarCampo("dia3",punterosTodos);
				resumenTotalOC.dia4 = _sql.getSumarCampo("dia4",punterosTodos);
				resumenTotalOC.totalRegular = _sql.getSumarCampo("regular.piezas",punterosTodos);
				resumenTotalOC.totalProgramado = _sql.getSumarCampo("programado.piezas",punterosTodos);
				resumenTotalOC.totalFlete = _sql.getSumarCampo("flete.piezas",punterosTodos);
				resumenTotalOC.totalEntregaUnica = resumenTotalOC.totalRegular + resumenTotalOC.totalFlete;
				resumenTotalOC.totalFleteNormal = resumenTotalOC.totalRegular + resumenTotalOC.totalProgramado;
				
				/////////////////////////  TOTALES DE TIEMPO Y SEMAFORO  /////////////////////////
				for (var i:int = 0; i < 4; i++) 
				{
					var totalesTiempo:Object = new Object();
					var totalesSemaforo:Object = new Object();
					totalesTiempo.monto = 0;
					totalesTiempo.piezas = 0;
					totalesTiempo.partidas = 0;
					totalesTiempo.tipo = "";
					
					totalesSemaforo.tipo = "";
					totalesSemaforo.piezas = 0;
					if(i==0){
						totalesTiempo.partidas = _sql.getSumarCampo("dia4",punterosTodos);
						totalesTiempo.tipo = "tiempo4";
						
						totalesSemaforo.partidas = _sql.getSumarCampo("fueraTiempo",punterosTodos);
						totalesSemaforo.tipo = "Retrasado";
					}
					else if(i==1){
						totalesTiempo.partidas = _sql.getSumarCampo("dia3",punterosTodos);
						totalesTiempo.tipo = "tiempo3";	
						
						totalesSemaforo.partidas = _sql.getSumarCampo("urgente",punterosTodos);
						totalesSemaforo.tipo = "Urgente";
					}
					else if(i==2){
						totalesTiempo.partidas = _sql.getSumarCampo("dia2",punterosTodos);
						totalesTiempo.tipo = "tiempo2";
						
						totalesSemaforo.partidas = _sql.getSumarCampo("enTiempo",punterosTodos);
						totalesSemaforo.tipo = "En tiempo";
					}
					else if(i==3){
						totalesTiempo.partidas = _sql.getSumarCampo("dia1",punterosTodos);
						totalesTiempo.tipo = "tiempo1";
					}
					totalesTiempoLista.addItem(totalesTiempo);
					if(i != 3)
						totalesSemaforoLista.addItem(totalesSemaforo);
				}
				
				
			}
			
			dispatchEvent(new Event("enviarListaResumenRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesListaResumenRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesGraficaProveedorResumenRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesGraficaTiempoRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesGraficaSemaforoRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesGraficaTransitoRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarTotalesGraficaEntregaRegistrarConfirmacion"));
		}
		
		[Bindable(event="enviarListaResumenRegistrarConfirmacion")]
		public function get enviarResumenOC():ArrayCollection
		{
			return resumenOC;
		}
		[Bindable(event="enviarTotalesListaResumenRegistrarConfirmacion")]
		public function get enviarTotalResumenOC():RegistroConfirmacion
		{
			return resumenTotalOC;
		}
		[Bindable(event="enviarTotalesGraficaProveedorResumenRegistrarConfirmacion")]
		public function get enviarInfoProveedores():ArrayCollection
		{
			return resumenGraficaProveedor;
		}
		[Bindable(event="enviarTotalesGraficaTiempoRegistrarConfirmacion")]
		public function get enviarInfoTiempo():ArrayCollection
		{
			return totalesTiempoLista;
		}
		[Bindable(event="enviarTotalesGraficaSemaforoRegistrarConfirmacion")]
		public function get enviarInfoSemaforo():ArrayCollection
		{
			return totalesSemaforoLista;
		}
		[Bindable(event="enviarTotalesGraficaTransitoRegistrarConfirmacion")]
		public function get enviarInfoFlete():ArrayCollection
		{
			return resumenGraficaFlete;
		}
		[Bindable(event="enviarTotalesGraficaEntregaRegistrarConfirmacion")]
		public function get enviarInfoEntrega():ArrayCollection
		{
			return resumenGraficaEntrega;
		}
		private var partidas:ArrayCollection;
		private var familias:ArrayCollection;
		private var universoPartidas:ArrayCollection;
		private var partidasPorFamilia:ArrayCollection;
		public function setObtenerPartidasRC(value:ArrayCollection):void
		{
			if(value == null){
				partidas = new ArrayCollection();
				universoPartidas = new ArrayCollection();
			}
			else{
				/*value = iniciarPrueba();*/ ////INICIO DE PRUEBA
				
				/////////////////////////  EXCLUIR TIPO DE PARTIDAS CANCELADA Y BACK  /////////////////////////
				/*sqlPartida = new Query(value,["familia","tipoPartida"],true);
				var punterosActivos:Array;
				punterosActivos = sqlPartida.getPunteros([null,"null"]);*/
				var arrayActivos:ArrayCollection = new ArrayCollection();
				for (var i2:int = 0; i2 < value.length; i2++) 
				{
					if(value[i2].tipoPartida ==  null)   
						arrayActivos.addItem(value[i2]);
					/*else if(value[i2].tipoPartida.toLowerCase() != "cancelada" && value[i2].tipoPartida.toLowerCase() != "backorder")
						arrayActivos.addItem(value[i2]);*/
				}
				value = ObjectUtil.copy(arrayActivos) as ArrayCollection;
				/////////////////////////  ASIGNAR PIEZAS TOTALES POR TIPO FLETE  /////////////////////////
				for (var k:int = 0; k < value.length; k++) 
				{
					if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "regular"){
						value[k].piezasRegular += value[k].totalPiezas;
					}
					else if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "programado"){
						value[k].piezasProgramado += value[k].totalPiezas;
					}
					else if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "flete express"){
						value[k].piezasExpress += value[k].totalPiezas;
					}
					value[k].tipoPendiente = "normal";
					value[k].piezasEntregaUnica = value[k].piezasRegular + value[k].piezasExpress;
					value[k].piezasFleteNormal = value[k].piezasRegular + value[k].piezasProgramado;
				}
				
				
				/*for (var i2:int = 0; i2 < value.length; i2++) 
				{
					value[i2].tipoPendiente = "normal";
				}*/
				
				
				universoPartidas = ObjectUtil.copy(value) as ArrayCollection;
				var sqlPartida:Query;
				var sqlTipo:Query;
				var punterosFamilia:Array;
				var punteros:Array;
				familias = new ArrayCollection();
				partidas = new ArrayCollection();
				sqlPartida = new Query(value,["familia"],true);
				
				punterosFamilia = sqlPartida.getPunteros(["familia"],"familia");
				//////////////////////////  SACA LAS FAMILIAS EN TOTAL DE PARTIDAS
				var familiasTemp:ArrayCollection = new ArrayCollection();
				for (var i:int = 0; i < punterosFamilia.length; i++) 
				{
					var cp:ConfiguracionPrecio = new ConfiguracionPrecio();
					var arreglo:Array;
					arreglo = (punterosFamilia[i] as String).split('-');
					cp.tipo = arreglo[0] != 'null' ? arreglo[0]:'';
					cp.subtipo = arreglo[1] != 'null' ? arreglo[1]:'';
					cp.control = arreglo[2] != 'null' ? arreglo[2]:'';
					familiasTemp.addItem(cp);
				}
				familias = familySort(ObjectUtil.copy(familiasTemp) as ArrayCollection);
				
				///////////////////////// SE OBTIENE LA PRIMERA AGRUPACION POR LA PRIMERA FAMILIA
				var partidasFamilia:ArrayCollection = new ArrayCollection();
				if(punterosFamilia.length > 0)
					punteros = sqlPartida.getPunteros([punterosFamilia[0]]);
				else
					punteros = new Array();
				
				for (var j:int = 0; j < punteros.length; j++) 
				{
					var partidaTemp:RegistroConfirmacion;
					partidaTemp = ObjectUtil.copy(sqlPartida.universo.getItemAt(punteros[j])) as RegistroConfirmacion;
					partidasFamilia.addItem(partidaTemp);
				}
				partidasPorFamilia = ObjectUtil.copy(partidasFamilia) as ArrayCollection;
				
				///////////////////////// SE FILTRA POR TIPO (NO REGISTRADAS O PARCIALES)
				sqlTipo = new Query(partidasFamilia,["esRegistrada"],true);
				punteros = sqlTipo.getPunteros([false]);
				for (var y:int = 0; y < punteros.length; y++) 
				{
					var partidaTemp1:RegistroConfirmacion;
					partidaTemp1 = ObjectUtil.copy(sqlTipo.universo.getItemAt(punteros[y])) as RegistroConfirmacion;
					partidas.addItem(partidaTemp1);
				}
				
			}
			dispatchEvent(new Event("enviarPartidasRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarFamiliasRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarPartidasPorFamiliasRegistrarConfirmacion"));
			dispatchEvent(new Event("enviarUniversoPartidasRegistrarConfirmacion"));
		}
		
		[Bindable(event="enviarPartidasRegistrarConfirmacion")]
		public function get enviarPartidasRC():ArrayCollection
		{
			return partidas;
		}
		[Bindable(event="enviarFamiliasRegistrarConfirmacion")]
		public function get enviarFamiliasPorPartida():ArrayCollection
		{
			return familias;
		}
		[Bindable(event="enviarPartidasPorFamiliasRegistrarConfirmacion")]
		public function get enviarPartidasPorFamilia():ArrayCollection
		{
			return partidasPorFamilia;
		}
		[Bindable(event="enviarUniversoPartidasRegistrarConfirmacion")]
		public function get enviarUniversoPartidas():ArrayCollection
		{
			return universoPartidas;
		}
		
		private var respuestaRegistrar:int;
		public function setObtenerRespuestaRegistrar(value:int):void
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
			dispatchEvent(new Event("enviaRespuestaRegistrarConfirmacion"));
		}
		
		[Bindable(event="enviaRespuestaRegistrarConfirmacion")]
		public function get enviarRespuestaRegistrar():int
		{
			return respuestaRegistrar;
		}
		
		private function familySort(familias:ArrayCollection):ArrayCollection
		{
			var tempSort:ArrayCollection = new ArrayCollection();
			var filtrado:Query = new Query(familias,["industria","tipo","subtipo","control"]);
			var arrayIndustrial:ArrayCollection = new ArrayCollection(['Farma','Alimentos','Aguas','Clínico','Gobierno','null']);
			var arrayTipoFarma:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Publicaciones','Labware','Medicamentos','Asesorías','Capacitaciones']);
			var arrayTipoAlimentos:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Labware','Diagnóstico','Publicaciones','Medicamentos','Asesorías','Capacitaciones']);
			var arrayTipoAgua:ArrayCollection = new ArrayCollection(['Estandares','Reactivos','Labware','Pruebas de aptitud','Publicaciones','Medicamentos','Asesorías','Capacitaciones']);
			var arraySubtipo:ArrayCollection = new ArrayCollection(['Químico','Biológico']);
			var arrayControl:ArrayCollection = new ArrayCollection(['Normal','Nacionales','Mundiales','Origen']);
			var punteros:Array = new Array;
			var arrayTipo:ArrayCollection = new ArrayCollection;
			
			
			for (var i:int = 0; i < arrayIndustrial.length; i++ )
			{
				if (arrayIndustrial[i] == 'Farma' || 
					arrayIndustrial[i] == 'Clínico' || arrayIndustrial[i] == 'Gobierno' )
				{
					arrayTipo = arrayTipoFarma;
				}
				else if(arrayIndustrial[i] == 'Alimentos')
				{
					arrayTipo = arrayTipoAlimentos;
				}
				else
				{
					arrayTipo = arrayTipoAgua;
				}
				
				for (var j:int = 0; j < arrayTipo.length; j++)
				{
					if (arrayTipo[j] == 'Estandares' || arrayTipo[j] == 'Reactivos')
					{
						for (var k:int = 0; k < arraySubtipo.length; k++)
						{
							for (var l:int = 0; l < arrayControl.length; l++)
							{
								punteros = filtrado.getPunteros([arrayIndustrial[i].toLowerCase(),arrayTipo[j].toLowerCase(),arraySubtipo[k].toLowerCase(),arrayControl[l].toLowerCase()],'industria');
								tempSort.addAll(filtrado.armarLista(punteros));
							}
						}
					}
					else
					{
						punteros = filtrado.getPunteros([arrayIndustrial[i].toLowerCase(),arrayTipo[j].toLowerCase(),null,null],'industria');
						tempSort.addAll(filtrado.armarLista(punteros));
					}
				}
			}
			var familiasOrdenadas:ArrayCollection;
			familiasOrdenadas = ObjectUtil.copy(tempSort) as ArrayCollection;
			return familiasOrdenadas;
		}
		
		
		////////////////// CONFIRMACION DEL CAMBIO DE PRECIO DE UNA OC //////////////////////////////////////////////////////
		private var confirmacionCP:Boolean;
		public function setConfirmaCambio(data:Boolean):void
		{
			confirmacionCP = data;
			dispatchEvent(new Event("enviaConfirmacionDeCambioDePrecio"));
			
		}
		
		[Bindable(event="enviaConfirmacionDeCambioDePrecio")]
		public function get enviarConfirmacionCambioPrecio():Boolean
		{
			return confirmacionCP;
		}
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		/////////////////////////////////////////////////////////////NACIONALES/////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				
		// ++++++++++++++++++++  OBTIENE LISTA DE RESUMEN OC  ++++++++++++++++++++
		public var _sqlNacional:Query;
		private var resumenOCNacional:ArrayCollection;
		private var resumenTotalOCNacional:RegistroConfirmacion;
		private var resumenGraficaProveedorNacional:ArrayCollection;
		private var resumenGraficaFleteNacional:ArrayCollection;
		private var resumenGraficaEntregaNacional:ArrayCollection;
		private var totalesTiempoListaNacional:ArrayCollection;
		private var totalesSemaforoListaNacional:ArrayCollection;
		
		public function setObtenerFaltanteODNacional(data:ArrayCollection):void
		{
			if(data == null)
				resumenOCNacional = new ArrayCollection();
			else{
				/*data = iniciarListaPrueba(); */////INICIO DE PRUEBA
				
				resumenOCNacional = data;
				var punterosProvee:Array;
				var punterosTodos:Array;
				_sqlNacional = new Query(resumenOCNacional,["nombreProveedor","todos"],true);
				punterosProvee = _sqlNacional.getPunteros(["nombreProveedor"],"nombreProveedor");
				resumenTotalOCNacional = new RegistroConfirmacion();
				resumenGraficaProveedorNacional = new ArrayCollection();
				totalesTiempoListaNacional = new ArrayCollection();
				totalesSemaforoListaNacional = new ArrayCollection();
				resumenGraficaFleteNacional = new ArrayCollection();
				resumenGraficaEntregaNacional = new ArrayCollection();
				punterosTodos = _sqlNacional.getPunteros([null,"false"]);
				
				
				
				/////////////////////////  TOTALES GRAFICA PROVEEDORES  /////////////////////////
				for each (var provee:String in punterosProvee) 
				{
					var tempReg:ResumenConsulta = new ResumenConsulta();
					var punterosTemp:Array;
					punterosTemp = _sqlNacional.getPunteros([provee]);
					tempReg.etiqueta = provee.toUpperCase();
					tempReg.totalProveedores = 1;
					tempReg.ocompras = _sqlNacional.getSumarCampo('totalOC',punterosTemp);
					tempReg.noProductos = _sqlNacional.getSumarCampo('totalProductos',punterosTemp);
					tempReg.piezasTotal = _sqlNacional.getSumarCampo('piezas',punterosTemp);
					tempReg.total = _sqlNacional.getSumarCampo('monto',punterosTemp);
					
					resumenGraficaProveedorNacional.addItem(tempReg);
				}
				
				/////////////////////////  TOTALES GRAFICA FLETE  /////////////////////////
				var tempTransito:ResumenConsulta;
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Normal'.toUpperCase();
				tempTransito.tipoFletera = 1;
				tempTransito.totalFleteNormal = _sqlNacional.getSumarCampo("fleteNormalCompuesto.piezas",punterosTodos);
				tempTransito.totalFleteExpress = 0;
				tempTransito.total = _sqlNacional.getSumarCampo("fleteNormalCompuesto.monto",punterosTodos);
				
				if(tempTransito.totalFleteNormal > 0)
					resumenGraficaFleteNacional.addItem(tempTransito);
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Express'.toUpperCase();
				tempTransito.tipoFletera = 1;
				tempTransito.totalFleteNormal = 0;
				tempTransito.totalFleteExpress = _sqlNacional.getSumarCampo("flete.piezas",punterosTodos);
				tempTransito.total = _sqlNacional.getSumarCampo("flete.monto",punterosTodos);
				
				if(tempTransito.totalFleteExpress > 0)
					resumenGraficaFleteNacional.addItem(tempTransito);
				/////////////////////////  TOTALES GRAFICA ENTREGA  /////////////////////////
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Única'.toUpperCase();
				tempTransito.tipoEntrega = 1;
				tempTransito.totalEntregaProgramada = 0;
				tempTransito.totalEntregaUnica = _sqlNacional.getSumarCampo("entregaUnicaCompuesto.piezas",punterosTodos);
				tempTransito.total = _sqlNacional.getSumarCampo("entregaUnicaCompuesto.monto",punterosTodos);
				if(tempTransito.totalEntregaUnica > 0)
					resumenGraficaEntregaNacional.addItem(tempTransito);
				
				tempTransito = new ResumenConsulta();
				tempTransito.etiqueta = 'Programada'.toUpperCase();
				tempTransito.tipoEntrega = 1;
				tempTransito.totalEntregaProgramada = _sqlNacional.getSumarCampo("programado.piezas",punterosTodos);
				tempTransito.totalEntregaUnica = 0;
				tempTransito.total = _sqlNacional.getSumarCampo("programado.monto",punterosTodos);
				
				if(tempTransito.totalEntregaProgramada > 0)
					resumenGraficaEntregaNacional.addItem(tempTransito);
				
				
				/////////////////////////  TOTALES  /////////////////////////
				resumenTotalOCNacional.totalOC = _sqlNacional.getSumarCampo("totalOC",punterosTodos);
				resumenTotalOCNacional.monto = _sqlNacional.getSumarCampo("monto",punterosTodos);
				resumenTotalOCNacional.piezas = _sqlNacional.getSumarCampo("piezas",punterosTodos);
				resumenTotalOCNacional.totalProductos = _sqlNacional.getSumarCampo("totalProductos",punterosTodos);
				resumenTotalOCNacional.dia1 = _sqlNacional.getSumarCampo("dia1",punterosTodos);
				resumenTotalOCNacional.dia2 = _sqlNacional.getSumarCampo("dia2",punterosTodos);
				resumenTotalOCNacional.dia3 = _sqlNacional.getSumarCampo("dia3",punterosTodos);
				resumenTotalOCNacional.dia4 = _sqlNacional.getSumarCampo("dia4",punterosTodos);
				resumenTotalOCNacional.totalRegular = _sqlNacional.getSumarCampo("regular.piezas",punterosTodos);
				resumenTotalOCNacional.totalProgramado = _sqlNacional.getSumarCampo("programado.piezas",punterosTodos);
				resumenTotalOCNacional.totalFlete = _sqlNacional.getSumarCampo("flete.piezas",punterosTodos);
				resumenTotalOCNacional.totalEntregaUnica = resumenTotalOCNacional.totalRegular + resumenTotalOCNacional.totalFlete;
				resumenTotalOCNacional.totalFleteNormal = resumenTotalOCNacional.totalRegular + resumenTotalOCNacional.totalProgramado;
				
				/////////////////////////  TOTALES DE TIEMPO Y SEMAFORO  /////////////////////////
				for (var i:int = 0; i < 4; i++) 
				{
					var totalesTiempo:Object = new Object();
					var totalesSemaforo:Object = new Object();
					totalesTiempo.monto = 0;
					totalesTiempo.piezas = 0;
					totalesTiempo.partidas = 0;
					totalesTiempo.tipo = "";
					
					totalesSemaforo.tipo = "";
					totalesSemaforo.piezas = 0;
					if(i==0){
						totalesTiempo.partidas = _sqlNacional.getSumarCampo("dia4",punterosTodos);
						totalesTiempo.tipo = "tiempo4";
						
						totalesSemaforo.partidas = _sqlNacional.getSumarCampo("fueraTiempo",punterosTodos);
						totalesSemaforo.tipo = "Retrasado";
					}
					else if(i==1){
						totalesTiempo.partidas = _sqlNacional.getSumarCampo("dia3",punterosTodos);
						totalesTiempo.tipo = "tiempo3";	
						
						totalesSemaforo.partidas = _sqlNacional.getSumarCampo("urgente",punterosTodos);
						totalesSemaforo.tipo = "Urgente";
					}
					else if(i==2){
						totalesTiempo.partidas = _sqlNacional.getSumarCampo("dia2",punterosTodos);
						totalesTiempo.tipo = "tiempo2";
						
						totalesSemaforo.partidas = _sqlNacional.getSumarCampo("enTiempo",punterosTodos);
						totalesSemaforo.tipo = "En tiempo";
					}
					else if(i==3){
						totalesTiempo.partidas = _sqlNacional.getSumarCampo("dia1",punterosTodos);
						totalesTiempo.tipo = "tiempo1";
					}
					totalesTiempoListaNacional.addItem(totalesTiempo);
					if(i != 3)
						totalesSemaforoListaNacional.addItem(totalesSemaforo);
				}
				
				
			}
			
			dispatchEvent(new Event("enviarListaResumenRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesListaResumenRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesGraficaProveedorResumenRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesGraficaTiempoRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesGraficaSemaforoRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesGraficaTransitoRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarTotalesGraficaEntregaRegistrarConfirmacionNacional"));
		}
		
		[Bindable(event="enviarListaResumenRegistrarConfirmacionNacional")]
		public function get enviarResumenOCNacional():ArrayCollection
		{
			return resumenOCNacional;
		}
		[Bindable(event="enviarTotalesListaResumenRegistrarConfirmacionNacional")]
		public function get enviarTotalResumenOCNacional():RegistroConfirmacion
		{
			return resumenTotalOCNacional;
		}
		[Bindable(event="enviarTotalesGraficaProveedorResumenRegistrarConfirmacionNacional")]
		public function get enviarInfoProveedoresNacional():ArrayCollection
		{
			return resumenGraficaProveedorNacional;
		}
		[Bindable(event="enviarTotalesGraficaTiempoRegistrarConfirmacionNacional")]
		public function get enviarInfoTiempoNacional():ArrayCollection
		{
			return totalesTiempoListaNacional;
		}
		[Bindable(event="enviarTotalesGraficaSemaforoRegistrarConfirmacionNacional")]
		public function get enviarInfoSemaforoNacional():ArrayCollection
		{
			return totalesSemaforoListaNacional;
		}
		[Bindable(event="enviarTotalesGraficaTransitoRegistrarConfirmacionNacional")]
		public function get enviarInfoFleteNacional():ArrayCollection
		{
			return resumenGraficaFleteNacional;
		}
		[Bindable(event="enviarTotalesGraficaEntregaRegistrarConfirmacionNacional")]
		public function get enviarInfoEntregaNacional():ArrayCollection
		{
			return resumenGraficaEntregaNacional;
		}
		
		/////////////////////////////////////////////////////////////////////////////////////////
		
		private var partidasNacional:ArrayCollection;
		private var familiasNacional:ArrayCollection;
		private var universoPartidasNacional:ArrayCollection;
		private var partidasPorFamiliaNacional:ArrayCollection;
		
		public function setObtenerPartidasRCNacional(value:ArrayCollection):void
		{
			if(value == null){
				partidasNacional = new ArrayCollection();
				universoPartidasNacional = new ArrayCollection();
			}
			else{
			
				var arrayActivos:ArrayCollection = new ArrayCollection();
				for (var i2:int = 0; i2 < value.length; i2++) 
				{
					if(value[i2].tipoPartida ==  null)
						arrayActivos.addItem(value[i2]);
					/*else if(value[i2].tipoPartida.toLowerCase() != "cancelada" && value[i2].tipoPartida.toLowerCase() != "backorder")
						arrayActivos.addItem(value[i2]);*/
				}
				value = ObjectUtil.copy(arrayActivos) as ArrayCollection;
				/////////////////////////  ASIGNAR PIEZAS TOTALES POR TIPO FLETE  /////////////////////////
				for (var k:int = 0; k < value.length; k++) 
				{
					if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "regular"){
						value[k].piezasRegular += value[k].totalPiezas;
					}
					else if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "programado"){
						value[k].piezasProgramado += value[k].totalPiezas;
					}
					else if((value[k] as RegistroConfirmacion).tipoFlete.toLowerCase() == "flete express"){
						value[k].piezasExpress += value[k].totalPiezas;
					}
					value[k].tipoPendiente = "normal";
					value[k].piezasEntregaUnica = value[k].piezasRegular + value[k].piezasExpress;
					value[k].piezasFleteNormal = value[k].piezasRegular + value[k].piezasProgramado;
				}
			
				
				
				universoPartidasNacional = ObjectUtil.copy(value) as ArrayCollection;
				var sqlPartidaNacional:Query;
				var sqlTipoNacional:Query;
				var punterosFamiliaNacional:Array;
				var punterosNacional:Array;
				familiasNacional = new ArrayCollection();
				partidasNacional = new ArrayCollection();
				sqlPartidaNacional = new Query(value,["familia"],true);
				
				punterosFamiliaNacional = sqlPartidaNacional.getPunteros(["familia"],"familia");
				//////////////////////////  SACA LAS FAMILIAS EN TOTAL DE PARTIDAS
				var familiasTemp:ArrayCollection = new ArrayCollection();
				for (var i:int = 0; i < punterosFamiliaNacional.length; i++) 
				{
					var cp:ConfiguracionPrecio = new ConfiguracionPrecio();
					var arreglo:Array;
					arreglo = (punterosFamiliaNacional[i] as String).split('-');
					cp.tipo = arreglo[0] != 'null' ? arreglo[0]:'';
					cp.subtipo = arreglo[1] != 'null' ? arreglo[1]:'';
					cp.control = arreglo[2] != 'null' ? arreglo[2]:'';
					familiasTemp.addItem(cp);
				}
				familiasNacional = familySort(ObjectUtil.copy(familiasTemp) as ArrayCollection);
				
				///////////////////////// SE OBTIENE LA PRIMERA AGRUPACION POR LA PRIMERA FAMILIA
				var partidasFamilia:ArrayCollection = new ArrayCollection();
				if(punterosFamiliaNacional.length > 0)
					punterosNacional = sqlPartidaNacional.getPunteros([punterosFamiliaNacional[0]]);
				else
					punterosNacional = new Array();
				
				for (var j:int = 0; j < punterosNacional.length; j++) 
				{
					var partidaTemp:RegistroConfirmacion;
					partidaTemp = ObjectUtil.copy(sqlPartidaNacional.universo.getItemAt(punterosNacional[j])) as RegistroConfirmacion;
					partidasFamilia.addItem(partidaTemp);
				}
				partidasPorFamiliaNacional = ObjectUtil.copy(partidasFamilia) as ArrayCollection;
				
				///////////////////////// SE FILTRA POR TIPO (NO REGISTRADAS O PARCIALES)
				sqlTipoNacional = new Query(partidasFamilia,["esRegistrada"],true);
				punterosNacional = sqlTipoNacional.getPunteros([false]);
				for (var y:int = 0; y < punterosNacional.length; y++) 
				{
					var partidaTemp1:RegistroConfirmacion;
					partidaTemp1 = ObjectUtil.copy(sqlTipoNacional.universo.getItemAt(punterosNacional[y])) as RegistroConfirmacion;
					partidasNacional.addItem(partidaTemp1);
				}
				
			}
			dispatchEvent(new Event("enviarPartidasRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarFamiliasRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarPartidasPorFamiliasRegistrarConfirmacionNacional"));
			dispatchEvent(new Event("enviarUniversoPartidasRegistrarConfirmacionNacional"));
		}
		
		[Bindable(event="enviarPartidasRegistrarConfirmacionNacional")]
		public function get enviarPartidasRCNacional():ArrayCollection
		{
			return partidasNacional;
		}
		[Bindable(event="enviarFamiliasRegistrarConfirmacionNacional")]
		public function get enviarFamiliasPorPartidaNacional():ArrayCollection
		{
			return familiasNacional;
		}
		[Bindable(event="enviarPartidasPorFamiliasRegistrarConfirmacionNacional")]
		public function get enviarPartidasPorFamiliaNacional():ArrayCollection
		{
			return partidasPorFamiliaNacional;
		}
		[Bindable(event="enviarUniversoPartidasRegistrarConfirmacionNacional")]
		public function get enviarUniversoPartidasNacional():ArrayCollection
		{
			return universoPartidasNacional;
		}
		
		
		
		
		
		private var respuestaRegistrarNacional:int;
		public function setObtenerRespuestaRegistrarNacional(value:int):void
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
			respuestaRegistrarNacional = value;
			dispatchEvent(new Event("enviaRespuestaRegistrarConfirmacionNacional"));
		}
		
		[Bindable(event="enviaRespuestaRegistrarConfirmacionNacional")]
		public function get enviarRespuestaRegistrarNacional():int
		{
			return respuestaRegistrarNacional;
		}
		
		////////////////// CONFIRMACION DEL CAMBIO DE PRECIO DE UNA OC NACIONAL //////////////////////////////////////////////////////
		private var confirmacionCPNacional:Boolean;
		public function setConfirmaCambioNacional(data:Boolean):void
		{
			confirmacionCPNacional = data;
			dispatchEvent(new Event("enviaConfirmacionDeCambioDePrecioNacional"));
			
		}
		
		[Bindable(event="enviaConfirmacionDeCambioDePrecioNacional")]
		public function get enviarConfirmacionCambioPrecioNacional():Boolean
		{
			return confirmacionCPNacional;
		}

		
		
		
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		// ++++++++++++++++++++++++  ERRORES    +++++++++++++++++++++++++++
		public function errorRegistarConfirmacion(objeto:Object):void
		{
			trace("ERROR REGISTRAR CONFIRMACION")
			trace(objeto.toString())
			alertaSingleton.show( objeto.toString() );
		}
		
		public function ModeloRegistrarConfirmacion()
		{
			
		}
	}
}