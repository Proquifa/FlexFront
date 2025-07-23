package mx.com.proquifa.vista.vistas.skin.cover
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.PerspectiveProjection;
	import flash.geom.Point;
	import flash.geom.Vector3D;
	
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.comerciales.EventoCatProOferta;
	import mx.com.proquifa.proquifanet.rsl.vista.eventos.catalogos.proveedores.tecnicos.EventoCatProClasificacion;
	import mx.com.proquifa.proquifanet.rsl.vista.modelo.catalogos.proveedores.ConfiguracionPrecio;
	import mx.com.proquifa.proquifanet.rsl.vista.utils.UtilsFecha;
	import mx.com.proquifa.vista.eventos.tramitarCompra.EventoTramitarComprarMateriales;
	import mx.controls.Spacer;
	import mx.events.EffectEvent;
	import mx.graphics.GradientEntry;
	import mx.graphics.LinearGradient;
	import mx.utils.StringUtil;
	
	import spark.components.Group;
	import spark.components.HGroup;
	import spark.components.VGroup;
	import spark.effects.Fade;
	import spark.primitives.Rect;
	
	import skins.skin.botones.buttonImagen.buttonImagenDefaultPQNet;
	import skins.skin.botones.toggleButton.buttonTogglePQNetDefault;
	import skins.skin.label.TextoBankGothic_20_Blanco;
	import skins.skin.label.Texto_10_Blanco;
	import skins.skin.label.TituloBankGothic_24_Blanco;
	
	public class CoverComoUnGrupo extends Group
	{
		
		private var _startX:Number;
		private var _endX:Number;
		private var _startRotationY:Number;
		private var _endRotationY:Number;
		private var _startZ:Number;
		private var _endZ:Number;
		
		private var _currentFamilia:ConfiguracionPrecio;
		private var myParent:CoverFlowPQNet; 
		
		private var laFamiliaTieneProductos:Boolean;
		private var laFamiliaTieneClasificaciones:Boolean;
		
		private var _mouseEvent:MouseEvent;
		
		private var grupoInterno:Group;
		
		private var btnGeneral:buttonTogglePQNetDefault;
		private var btnPrecioLista:buttonTogglePQNetDefault;
		private var btnClasificacion:buttonTogglePQNetDefault;
		private var btnProducto:buttonTogglePQNetDefault;
		private var btnEngrane:buttonImagenDefaultPQNet;
		
		
		private var industria:TituloBankGothic_24_Blanco;
		private var tipo:TextoBankGothic_20_Blanco;
		private var subTipo:TextoBankGothic_20_Blanco;
		private var control:TextoBankGothic_20_Blanco;
		
		private var showBotones:Fade;
		private var _showIconos:Boolean;
		private var _vista:String;
		
		public function CoverComoUnGrupo()
		{
			super();
			
			this.addEventListener(Event.ADDED_TO_STAGE,coverComoUnGrupo_ADDEDEvent,false,0,true);
			
			clipAndEnableScrolling=false;
			grupoInterno = new Group;
			grupoInterno.percentWidth  = grupoInterno.percentHeight = 100;
			this.transform.perspectiveProjection = new PerspectiveProjection;
			grupoInterno.addEventListener(MouseEvent.CLICK,grupoInterno_Click,false,0,true);
			addElement(grupoInterno);
			showBotones = new Fade;
			if(showIconos)
			{
				showBotones.alphaFrom = 0;
				showBotones.alphaTo = 1;
				showBotones.duration = 100;
			}
		}
		
		private function coverComoUnGrupo_ADDEDEvent(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE,coverComoUnGrupo_ADDEDEvent);
			if(this.parent.parent is CoverFlowPQNet)
			{
				myParent = (this.parent.parent as CoverFlowPQNet);
			}
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth,unscaledHeight);
			
			this.transform.perspectiveProjection.projectionCenter = new Point((this.parent.parent.width/2),(Math.round(unscaledHeight/7)*6 +20));
		}
		
		private function grupoInterno_Click(e:MouseEvent):void
		{
			e.preventDefault();
			e.stopImmediatePropagation();
			e.stopPropagation();
			
			dispatchEvent(new MouseEvent("grupoInterno_MouseEventClick")) ;
		}
		
		private var cntBotones:HGroup;
		private var lblFua:Texto_10_Blanco;
		public function load():void
		{
			grupoInterno.removeAllElements();
			grupoInterno.x = -(this.width/2);
			
			var rec:Rect = new Rect;
			rec.percentWidth = rec.percentHeight = 100;
			grupoInterno.addElement(rec);
			
			var linear:LinearGradient = new LinearGradient();
			var entry1:GradientEntry = new GradientEntry;
			entry1.color = 0x333333;
			entry1.ratio = 0;
			
			var entry2:GradientEntry = new GradientEntry;
			entry2.color = 0x000000;
			entry2.ratio = 0.3;
			
			var entry3:GradientEntry = new GradientEntry;
			entry3.color = 0x000000;
			entry3.ratio = 0.7;
			
			var entry4:GradientEntry = new GradientEntry;
			entry4.color = 0x444444;
			entry4.ratio = 1;
			
			linear.entries =[entry1,entry2,entry3,entry4];
			linear.rotation = 90;
			
			rec.fill = linear;
			
			cntBotones = new HGroup;
			cntBotones.paddingTop = 10;
			cntBotones.horizontalCenter = 0;
			cntBotones.gap = 10;
			cntBotones.alpha = 0;
			cntBotones.top = 0;
			cntBotones.visible = false;
			
			btnGeneral = new buttonTogglePQNetDefault;
			btnGeneral.id = "btnGeneral";
			btnGeneral.tipoButtonToggle = "imagen";
			btnGeneral.tipoImagen = "generalCatPro";
			btnGeneral.enabled = true;
			
			btnPrecioLista= new buttonTogglePQNetDefault;
			btnPrecioLista.id = "btnPrecioLista";
			btnPrecioLista.tipoButtonToggle = "imagen";
			btnPrecioLista.tipoImagen = "precioListaCatPro";
			
			btnClasificacion= new buttonTogglePQNetDefault;
			btnClasificacion.id = "btnClasificacion";
			btnClasificacion.tipoButtonToggle = "imagen";
			btnClasificacion.tipoImagen = "clasificacionCatPro";
			
			btnProducto= new buttonTogglePQNetDefault;
			btnProducto.id = "btnProducto";
			btnProducto.tipoButtonToggle = "imagen";
			btnProducto.tipoImagen = "productoCatPro";
			
			btnEngrane = new buttonImagenDefaultPQNet;
			btnEngrane.id = "btnEngrane";
			btnEngrane.tipoDeImagen = "imgEngrane20X20";
			
			cntBotones.addElement(btnGeneral);
			cntBotones.addElement(btnPrecioLista);
			cntBotones.addElement(btnClasificacion);
			cntBotones.addElement(btnProducto);
			cntBotones.addElement(btnEngrane);
			
			
			var cntLetras:VGroup = new VGroup;
			cntLetras.percentWidth = cntLetras.percentHeight = 100;
			cntLetras.horizontalAlign = "center";
			cntLetras.verticalAlign = "middle";
			cntLetras.paddingTop = 10;
			cntLetras.gap = 0;
			
			industria = new TituloBankGothic_24_Blanco;
			industria.id = "industria";
			if(currentFamilia.industria == null || StringUtil.trim(currentFamilia.industria).length == 0)
			{
				industria.text = "FARMA";
			}
			else
			{
				industria.text = currentFamilia.industria.toUpperCase();	
			}
			//cntLetras.addElement(industria);
			
			var spacer:Spacer = new Spacer;
			spacer.height = 10;
			cntLetras.addElement(spacer);
			
			if(currentFamilia.tipo != null  && StringUtil.trim(currentFamilia.tipo).length >0 )
			{
				tipo = new TextoBankGothic_20_Blanco;
				tipo.id = "tipo";
				
				if(currentFamilia.tipo.toLowerCase() == "estandares")
					tipo.text = "ESTÁNDARES";
				else
					tipo.text = currentFamilia.tipo.toUpperCase();
				cntLetras.addElement(tipo);
			}
			
			
			if(currentFamilia.subtipo != null && StringUtil.trim(currentFamilia.subtipo).length > 0)
			{
				subTipo = new TextoBankGothic_20_Blanco;
				subTipo.id = "subTipo";
				subTipo.text = currentFamilia.subtipo.toUpperCase();
				cntLetras.addElement(subTipo);
			}
			
			
			
			if( currentFamilia.control != null && StringUtil.trim(currentFamilia.control).length > 0)
			{
				control = new TextoBankGothic_20_Blanco;
				control.id = "control";
				control.text = currentFamilia.control.toUpperCase();
				cntLetras.addElement(control);
			}
			
			lblFua = new Texto_10_Blanco;
			lblFua.bottom = 10;
			lblFua.horizontalCenter = 0;
			lblFua.visible = false;
			lblFua.alpha = 0;
			if(currentFamilia.fechaUltimaActualizacion)
			{
				lblFua.text = "FUA: " + UtilsFecha.formatoFechaDDMMMYYYYHHMM(currentFamilia.fechaUltimaActualizacion);
			}
			showBotones.targets = [cntBotones,lblFua];
			
			grupoInterno.addElement(cntBotones);
			grupoInterno.addElement(cntLetras);			
			grupoInterno.addElement(lblFua);		
			
			
			if(currentFamilia.noProductos > 0 )
			{
				laFamiliaTieneProductos = true;
				btnPrecioLista.enabled = true;
				btnProducto.enabled = true;
				btnEngrane.enabled = true;
			}
			else
			{
				btnPrecioLista.enabled = false;
				btnProducto.enabled = false;
				btnEngrane.enabled = false;
			}
			
			if(currentFamilia.noClasificaciones > 0)
			{
				laFamiliaTieneClasificaciones = true;
				btnClasificacion.enabled = true;
			}
			else
			{
				laFamiliaTieneClasificaciones = false;
				btnClasificacion.enabled = false;
			}
		}
		
		
		public function evaluarElQueDebeEstarSeleccionado():void
		{
			if(!myParent)
				return;
				
			if(myParent.currentNivel == "Precio lista" || myParent.currentNivel == "Producto")
			{
				if(!laFamiliaTieneProductos)
				{
					if (btnGeneral.enabled)
						btnGeneral.selected = true;	
					if(btnPrecioLista.enabled)
						btnPrecioLista.selected = false;
					if(btnProducto.enabled)
						btnProducto.selected = false;
					if(btnClasificacion.enabled)
						btnClasificacion.selected = false;
					myParent.currentNivel = 'Generales';
				}
				else
				{
					if (btnGeneral.enabled)
						btnGeneral.selected = false;	
					if(btnClasificacion.enabled)
						btnClasificacion.selected = false;
					
					if(myParent.currentNivel == "Producto")
					{
						if(btnProducto.enabled)
							btnProducto.selected = true;
						if(btnPrecioLista.enabled)
							btnPrecioLista.selected = false;
					}
					else
					{
						if(btnPrecioLista.enabled)
							btnPrecioLista.selected = true;
						if(btnProducto.enabled)
							btnProducto.selected = false;
					}
					
				}
			}
			else if(myParent.currentNivel == "Clasificacion")
			{
				if(!laFamiliaTieneClasificaciones)
				{
					if(btnGeneral.enabled)
						btnGeneral.selected = true;
					if(btnPrecioLista.enabled)
						btnPrecioLista.selected = false;
					if(btnProducto.enabled)
						btnProducto.selected = false;
					if(btnClasificacion.enabled)
						btnClasificacion.selected = true;
					myParent.currentNivel = 'Generales';
				}
				else
				{
					if(btnGeneral.enabled)
						btnGeneral.selected = false;
					if(btnPrecioLista.enabled)
						btnPrecioLista.selected = false;
					if(btnProducto.enabled)
						btnProducto.selected = false;
					if(btnClasificacion.enabled)
						btnClasificacion.selected = true;
				}
			}
			else if(myParent.currentNivel == "Generales")
			{
				if(btnGeneral.enabled)
					btnGeneral.selected = true;
				if(btnPrecioLista.enabled)
					btnPrecioLista.selected = false;
				if(btnProducto.enabled)
					btnProducto.selected = false;
				if(btnClasificacion.enabled)
					btnClasificacion.selected = false;
			}
		}
		
		public function ocultarIconosTotal():void
		{
			cntBotones.visible = false;
			lblFua.visible = false;
		}
		
		public function mostrarBotonesDeNiveles():void
		{
			if(!cntBotones.visible)
			{
				if(!showBotones.isPlaying)
				{
					showBotones.play();
					showBotones.addEventListener(EffectEvent.EFFECT_END,showBotones_EffectEndHandler,false,0,true);
					evaluarElQueDebeEstarSeleccionado();
				}
			}
		}
		
		public function ocultarBotonesDeNiveles():void
		{
			if(cntBotones.visible || showBotones.isPlaying)
			{
				showBotones.stop();
				cntBotones.visible = false;
				cntBotones.alpha = 0;
				lblFua.visible = false;
				lblFua.alpha = 0;
				eliminarListeners();
			}
		}
		
		
		private function showBotones_EffectEndHandler(e:EffectEvent):void
		{
			showBotones.removeEventListener(EffectEvent.EFFECT_END,showBotones_EffectEndHandler);
			if (showIconos)
			{
				cntBotones.visible = true;
				cntBotones.includeInLayout = true;
				cntBotones.alpha = 1;
			}
			else
			{
				cntBotones.visible = false;
				cntBotones.includeInLayout = false;
				cntBotones.alpha = 0;
			}
			lblFua.visible = true;
			lblFua.alpha = 1;
			agregarListeners();
			
			cambiarNivelTramitarCompra();
		}
		
		private function agregarListeners():void
		{
			if(btnGeneral.enabled)
				btnGeneral.addEventListener(MouseEvent.CLICK,btns_controlGrupoOferta,false,0,true);
			if(btnPrecioLista.enabled)
				btnPrecioLista.addEventListener(MouseEvent.CLICK,btns_controlGrupoOferta,false,0,true);
			if(btnProducto.enabled)
				btnProducto.addEventListener(MouseEvent.CLICK,btns_controlGrupoOferta,false,0,true);
			if(btnClasificacion.enabled)
				btnClasificacion.addEventListener(MouseEvent.CLICK,btns_controlGrupoOferta,false,0,true);
			
			btnEngrane.addEventListener(MouseEvent.CLICK,btnEngrane_clickHandler,false,0,true);
		}
		
		private function eliminarListeners():void
		{
			btnGeneral.removeEventListener(MouseEvent.CLICK,btns_controlGrupoOferta);
			btnPrecioLista.removeEventListener(MouseEvent.CLICK,btns_controlGrupoOferta);
			btnClasificacion.removeEventListener(MouseEvent.CLICK,btns_controlGrupoOferta);
			btnProducto.removeEventListener(MouseEvent.CLICK,btns_controlGrupoOferta);
			btnEngrane.removeEventListener(MouseEvent.CLICK,btnEngrane_clickHandler);
		}
		
		private function cambiarNivelTramitarCompra():void
		{
			var selected:EventoTramitarComprarMateriales = new EventoTramitarComprarMateriales(EventoTramitarComprarMateriales.CAMBIA_NIVEL_VISTA_COVERFLOW);
			selected.configuracionSelect = _currentFamilia;
			selected.posicionDeLaConfEnElCinturon = _currentFamilia.numFila;
			selected.familiaSelect = _currentFamilia.tipo +"-"+_currentFamilia.subtipo+"-"+_currentFamilia.control
			dispatchEvent(selected);
		}
		
		private function btns_controlGrupoOferta(event:MouseEvent):void
		{
			event.preventDefault();
			event.stopPropagation();
			event.stopImmediatePropagation();
			
			btnGeneral.selected = false;
			btnPrecioLista.selected = false;
			btnProducto.selected = false;
			btnClasificacion.selected = false;
			
			switch(event.currentTarget.id)
			{
				case "btnGeneral":
				{
					myParent.currentNivel = "Generales";
					btnGeneral.selected = true;
					break;
				}
				case "btnPrecioLista":
				{
					myParent.currentNivel = "Precio lista";
					btnPrecioLista.selected = true;
					break;
				}
				case "btnProducto":
				{
					myParent.currentNivel = "Producto";
					btnProducto.selected = true;
					break;
				}
				case "btnClasificacion": 
				{
					myParent.currentNivel = "Clasificacion";
					btnClasificacion.selected = true;
					break;
				}
			}
			cambiarNivelTramitarCompra();
		}
		
		private function btnEngrane_clickHandler(event:MouseEvent):void
		{
			event.stopImmediatePropagation();
			event.stopPropagation();
			
			if(laFamiliaTieneProductos)
			{
				var popUpVigenciaRestingido:EventoCatProOferta = new EventoCatProOferta(EventoCatProOferta.ABRIR_POPUP_PARA_VIGENCIA_Y_RESTRINGIDO);
				popUpVigenciaRestingido.configuracionPrecio = currentFamilia;
				
				if(industria)
					popUpVigenciaRestingido.configuracionPrecio.industria = industria.text;
				if(tipo)
					popUpVigenciaRestingido.configuracionPrecio.tipo = tipo.text;
				if(subTipo)
					popUpVigenciaRestingido.configuracionPrecio.subtipo = subTipo.text;
				if(control)
					popUpVigenciaRestingido.configuracionPrecio.control = control.text;
				
				dispatchEvent(popUpVigenciaRestingido); 
			}
		}
		
		public function updateTween(elapsedTime:Number, duration:Number):void 
		{
			var tempX:Number = ExponentialEaseOut(elapsedTime, _startX, _endX - _startX, duration);
			var temRotationY:Number = ExponentialEaseOut(elapsedTime, _startRotationY, _endRotationY - _startRotationY, duration);
			var tempZ:Number = ExponentialEaseOut(elapsedTime, _startZ, _endZ - _startZ, duration);
			
			this.transformAround(null, null, new Vector3D(0,temRotationY,0),null,null,null,null);
			this.x = tempX;
			this.z = tempZ;
			
		}
		
		private static function ExponentialEaseOut(t:Number, b:Number, c:Number, d:Number):Number
		{
			return (t==d) ? b+c : c * (-Math.pow(2, -10 * t/d) + 1) + b;
		}
		
		public function get endX():Number
		{
			return _endX;
		}
		
		public function set endX(value:Number):void
		{
			_startX = this.x;
			_endX = value;
		}
		
		public function get endZ():Number
		{
			return _endZ;
		}
		
		public function set endZ(value:Number):void
		{
			_startZ = this.z;
			_endZ = value;
		}
		
		public function get endRotationY():Number
		{
			return _endRotationY;
		}
		
		public function set endRotationY(value:Number):void
		{
			_startRotationY = this.rotationY;
			_endRotationY = value;
		}
		
		public function get mouseEvent():MouseEvent
		{
			return _mouseEvent;
		}
		
		public function set mouseEvent(value:MouseEvent):void
		{
			_mouseEvent = value;
		}
		
		public function get currentFamilia():ConfiguracionPrecio
		{
			return _currentFamilia;
		}
		
		public function set currentFamilia(value:ConfiguracionPrecio):void
		{
			_currentFamilia = value;
		}
		
		public function get showIconos():Boolean
		{
			return _showIconos;
		}
		
		public function set showIconos(value:Boolean):void
		{
			_showIconos = value;
		}
		
		public function get vista():String
		{
			return _vista;
		}
		
		public function set vista(value:String):void
		{
			_vista = value;
		}
		
		
	}
}