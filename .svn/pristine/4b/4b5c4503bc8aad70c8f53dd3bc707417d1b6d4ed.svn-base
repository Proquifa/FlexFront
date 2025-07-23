package
{
	import flash.system.Capabilities;
	
	import mx.core.DPIClassification;
	import mx.core.RuntimeDPIProvider;
	
	public class DPIProvider extends RuntimeDPIProvider
	{
		public function DPIProvider()
		{
			super();
		}
		
		override public function get runtimeDPI():Number
		{
			trace(Capabilities.screenDPI);
			
			if (Capabilities.screenDPI < 200)
				return DPIClassification.DPI_160;
			
			if (Capabilities.screenDPI <= 280)
				return DPIClassification.DPI_240;
			
			return DPIClassification.DPI_320; 
		}
	}
}