package modelo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.HorarioCalendario;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.Sprint;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.ventas.visita.VisitaCliente;

	public class ModeloVisitasVendedorMobil extends EventDispatcher
	{
		
		/////////////////////////////////////////////////////////////////////
		//////////////////////// validación empleado ////////////////////////
		/////////////////////////////////////////////////////////////////////
		
		private var visitasAgendadas:ArrayCollection;
		public function recibirVisiasProgramadas(data:ArrayCollection):void{
			if(data){
				for each (var visita:VisitaCliente in data) 
				{
					if(visita.horaVisitaInicio){
						visita.fechaVInicioHora = visita.horaVisitaInicio.getHours();
						visita.fechaVInicioMinuto = visita.horaVisitaInicio.getMinutes();
						visita.fechaVisita = visita.fechaEstimadaVisita;
					}
					
					if(visita.horaVisitaFin){
						visita.fechaVFinHora = visita.horaVisitaFin.getHours();
						visita.fechaVFinMinuto = visita.horaVisitaFin.getMinutes();
						visita.fechaVisita = visita.fechaEstimadaVisita;
					}
				}
				visitasAgendadas = data;
				
			}else{
				visitasAgendadas = new ArrayCollection;
			}
			
			dispatchEvent( new Event("enviarVisitasAgendadasModeloVisitasVendedorMobil") );
		}
		
		[Bindable (event="enviarVisitasAgendadasModeloVisitasVendedorMobil")]
		public function get regresarVisiasProgramadas():ArrayCollection{
			return visitasAgendadas;
		}
		
		
		public static function convertirRangoFechasLista(fechaInicio:Date,fechaFin:Date):ArrayCollection
		{
			var nombreDiasCorto:Array = ["Dom","Lun","Mar","Miér","Jue","Vie","Sáb"];
			var nombreDias:Array = ["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"];
			var meses:Array = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
			var lista:ArrayCollection = new ArrayCollection;
			var temp:Date;
			
			var diaInicio:int = fechaInicio.getDate();
			var diaFin:int = fechaFin.getDate();
			
			if(fechaInicio.getMonth() == fechaFin.getMonth()){
				for (var i:int = diaInicio; i <= diaFin; i++) 
				{
					var objIgual:HorarioCalendario = new HorarioCalendario;
					
					temp = new Date(fechaInicio.getFullYear(),fechaInicio.getMonth(),i);
					if(temp.day == 1 || temp.day == 2 || temp.day == 3 || temp.day == 4 || temp.day == 5){
						objIgual.numeroDia = i;
						objIgual.siglasDia = nombreDiasCorto[temp.getDay()];
						objIgual.diaNombre = nombreDias[temp.getDay()];
						objIgual.mesNombre = meses[temp.getMonth()];
						objIgual.numeroMes = fechaInicio.getMonth();
						objIgual.anio  = fechaInicio.getFullYear();
						lista.addItem(objIgual);
					}
				}
			}else{
				temp = new Date(fechaInicio.getFullYear(),fechaInicio.getMonth());
				var finMes:int = getNumeroDias(fechaInicio.getFullYear(),fechaInicio.getMonth());
				
				for (var j:int = diaInicio; j <= finMes; j++) 
				{
					var objIgual1:HorarioCalendario = new HorarioCalendario;
					objIgual1.numeroDia = 0;
					objIgual1.siglasDia = "";
					objIgual1.numeroMes = 0;
					var temp1:Date = new Date(fechaInicio.getFullYear(),fechaInicio.getMonth(),j);
					if(temp1.day == 1 || temp1.day == 2 || temp1.day == 3 || temp1.day == 4 || temp1.day == 5){
						objIgual1.numeroDia = j;
						objIgual1.siglasDia = nombreDiasCorto[temp1.getDay()];
						objIgual1.diaNombre = nombreDias[temp1.getDay()];
						objIgual1.mesNombre = meses[temp1.getMonth()];
						objIgual1.numeroMes = fechaInicio.getMonth();
						objIgual1.anio  = fechaInicio.getFullYear();
						lista.addItem(objIgual1);
					}
				}
				for (var k:int = 1; k <= diaFin; k++) 
				{
					var objIgual2:HorarioCalendario = new HorarioCalendario;
					objIgual2.numeroDia = 0;
					objIgual2.siglasDia = "";
					objIgual2.numeroMes = 0;
					var temp2:Date = new Date(fechaFin.getFullYear(),fechaFin.getMonth(),k);
					if(temp2.day == 1 || temp2.day == 2 || temp2.day == 3 || temp2.day == 4 || temp2.day == 5){
						objIgual2.numeroDia = k;
						objIgual2.siglasDia = nombreDiasCorto[temp2.getDay()];
						objIgual2.diaNombre = nombreDias[temp2.getDay()];
						objIgual2.mesNombre = meses[temp2.getMonth()];
						objIgual2.numeroMes = fechaFin.getMonth();
						objIgual2.anio  = fechaInicio.getFullYear();
						lista.addItem(objIgual2);
					}
				}
				
			}
			return lista;
		}
		private static function getNumeroDias(year:int, month:int):int{
			var d:Date=new Date(year, month+1, 0);
			return d.getDate();
		}
		
		private static var respuestaCheckIn:Object;
		public function recibirRespuestaFecha(value:String):void{
			respuestaCheckIn = new Object;
			respuestaCheckIn.value = value;
			dispatchEvent( new Event("enviarRespuestaCheckInModeloVisitasVendedorMobil") );
		}
		[Bindable (event="enviarRespuestaCheckInModeloVisitasVendedorMobil")]
		public function get regresarRespuestaFecha():Object{
			return respuestaCheckIn;
		}
		
		private static var sprintCurso:Sprint;
		public function recibirSprintEnCurso(value:Sprint):void{
			sprintCurso = new Sprint;
			if(value)
				sprintCurso = value;
			dispatchEvent( new Event("enviarSprintCursoModeloVisitasVendedorMobil") );
		}
		[Bindable (event="enviarSprintCursoModeloVisitasVendedorMobil")]
		public function get regresarSprintEnCurso():Sprint{
			return sprintCurso;
		}

		//Actualizo Direccion Cliente
		private static var respuestaDireccion:Object;
		public function recibirRespuestaDireccion(value:Boolean):void{
			respuestaDireccion = new Object;
			respuestaDireccion.value = value;
			dispatchEvent( new Event("enviarRespuestaDireccionModeloVisitasVendedorMobil") );
		}
		[Bindable (event="enviarRespuestaDireccionModeloVisitasVendedorMobil")]
		public function get regresarRespuestaDireccion():Object{
			return respuestaDireccion;
		}
		
		public static function limpiarRespuesta():void{
			respuestaCheckIn="";
		}
		
		public function faultVisitasProgramadas(error:Object):void{
			trace(error.toString());
		}
		
		public function ModeloVisitasVendedorMobil()
		{
			respuestaCheckIn = "";
		}
	}
}