package sistema.modelo.cliente;

import java.util.Date;

import sistema.modelo.Modelo;

/**
 * -Nombre y Apellido e
-DNI
-Telefono

-Mail
-Fecha Nac.
Cliente, empleado y Admin (Datos de Seguridad):
-Usuario
-Contraseña
 */
public interface ModeloUsuario extends Modelo {
	
	public String getApellido();

	public void setApellido(String apellido);

	public String getNombre();
	
	public void setNombre(String nombre);

	public int getNroDocumento();

	public void setNroDocumento(int nroDocumento);

	public String getDireccion();

	public void setDireccion(String direccion);

	public String getTelefono();

	public void setTelefono(String telefono);

	public String getMail();

	public void setMail(String mail);
	
	public Date getFechaNacimiento();

	public void setFechaNacimiento(Date fechaNacimiento);
	
	public String getUsuario();

	public void setUsuario(String Usuario);
	
	public String getContrasena();

	public void setContrasena(String contrasena);

	public boolean autenticarUsuarioAplicacion(String usuario, String contrasena);
}