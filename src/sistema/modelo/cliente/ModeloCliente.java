package sistema.modelo.cliente;

import java.util.Date;

import sistema.modelo.Modelo;

public interface ModeloCliente extends Modelo {
	
	public int getNroCliente();

	public void setNroCliente(int nroCliente);

	public String getApellido();

	public void setApellido(String apellido);

	public String getNombre();
	
	public void setNombre(String nombre);

	public String getTipoDocumento();

	public void setTipoDocumento(String tipoDocumento);
	
	public int getNroDocumento();

	public void setNroDocumento(int nroDocumento);

	public String getDireccion();

	public void setDireccion(String direccion);

	public String getTelefono();

	public void setTelefono(String telefono);

	public Date getFechaNacimiento();

	public void setFechaNacimiento(Date fechaNacimiento);

	public boolean autenticarUsuarioAplicacion(int nroDocumento);
}