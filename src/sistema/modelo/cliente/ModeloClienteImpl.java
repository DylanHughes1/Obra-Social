package sistema.modelo.cliente;

import java.util.Date;

import sistema.modelo.ModeloImpl;

public class ModeloClienteImpl extends ModeloImpl implements ModeloUsuario {

	private int nroCliente;
	private String apellido;
	private String nombre;
	private String tipoDocumento;
	private int nroDocumento;
	private String direccion;	
	private String telefono;
	private Date fechaNacimiento;
	private String usuario;
	private String contrasena;
	
	
	public ModeloClienteImpl() {
		nroCliente = getNroCliente();
		nombre = getNombre();
		apellido = getApellido();
		tipoDocumento = getTipoDocumento();
		nroDocumento = getNroDocumento();
		direccion = getDireccion();
		telefono = getTelefono();
		fechaNacimiento = getFechaNacimiento();
	}
	
	public boolean autenticarUsuarioAplicacion(int documento){
		return nroDocumento == documento;
		
	}
	
	public int getNroCliente() {
		return nroCliente;
	}

	public void setNroCliente(int nroCliente) {
		this.nroCliente = nroCliente;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
	public int getNroDocumento() {
		return nroDocumento;
	}

	public void setNroDocumento(int nroDocumento) {
		this.nroDocumento = nroDocumento;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	@Override
	public String getMail() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setMail(String mail) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getUsuario() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setUsuario(String Usuario) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getContrasena() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setContrasena(String contrasena) {
		// TODO Auto-generated method stub
		
	}
}