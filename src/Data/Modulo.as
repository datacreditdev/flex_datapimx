package Data
{
	public class Modulo
	{
		import ADMON.*;
		import CATALOGOS.*;
		import CONTROL.*;
		import OPERAC.*;
		import PLD.*;
		import PRINCIPAL.*;
		import REPORTES.*;
		import TESORERIA.*;
		import CONTABILIDAD.*;
		
		//Modulos
		public var frm_1:UsuariosdelSistema;
		public var frm_2_1:TiposdeUsuario;
		public var frm_9:AcreditadosGrupales;	
		public var frm_10:SolicituddeCreditoGrupal;	
		public var frm_11:formPdf;
		public var frm_12:EvaluaciondeCreditoGrupal;
		public var frm_14:EntregadeCreditoGrupal;
		public var frm_15:CatalogoSEPOMEX;
		public var frm_16:RegionesyOficinas;
		public var frm_17:SituaciondeCartera;
		public var frm_18:PagosEsperados;
		public var frm_19:ProductosdeCredito;
		public var frm_20:PagosNoIdentificados;
		public var frm_21:PagosIdentificados;
		public var frm_23:AntiguedaddeSaldos;
		public var frm_25:ControldeAhorros;
		public var frm_26:ControldeAsistencia;
		public var frm_27:OPERAC.SolicituddeCredito;
		public var frm_28:REPORTES.SolicituddeCredito;
		public var frm_31:SolicituddeCreditoComunitario;
		public var frm_34:AgendaDiariadeAsesor;
		public var frm_38:CierredeDia;
		public var frm_39:AgendaDiariadeSucursal;
		public var frm_45:SimuladordeCobro;
		public var frm_48:ReimpresiondeOrdenesdePago;
		public var frm_49:ImpresiondeBurodeCredito;
		public var frm_50:AdministraciondeOrdenesdePago;
		public var frm_51:Acreditados;
		public var frm_52:ExcepcionesGL;
		public var frm_53:Prestamos;
		public var frm_54:CausasdeRechazo;
		public var frm_55:Correcciones;
		public var frm_56:BitacoradeOperacion;
		public var frm_57:PlandePagos;
		public var frm_58:REPORTES.ReportedeOperaciones;
		public var frm_60:Prefondeo;
		public var frm_61:AdministraciondeChequeras;
		public var frm_62:ImpresiondeCheques;
		public var frm_63:CancelaciondeCheques;
		public var frm_64:CancelaciondeChequesPreimpresos;
		public var frm_65:ChequesCancelados;
		public var frm_67:ControlSemanalGrupal;
		public var frm_68:AgendaAsesoresReunion;
		public var frm_69:AutorizacionparaPagoconGL;
		public var frm_70:DevoluciondeGarantia;
		public var frm_72:ModificaciondeMesaDirectiva;
		public var frm_74:ReimpresiondeCheques;
		public var frm_75:InstrumentosdeCredito;
		public var frm_76:ChequesImpresos;
		public var frm_77:ConciliaciondeGarantiaLiquida;
		public var frm_78:SaldosalCierre;
		public var frm_79:AjustesManuales;
		public var frm_80:AjustesdeCapitaleInteres;
		public var frm_81:InteresDevengado;
		public var frm_82:CifrasControlContabilidad;
		public var frm_83:CifrasControlOperaciones;
		public var frm_84:DevoluciondePrestamo;
		public var frm_86:ReportedeClientes;
		public var frm_87:EstadodeCuentaGrupal;
		public var frm_88:Fondos;
		public var frm_89:AsignaciondeFondeo;
		public var frm_90:ControldePagos;
		public var frm_91:AsignacionIndividualdeFondeo;
		public var frm_92:EmisiondeDocumentos;
		public var frm_93:LavadoDineroCNBV;
		public var frm_97:ListaNegradeAcreditados;
		public var frm_98:Excepciones;
		public var frm_99:SaldosalCierredeAcreditado;
		public var frm_100:REPORTES.HistoricodePrestamosAcreditado;
		public var frm_101:CirculodeCredito;
		public var frm_104:SaldoPromedioMensual;
		public var frm_105:ReportedeAsignaciondeFondeo;
		public var frm_107:PlandePagosIndividual;
		public var frm_110:EvaluaciondeCredito;
		public var frm_111:EntregadeCredito;
		public var frm_112:ImpresiondeChequesIndividuales;
		public var frm_114:EstadodeCuentaIndividual;
		public var frm_115:CorreccionesIndividuales;
		public var frm_116:CuentasBancarias;
		public var frm_117:OperacionesRelevantes;
		public var frm_118:Garantias;
		public var frm_119:CreditoRevolvente;
		public var frm_120:EvaluaciondeDisposicionRevolvente;
		public var frm_121:EntregadeDisposicionRevolvente;
		public var frm_122:SolicituddeDisposicionRevolvente;
		public var frm_123:ImpresiondeChequesdeDisposicion;
		public var frm_124:PersonasPFyPM;
		public var frm_125:AjustesdeComisionySeguro;
		public var frm_126:AnalisisdeAlertas;
		public var frm_127:IdentificaciondeAcreditados;
		public var frm_129:PLD.HistoricodePrestamosdeAcreditado;
		public var frm_130:SeguimientodeMovimientos;
		public var frm_131:ParametrosPLD;
		
		public var frm_132:RegistrodeTransferencia;
		public var frm_133:DescuentosporConvenio;
		public var frm_134:SolicituddeTransferencias;
		public var frm_135:Sectoresgirosyactividadeconomica;
		public var frm_136:REPORTES.EstadodeCuenta;
		
		public var frm_137:PolizadeDesembolsos;
		public var frm_138:PolizadeDesembolsosFecha;
		public var frm_139:PolizadeDesembolsosMensual;
		public var frm_140:PolizadeInteresDevengado;
		public var frm_141:PolizadeInteresDevengadoFecha;
		public var frm_142:PolizadeInteresDevengadoMensual;
		public var frm_143:PolizadePagos;
		public var frm_144:PolizadePagosFecha;
		public var frm_145:PolizadePagosMensual;
		
		public var frm_146:CargadeTabladeAmortizacion;
		public var frm_147:Fideicomisos;
		
		public var frm_148:CriteriosdeRiesgo;
		public var frm_149:HistoricodePrestamosdeAcreditado;
		public var frm_150:ReportedeConsultasPEP;
		public var frm_151:ReportedeOperacionesCNBV;
		public var frm_152:ReportedeOperacionesFraccionadas;
		public var frm_153:ReportedeOperacionesIndPorMonto;
		//public var frm_154:ReporteOperacionesRelevantes;
		public var frm_154:ReporteHistoricodeAlertas;
		public var frm_155:CargaArchivoCreditos;
		public var frm_156:AjustesdeDevengodeInteres;
		public var frm_157:ModificaciondeTasadeInteres;
		
		public function Modulo()
		{
		}
	}
}