package datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import entidades.Usuario;

public class DTUsuario {
	private Connection cn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	public ArrayList<Usuario> Usuarios() {
		ArrayList<Usuario> listaUsuarios = new ArrayList<Usuario>();
		String sql = ("SELECT * from igmab.usuario;");
		try {
			cn = Conexion.getConnection();
			ps = cn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				Usuario user = new Usuario();
				user.setUsuarioID(rs.getInt("usuarioID"));
				user.setUsuario(rs.getString("usuario"));
				user.setContrasena(rs.getString("contrasena"));
				user.setFechaCreacion(rs.getDate("fechaCreacion"));
				user.setUsuarioCreacion(rs.getInt("usuarioCreacion"));
				listaUsuarios.add(user);
			}
		} catch (Exception e) {
			System.err.println("DATOS: Lista " + e.getMessage());
			e.printStackTrace();
		}
		return listaUsuarios;
	}

	////////////////////////// METODO PARA GUARDAR EL
	////////////////////////// Usuario/////////////////////////////
	public boolean guardarUsuario(Usuario u) {
		int x = 0;
		boolean g = false;

		try {

			String SQL = ("INSERT INTO igmab.usuario (usuario, contrasena, usuariocreacion, fechacreacion) VALUES (?,?,?,?)");
			cn = Conexion.getConnection();
			ps = cn.prepareStatement(SQL);

			ps.setString(1, u.getUsuario());
			ps.setString(2, u.getContrasena());
			ps.setInt(3, u.getUsuarioCreacion());
			ps.setDate(4, ;
			x = ps.executeUpdate();
			g = x > 0;

			ps.close();
			cn.close();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error al guardar el usuario " + e.getMessage());
		}

		return g;
	}

}
