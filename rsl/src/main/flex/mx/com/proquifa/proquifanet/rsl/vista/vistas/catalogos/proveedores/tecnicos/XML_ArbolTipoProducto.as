package mx.com.proquifa.proquifanet.rsl.vista.vistas.catalogos.proveedores.tecnicos
{
	public class XML_ArbolTipoProducto
	{
		public function XML_ArbolTipoProducto()
		{
		}
		private static var _instance:XML_ArbolTipoProducto=null;
		public static function getInstance():XML_ArbolTipoProducto{
			if(_instance==null){
				_instance=new XML_ArbolTipoProducto() ;
			}
			return _instance;
		}
		public static const permissionsXML:XML =
			<permissions>
				<permission  pName="Farma"  checked="0" >
								<permission  pName="Estandares"  checked="0" >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Farma" tipo="Estandares" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Farma" tipo="Estandares" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Farma" tipo="Estandares" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"      industria="Farma" tipo="Estandares" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0" tipo="" subtipo="" control="" >
										<permission pName="Mundiales" checked="0"   industria="Farma" tipo="Estandares" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Farma" tipo="Estandares" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Farma" tipo="Estandares" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Farma" tipo="Estandares" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>
								<permission  pName="Reactivos" checked="0"   >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Farma" tipo="Reactivos" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Farma" tipo="Reactivos" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Farma" tipo="Reactivos" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Farma" tipo="Reactivos" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Farma" tipo="Reactivos" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Farma" tipo="Reactivos" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Farma" tipo="Reactivos" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0" 	    industria="Farma" tipo="Reactivos" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>	
								<permission  pName="Publicaciones" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Farma" tipo="Publicaciones" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Farma" tipo="Publicaciones" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Farma" tipo="Publicaciones" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Farma" tipo="Publicaciones" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Labware" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Farma" tipo="Labware" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Farma" tipo="Labware" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Farma" tipo="Labware" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Farma" tipo="Labware" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Medicamentos" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Farma" tipo="Medicamentos" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Farma" tipo="Medicamentos" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Farma" tipo="Medicamentos" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Farma" tipo="Medicamentos" subtipo="" control="Origen" id="0"/>
								</permission>
				</permission>
				<permission  pName="Clinica"  checked="0" >
								<permission  pName="Estandares"  checked="0" >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Clinica" tipo="Estandares" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Clinica" tipo="Estandares" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Clinica" tipo="Estandares" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"      industria="Clinica" tipo="Estandares" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0" tipo="" subtipo="" control="" >
										<permission pName="Mundiales" checked="0"   industria="Clinica" tipo="Estandares" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Clinica" tipo="Estandares" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Clinica" tipo="Estandares" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Clinica" tipo="Estandares" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>
								<permission  pName="Reactivos" checked="0"   >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Clinica" tipo="Reactivos" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Clinica" tipo="Reactivos" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Clinica" tipo="Reactivos" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Clinica" tipo="Reactivos" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Clinica" tipo="Reactivos" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Clinica" tipo="Reactivos" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Clinica" tipo="Reactivos" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0" 	    industria="Clinica" tipo="Reactivos" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>	
								<permission  pName="Labware" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Clinica" tipo="Labware" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Clinica" tipo="Labware" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Clinica" tipo="Labware" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Clinica" tipo="Labware" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Diagnóstico" checked="0"  >
									<permission pName="Coproparasitoscopicos" checked="0" >
										<permission pName="Mundiales" checked="0"   industria="Clinica" tipo="Diagnóstico" subtipo="Coproparasitoscopicos" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Clinica" tipo="Diagnóstico" subtipo="Coproparasitoscopicos" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Clinica" tipo="Diagnóstico" subtipo="Coproparasitoscopicos" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Clinica" tipo="Diagnóstico" subtipo="Coproparasitoscopicos" control="Origen" id="0"/>
									</permission>
								</permission>
								<permission  pName="Publicaciones" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Clinica" tipo="Publicaciones" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Clinica" tipo="Publicaciones" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Clinica" tipo="Publicaciones" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Clinica" tipo="Publicaciones" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Medicamentos" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Clinica" tipo="Medicamentos" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Clinica" tipo="Medicamentos" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Clinica" tipo="Medicamentos" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Clinica" tipo="Medicamentos" subtipo="" control="Origen" id="0"/>
								</permission>
				</permission>
				<permission  pName="Alimentos"  checked="0" >
								<permission  pName="Estandares"  checked="0" >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Alimentos" tipo="Estandares" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Alimentos" tipo="Estandares" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Alimentos" tipo="Estandares" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"      industria="Alimentos" tipo="Estandares" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0" tipo="" subtipo="" control="" >
										<permission pName="Mundiales" checked="0"   industria="Alimentos" tipo="Estandares" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Alimentos" tipo="Estandares" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Alimentos" tipo="Estandares" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Alimentos" tipo="Estandares" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>
								<permission  pName="Reactivos" checked="0"   >
									<permission  pName="Químico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Alimentos" tipo="Reactivos" subtipo="Químico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Alimentos" tipo="Reactivos" subtipo="Químico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"	    industria="Alimentos" tipo="Reactivos" subtipo="Químico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0"	    industria="Alimentos" tipo="Reactivos" subtipo="Químico" control="Origen" id="0"/>
									</permission>
									<permission pName="Biológico" checked="0"  >
										<permission pName="Mundiales" checked="0"   industria="Alimentos" tipo="Reactivos" subtipo="Biológico" control="Mundiales" id="0"/>
										<permission pName="Nacionales" checked="0"  industria="Alimentos" tipo="Reactivos" subtipo="Biológico" control="Nacionales" id="0"/>
										<permission pName="Normal" checked="0"      industria="Alimentos" tipo="Reactivos" subtipo="Biológico" control="Normal" id="0"/>
										<permission pName="Origen" checked="0" 	    industria="Alimentos" tipo="Reactivos" subtipo="Biológico" control="Origen" id="0"/>
									</permission>
								</permission>	
								<permission  pName="Labware" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Alimentos" tipo="Labware" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Alimentos" tipo="Labware" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Alimentos" tipo="Labware" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Alimentos" tipo="Labware" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Pruebas de aptitud" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Alimentos" tipo="Medicamentos" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Alimentos" tipo="Medicamentos" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Alimentos" tipo="Medicamentos" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Alimentos" tipo="Medicamentos" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Publicaciones" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Alimentos" tipo="Publicaciones" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Alimentos" tipo="Publicaciones" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Alimentos" tipo="Publicaciones" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Alimentos" tipo="Publicaciones" subtipo="" control="Origen" id="0"/>
								</permission>
								<permission  pName="Medicamentos" checked="0"  >
									<permission pName="Mundiales" checked="0"		industria="Alimentos" tipo="Medicamentos" subtipo="" control="Mundiales" id="0"/>
									<permission pName="Nacionales" checked="0"		industria="Alimentos" tipo="Medicamentos" subtipo="" control="Nacionales" id="0"/>
									<permission pName="Normal" checked="0"			industria="Alimentos" tipo="Medicamentos" subtipo="" control="Normal" id="0"/>
									<permission pName="Origen" checked="0"			industria="Alimentos" tipo="Medicamentos" subtipo="" control="Origen" id="0"/>
								</permission>
				</permission>
			</permissions>;
		
		
	}
}