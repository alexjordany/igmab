<%@page import="entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="datos.DTUsuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Seguridad</a></li>
			<li><a href="#">Usuarios</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div id="frm-agrega" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>Agregar Usuario</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div class="row padding-opc">
					<form id="formulario" class="form-horizontal" method="post"
						action="./SL_guardarUsuario">

						<h4 class="page-header">Nuevo Usuario</h4>
						<div class="col-sm-8">
							<h5 class="page-header">Datos</h5>
							<div class="form-group"></div>
							<div class="form-group">
								<label class="col-sm-6 control-label text-rpromedix">Nombre</label>
								<div class="col-sm-6">
									<input type="text" class="form-control has-rpromedix"
										placeholder="Nombre de Usuario" data-toggle="tooltip"
										data-placement="bottom" id="nombre" name="nombre" title=""
										required>
								</div>
								<label class="col-sm-6 control-label text-rpromedix">Apellido</label>
								<div class="col-sm-6">
									<input type="text" class="form-control has-rpromedix"
										placeholder="Nombre de Usuario" data-toggle="tooltip"
										data-placement="bottom" id="apellido" name="apellido" title=""
										required>
								</div>
								<label class="col-sm-6 control-label text-rpromedix">Usuario</label>
								<div class="col-sm-6">
									<input type="text" class="form-control has-rpromedix"
										placeholder="Nombre de Usuario" data-toggle="tooltip"
										data-placement="bottom" id="login" name="login"
										title="El nombre de usuario o login es requerido" required>
								</div>
							</div>

							<div class="form-group">

								<label class="col-sm-6 control-label text-rpromedix">Clave</label>
								<div class="col-sm-6">
									<input id="clave" type="password"
										class="form-control text-rpromedix has-rpromedix"
										placeholder="" data-toggle="tooltip" data-placement="bottom"
										id="pwd" name="pwd" title="La clave es requerida" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label text-rpromedix">Confirmar
									Clave</label>
								<div class="col-sm-6">
									<input type="password"
										class="form-control text-rpromedix has-rpromedix"
										placeholder="" data-toggle="tooltip" data-placement="bottom"
										id="conf_pwd" name="conf_pwd"
										title="Por seguridad es necesario que vuelva a escribir su clave"
										required>
								</div>
							</div>
						</div>

						<div class="col-sm-4">
							<h5 class="page-header">Acciones</h5>
							<div class="form-group">
								<div class="col-sm-6 text-center">
									<button id="cancelar_nuevo" class="action" type="reset"
										title="Cancelar">
										<i class="fa fa-times fa-2x"> </i>
									</button>
								</div>
								<div class="col-sm-6 text-center">
									<button class="action" type="submit" title="Guardar Registro">
										<i class="fa fa-floppy-o fa-2x"> </i>
									</button>
								</div>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div id="frm-edita" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>Editar Usuario</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<div class="row padding-opc">
					<form id="formulario" class="form-horizontal" method="post"
						action="./SL_editar_usuario">
						<h4 class="page-header">Editar Usuario</h4>
						<div class="col-sm-8">
							<h5 class="page-header">Datos</h5>
							<div class="form-group">

								<label class="col-sm-6 control-label text-gpromedix">Empleado</label>
								<div class="col-sm-6">
									<input type="hidden" id="id_usuario_edit"
										name="id_usuario_edit" /> <select id="empleado_edit"
										class="populate placeholder" disabled>
										<option>Seleccione</option>

									</select>
								</div>
							</div>

							<div class="form-group">

								<label class="col-sm-6 control-label text-rpromedix">Usuario</label>
								<div class="col-sm-6">
									<input type="text" class="form-control has-rpromedix"
										placeholder="Nombre de Usuario" data-toggle="tooltip"
										data-placement="bottom" id="login_edit" name="login_edit"
										title="El nombre de usuario o login es requerido" required>
								</div>
							</div>
						</div>


						<div class="col-sm-4">
							<h5 class="page-header">Acciones</h5>
							<div class="form-group">
								<div class="col-sm-6 text-center">
									<button id="cancelar_editar" class="action" type="reset"
										title="Cancelar">
										<i class="fa fa-times fa-2x"> </i>
									</button>
								</div>
								<div class="col-sm-6 text-center">
									<button class="action" type="submit" title="Guardar Registro">
										<i class="fa fa-floppy-o fa-2x"> </i>
									</button>
								</div>
							</div>

						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div id="frm-cambia" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i> <span>Cambiar Clave de Usuario</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<div class="row padding-opc">
					<form id="formulario" class="form-horizontal" method="post"
						action="./SL_cambiar_claveUsuario">

						<h4 class="page-header">Nuevo Clave</h4>
						<div class="col-sm-8">
							<h5 class="page-header">Datos</h5>
							<div class="form-group">



								<label class="col-sm-6 control-label text-gpromedix">Empleado</label>
								<div class="col-sm-6">
									<select id="empleado_contra" name="empleado_contra"
										class="populate placeholder" disabled>
										<option>Seleccione</option>

									</select>
								</div>
							</div>

							<div class="form-group">

								<label class="col-sm-6 control-label text-rpromedix">Usuario</label>
								<div class="col-sm-6">
									<input type="text" class="form-control has-rpromedix"
										placeholder="Nombre de Usuario" data-toggle="tooltip"
										data-placement="bottom" id="login_contra" name="login_contra"
										title="El nombre de usuario o login es requerido" disabled>
								</div>
							</div>

							<div class="form-group">

								<input type="hidden" id="id_usuario_contra"
									name="id_usuario_contra" /> <label
									class="col-sm-6 control-label text-rpromedix">Clave</label>
								<div class="col-sm-6">
									<input id="clave" type="password"
										class="form-control text-rpromedix has-rpromedix"
										placeholder="" data-toggle="tooltip" data-placement="bottom"
										id="pwd_cambia" name="pwd_cambia"
										title="La clave es requerida" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label text-rpromedix">Confirmar
									Clave</label>
								<div class="col-sm-6">
									<input type="password"
										class="form-control text-rpromedix has-rpromedix"
										placeholder="" data-toggle="tooltip" data-placement="bottom"
										id="conf_pwd_cambia" name="conf_pwd_cambia"
										title="Por seguridad es necesario que vuelva a escribir su clave"
										required>
								</div>
							</div>
						</div>


						<div class="col-sm-4">
							<h5 class="page-header">Acciones</h5>
							<div class="form-group">
								<div class="col-sm-6 text-center">
									<button id="cancelar_cambio" class="action" type="reset"
										title="Cancelar">
										<i class="fa fa-times fa-2x"> </i>
									</button>
								</div>
								<div class="col-sm-6 text-center">
									<button class="action" type="submit" title="Confirmar Cambio">
										<i class="fa fa-check fa-2x"> </i>
									</button>
								</div>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user"></i><span>Usuarios</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<div class="row padding-opc">
					<div class="col-md-12">

						<div class="col-md-6 col-xs-12 col-sm-12 agregar">
							<a class="ajax-link pull-right " id="btn-agrega-abrir" href="#"
								title="Nuevo Registro"> <i class="fa fa-plus-circle fa-2x"></i>
							</a>
						</div>
					</div>
				</div>
				<table id="datatable-1"
					class="table table-hover table-heading table-datatable">
					<thead>
						<tr>
							<th>ID</th>
							<th>Usuario</th>
							<th>Contraseña</th>
							<th>Fecha Creación</th>
							<th>Usuario Creación</th>
						</tr>
					</thead>


					<tbody>
						<%
							DTUsuario dtu = new DTUsuario();
							ArrayList<Usuario> listaUsuario = new ArrayList<Usuario>();
							listaUsuario = dtu.Usuarios();

							for (Usuario u : listaUsuario) {
						%>
						<tr>
							<td><%=u.getUsuarioID()%></td>
							<td><%=u.getUsuario()%></td>
							<td><%=u.getContrasena()%></td>
							<td><%=u.getFechaCreacion()%></td>
							<td><%=u.getUsuarioCreacion()%></td>
						</tr>
						<%
							}
						%>
					</tbody>

					<tfoot>
						<tr>
							<th>ID</th>
							<th>Usuario</th>
							<th>Contraseña</th>
							<th>Fecha Creación</th>
							<th>Usuario Creación</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	/////////////////////////////COLOCAR VALORES EN LOS INPUTS DE EDITAR/////////////////////////////
	function abrirjsp(idusuario) {
		window.location.href = "sistema.jsp#ajax/agregar_rol.jsp?usr="
				+ idusuario;
		location.reload();
	}
	/////////////////////////////COLOCAR VALORES EN LOS INPUTS DE EDITAR/////////////////////////////
	function valoreditar(id, emp, login) {
		$('#id_usuario_edit').val(id);
		$('#empleado_edit').val(emp);
		$('#empleado_edit').change();
		$('#login_edit').val(login);
	}
	/////////////////////////////COLOCAR VALOR DE ID USUARIO PARA CAMBIAR CONTRASEÑA/////////////////////////////
	function idContra(id, emp, login) {
		$('#id_usuario_contra').val(id);
		$('#empleado_contra').val(emp);
		$('#empleado_contra').change();
		$('#login_contra').val(login);
	}
	/////////////////////////////DATATABLES PLUGIN CON 3 VARIANTES DE CONFIGURACIONES/////////////////////////////
	function AllTables() {
		TestTable1();
		TestTable2();
		TestTable3();
		LoadSelect2Script(MakeSelect2);
	}
	/////////////////////////////CONTROLAR LA BUSQUEDA EN LA TABLA CARGADA/////////////////////////////
	function MakeSelect2() {
		$('select').select2();
		$('.dataTables_filter').each(
				function() {
					$(this).find('label input[type=text]').attr('placeholder',
							'Buscar');
				});
	}
	// /////////////////////////////CONTROLAR EL EVENTO FADEIN DE LA VENTANA EDITAR/////////////////////////////
	function editOrDeleteCustomer(event) {
		var link = jQuery(event.currentTarget);
		var url = link.attr('href');
		jQuery.get(url, function(data) {
			$('#frm-edita').fadeIn();
		});
	}

	// Add Drag-n-Drop feature
	$(document).ready(function() {
		/////////////////////////////ESTILO PARA LOS TOOLTIP/////////////////////////////
		$('.form-control').tooltip();
		/////////////////////////////LLAMAR A LA FUNCION QUE CARGA LOS REGISTROS DE LA TABLA/////////////////////////////
		LoadDataTablesScripts(AllTables);
		/////////////////////////////CONTROLAR EL FORMULARIO AGREGAR Y CERRAR FORMULARIO EDITAR/////////////////////////////
		$('#btn-agrega-abrir').click(function() {
			$('#frm-agrega').fadeIn();
		});
		$('#cancelar_nuevo').click(function() {
			$('#frm-agrega').fadeOut();
		});
		$('#cancelar_editar').click(function() {
			$('#frm-edita').fadeOut();
		});
		$('#cancelar_cambio').click(function() {
			$('#frm-cambia').fadeOut();
		});

		/////////////////////////////CONTROL DE VENTANAS (PROPIO DE LA PLANTILLA)/////////////////////////////
		WinMove();
	});
</script>
</html>