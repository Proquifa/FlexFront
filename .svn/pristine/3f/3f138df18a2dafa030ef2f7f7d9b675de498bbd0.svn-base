package mx.com.proquifa.proquifanet.rsl.vista.utils
{
	public class DateUtils
	{
		//Diferencia por dia o por milisegundos
		public static const DAY_OF_MONTH:String	= "day";
		public static const MILLISECONDS:String	= "milliseconds";
		
		// Calculo de Intervalo de valores para Date/Time
		private static const SECOND_VALUE:uint	= 1000;
		private static const MINUTE_VALUE:uint	= DateUtils.SECOND_VALUE * 60;
		private static const HOUR_VALUE:uint	= DateUtils.MINUTE_VALUE * 60;
		private static const DAY_VALUE:uint		= DateUtils.HOUR_VALUE * 24;
		private static const WEEK_VALUE:uint	= DateUtils.DAY_VALUE * 7;
		
		
		/**
		 * Compara la diferencia de dias, si la fecha fin es null
		 * Se compara con la fecha del dia.
		 * @param startDate
		 * @param endDate
		 * @param datePart
		 * @return 
		 * 
		 */
		public static function dateDiff( startDate:Date, endDate:Date, datePart:String = "day" ):Number {
			var _returnValue:Number = 0;
			if ( endDate == null){
				endDate = new Date();
			}
			switch ( datePart ) {
				case DateUtils.MILLISECONDS:
					var _adjustment:Number = ( startDate.timezoneOffset - endDate.timezoneOffset ) * 60 * 1000;
					_returnValue = endDate.time - startDate.time + _adjustment;
					break;
				case DateUtils.DAY_OF_MONTH:
					_returnValue = Math.floor( DateUtils.dateDiff( startDate, endDate, DateUtils.MILLISECONDS ) / DateUtils.DAY_VALUE );
					break;
			}
			
			return _returnValue;
			
		}
	}
}