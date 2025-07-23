package skins.catalogos
{
	import mx.com.proquifa.proquifanet.rsl.vista.utils.Constantes;

	public class catalogoAlertas
	{
		//titulos Confirmacones
		public static const TIT_CONF_operacionExitosa:String = "Operación exitosa"; 
		//Titulos advertencia
		public static const TIT_ADV_atencion:String = "¡Atención!";  //existe otro atencion en gestion 
		public static const TIT_ADV_informacionIncompleta:String = "Información incompleta";
		public static const TIT_ADV_operacionImposible:String = "Operación Imposible";
		public static const TIT_ADV_Eliminar_cartera:String = "¿Eliminar cartera?"; 
		public static const TIT_ADV_Publicar_cartera:String = "¿Publicar cartera?"; 
		//titulos error
		public static const TIT_ERR:String = "Error";
		//Confirmacones
		public static const CONF_seGuardaronLosDatos:String = "Se guardaron los datos";
		public static const CONF_seHaEnviadoLaPartida:String = "Se ha enviado la partida";
		public static const CONF_publicarCartera:String = "¿Desea publicar esta cartera?";
		//Eliminar
		public static const ELIMINAR:String = "Se va a eliminar ";
		public static const ELIMINAR_Cartera:String = "¿Esta seguro que desea eliminar esta cartera?";
		
		//advertencia
		public static const ADV_antesDeSalirDeseaGuardar:String = "¿Antes de salir desea guardar los cambios realizados?";
		public static const ADV_elConceptoEsObligatorio:String = "El concepto es obligatorio";
		public static const ADV_elCostoEsObligatorio:String = "El costo es obligatorio";
		public static const ADV_elOrigenMismoDestino:String = "El origen es el mismo del destino";
		public static const ADV_CONTACTO_contactoNoSeleccionado:String = "No ha seleccionado ningún contacto para asociar";
		public static const ADV_debeIndicarUnaDirecciónDeEmail:String = "Debe indicar al menos una dirección de Email en el campo Para";
		public static const ADV_debeIndicarMonedaNuevoProveedor:String = "Debe indicar el tipo de moneda para el nuevo proveedor";
		public static const ADV_informacionIncompleta:String = "Información incompleta";
		public static const ADV_laDireccionEmailIncorrecta:String = "La direccion de Email es incorrecta";
		public static const ADV_tableroClientesBusquedaFault:String = "Debe seleccionar un cliente para realizar la consulta";
		public static const ADV_tableroProveedorBusquedaFault:String = "Debe seleccionar un proveedor para realizar la consulta";
		public static const ADV_buscaContacto:String = "Debe seleccionar un tipo de busqueda";
		public static const ADV_eliminarRegistro:String = "¿Desea eliminar el registro?";
		
		//gestionar visitas
		public static const ADV_descartarSolicitudes:String = "Una vez agrupadas las solicitudes ya no podrán ser removidas del folio de visita al que han sido asignadas ¿DESEA CONTINUAR?";
		public static const ADV_seleccionarSolicitud:String = "Necesitas seleccionar a menos una solicitud. ";
		
		public static const ADV_que:String = "Contextualiza el problema identificado en la pregunta ¿Qué?";
		public static const ADV_donde:String = "Especificar el lugar donde se localizo el problema en la pregunta ¿Dónde?";
		public static const ADV_cuando:String = "Anotar cuando identificaste el posible error en la pregunta ¿Cuándo?";
		
		public static const ADV_montoMayorCero:String = "El monto debe ser mayor a 0";
		//error
		public static const ERR_servicio:String = "Error en el servicio: ";
		public static const ERR_usuarioContraseniaNoValida:String = "Usuario o Contraseña inválida";
		public static const ERR_loginUsuarioNoPermitido:String = "Este usuario no esta permitido para esta aplicación";
		public static const ERR_channelProductor:String = "Se ha producido un error en el Productor";
		public static const ERR_channelConsumidor:String = "Se ha producido un error en el Consumidor";
		public static const ERR_erroAlCrearElPdf:String = "No se pudo crear correctamente el PDF";
		public static const ERR_errorAlGuardarCambios:String = "No se guardaron los cambios. --Fixme";// FIXME revisar redacción
		//								AIESC
		public static const CONF_AIESC_llamadaRegistrada:String =  "Se registró la llamada correctamente";
		public static const CONF_AIESC_documentoRegistrado:String = "Se registró el documento recibido con el folio: ";
		public static const CONF_AIESC_pendienteTerminado:String = "Pendiente Terminado.";
		public static const CONF_AIESC_documentoModificado:String = "Documento modificado.";
		public static const ADV_AIESC_PendienteBloqueado:String = "El pendiente se encuentra en modificación por otro usuario";
		public static const ADV_AIESC_declararEnvioFax:String = "No ha declarado el envío del fax";
		//								/AIESC
		//INCIDENTE
		public static const INCIDENTE_ADV_registraIncidente:String = "Está por REGISTRAR el INCIDENTE y no podrá modificarle posteriormente, ¿Desea continuar?";
		public static const INCIDENTE_ADV_reformulacionIncidente:String = "Está por REFORMULAR y no podrá modificarle posteriormente, ¿Desea continuar?";
		public static const INCIDENTE_ADV_redireccionIncidente:String ="Es imposible reenviar el incidente al subproceso indicado puesto que no cuenta con gerente ni responsable";
		public static const INCIDENTE_ERROR_REDIRECCIONAR:String = "Es necesario indicar un subproceso para poder direccionar el incidente";
		//public static const INCIDENTE_IMPORTANTE:String = "¡Importante ...!"; se cambia por "¡Atencion!"
		public static const INCIDENTE_CONF_confirmacionRegistroIncidente:String = "El incidente fue registrado";
		public static const INCIDENTE_CONF_cambiosGuardados:String = "Tus cambios fueron guardados";
		public static const INCIDENTE_CONF_registraIncidente:String = "La REFORMUACION fue registrada";
		
		//RFERENCIAS
		
		public static const REFERENCIA_ERR_documetoRepetido:String = "Este documento ya fue agregado";
		public static const REFERENCIA_ADV_agregarDocumento:String = "Es necesario agregar un documento";
		//public static const REFERENCIA_IMPORTANTE:String = "¡Importante ...!";
		public static const REFERENCIA_ADV_nombrarArchivo:String = "Nombra tu archivo";
		public static const REFERENCIA_ADV_descripcionJustificacion:String = "Describe tu justificación";
		
		//PROCEDIMINETOS ASOCIADOS	
		
		public static const PROCEDIMIENTOS_ADV_procedimientoSeleccionado:String = "La opción de: \n\n 'El procedimiento en cuestión no esta relacionado a ningún procedimiento' \n\n solo debe elegirse cuando no hay ningun procedimiento preeviamente seleccionado";
		
		// CONTACTOS

		public static const CONTACTO_ERR_asociarContacto:String = "No ha seleccionado ningún contacto para asociar";
		
		//GESTIÓN
		
		public static const GESTION_ADV_guardarCambio:String = "Está por abandonar el INSPECTOR ¿Desea guardar los cambios efectuados?";
		public static const GESTION_ADV_finalizarAnalisis:String = "Ha dado por finalizado su 'ANALISIS' y no podrá modificarse posteriormente, ¿Deseas continuar?";
		public static const GESTION_CONF_guardoExitoso:String = "El GUARDADO se a realizado con éxito ¿Desea CONTINUAR trabajando o SALIR?";
		public static const GESTION_ADV_faltaCompletarInformacion:String = "Te falta completar información ";
		public static const GESTION_ERR_operacioErronea:String = "No puedes realizar esta operación ";
		public static const GESTION_ADV_descripcionProblema:String = "Debe escribir una descripción en Problema"; 
		public static const GESTION_ADV_descripcionQue:String = "Debe escribir una descripción ¿Qué?";
		public static const GESTION_ADV_descripcionQuien:String = "Debe escribir una descripción ¿Quién?"; 
		public static const GESTION_ADV_descripcionDonde:String = "Debe escribir una descripción ¿Dónde?"; 
		public static const GESTION_ADV_descripcionCuando:String = "Debe escribir una descripción ¿Cuándo?";
		public static const GESTION_ADV_descripcionComo:String = "Debe escribir una descripción ¿Como?";
		public static const GESTION_ADV_descripcionPorQue:String = "Debe escribir una descripción ¿Por qué?";
		public static const GESTION_ADV_descripcionSolucion:String = "Debe escribir una descripción en SOLUCIÓN";
		public static const GESTION_ADV_seleccionaOrigen:String = "Selecciona un origen";
		public static const GESTION_ERR_marcadorErroneo:String = "No debes agregar marcadores propios del sistema ";
			
		//Comprador Phs Pharma
		public static const compradorPhs_cambiarMedioRequisitarEmail:String = "¿Desea cambiar el medio para requisitar a E-Mail?";
		public static const compradorPhs_cambiarMedioRequisitarTelefono:String = "¿Desea cambiar el medio para requisitar a Teléfono?";
		public static const compradorPhs_guardaCambiosPartidaRequisicion:String = "¿Se guardaran los cambios realizados en todas las partidas de la requisición?";
		public static const compradorPhs_seHaGeneradoUnaNuevaRequisición:String = "Se ha generado una nueva Requisición";
		public static const compradorPhs_seActualizoMedioTelefono:String = "Se actualizo el medio de la Requisicion a Teléfono"; //esta etiqueta podria quedar generica sino se usara la palabra requisicion... 
		public static const compradorPhs_seActualizoMedioEmail:String = "Se actualizo el medio de la Requisicion a E-Mail";		//esta etiqueta podria quedar generica sino se usara la palabra requisicion... 
		public static const compradorPhs_proformaNoQuedaVacia:String = "Una proforma no puede quedar vacia";
		public static const compradorPhs_cantidadExcedeLimitesProforma:String = "La cantidad de compra por las partidas escogidas excede los limites de la Proforma";
		public static const compradorPhs_partidaNoPermitida:String = "Existe almenos una partida no permitida en este carro";
		public static const compradorPhs_noSePuedeCrearProforma:String = "No se pueden crear proformas vacias";
		public static const compradorPhs_warDesbloqueaPartida:String = "¿Estas seguro de desbloquear la Proforma?";
		
		
		//Esperar
		public static const INICIAR_ESPERA:String = "Su solicitud esta siendo atendida por favor espere...";
		
		//Registro Evento
		public static const REGISTRO_EVENTO:String = "¿Está seguro que desea registrar éste usuario?";
		public static const ELIMINAR_EVENTO:String = "¿Está seguro que desea eliminar éste usuario?";
		
		public function catalogoAlertas()
		{
		}
	}
}