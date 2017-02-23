package datos;
import java.sql.*;
import java.util.ArrayList;
import entidades.HistoriaClinica;

public class DtHistoriaClinica {
	public ArrayList<HistoriaClinica> listaHistoriaClinica(){
		ArrayList<HistoriaClinica> listaHistoriaClinica = new ArrayList<HistoriaClinica>();
		String sql =("SELECT * FROM igmab.Historiaclinica");
		try{
			Connection cn;
			cn = Conexion.getConnection();
			PreparedStatement ps =cn.prepareStatement(sql);
			ResultSet rs = null;
			rs = ps.executeQuery();
			
			while(rs.next()){
				HistoriaClinica hc = new HistoriaClinica();
				hc.setHistoriaClinicaId(rs.getInt("HistoriaclinicaID"));
				hc.setPacienteId(rs.getInt("PacienteID"));
				hc.setRelacionNucleoF(rs.getString("Padecimientoh_f"));
				hc.setPadecimientoActual(rs.getString("Padecimientoactual"));
				hc.setMotivoConsulta(rs.getString("Motivoconsulta"));
				hc.setImpresionDiagnostica(rs.getString("Impresiondiagnostica"));
				hc.setExpectativa(rs.getString("Expectativa"));
				hc.setDesarrolloSocial(rs.getString("Desarrollosocial"));
				hc.setDesarrolloSexual(rs.getString("Desarrollosexual"));
				hc.setDesarrolloLaboral(rs.getString("Desarrollolaboral"));
				hc.setDesarrolloEspiritual(rs.getString("Desarrolloespiritual"));
				hc.setDesarrolloConyugal(rs.getString("Desarrolloconyugal"));
				hc.setAspectoConductaGeneral(rs.getString("Aspectoconductageneral"));
				hc.setAreaEscolar(rs.getString("Areaescolar"));
				hc.setAntecedentesPersonalesNP(rs.getString("Antecedentespersonalesnp"));
				hc.setAntecedentesPatologicosP(rs.getString("Antecedentespatologicosp"));
				hc.setAntecedentesPatologicosF(rs.getString("Antecedentespatologicosf"));
				hc.setAlgoMasAgregar(rs.getString("Algomasagregar"));	
				
			}
			ps.close();
			cn.close();
			
			
			
		}
		catch(SQLException e){
			System.err.println("Datos: Error"+e.getMessage());
			
		}
		return listaHistoriaClinica;
	}

}
