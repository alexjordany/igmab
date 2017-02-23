<%@page import="entidades.Paciente"%>
<%@page import="java.util.*"%>
<%@page import="datos.DtPaciente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Paciente</a></li>
			<li><a href="#">Gestión Pacientes</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div id="frm-agrega" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> <span>Agregar Paciente</span>
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
				<div class="row">
					<form class="form-horizontal" method="post"	action="./SL_Actor">
						<div class="col-sm-6">
							<h5 class="page-header">Datos</h5>
							<div class="form-group">
								<label class="col-sm-6 control-label">Primer nombre:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer nombre" data-toggle="tooltip"
										data-placement="bottom" id="nombre1"
										name="nombre1" title="El primer nombre es requerido"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Segundo nombre:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Segundo nombre" data-toggle="tooltip"
										data-placement="bottom" id="nombre2"
										name="nombre2" title="El segundo nombre es requerido"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Primer apellido:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer nombre" data-toggle="tooltip"
										data-placement="bottom" id="apellido1"
										name="apellido1" title="El primer apellido es requerido"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Segundo apellido:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Segundo apellido" data-toggle="tooltip"
										data-placement="bottom" id="apellido2"
										name="apellido2" title="El segundo apellido es requerido"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Celular:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Número de celular" data-toggle="tooltip"
										data-placement="bottom" id="celular"
										name="celular" title="El número de celular no es requerido"
										 />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Edad:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer nombre" data-toggle="tooltip"
										data-placement="bottom" id="edad"
										name="edad" title="La edad es requerida"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Fecha de nacimiento:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Fecha de nacimiento" data-toggle="tooltip"
										data-placement="bottom" id="input_date"
										name="fechaNac" title="La fecha de nacimiento es requerida"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Edad:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer nombre" data-toggle="tooltip"
										data-placement="bottom" id="edad"
										name="edad" title="La edad es requerida"
										required />
									<span class="fa fa-calendar txt-danger form-control-feedback"></span>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-sm-6 control-label">Sexo:</label>
								<div class="col-sm-6">
									<select id="el2">
										<option>Hombre</option>
										<option>Mujer</option>
									</select>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-sm-6 control-label">Estado civil:</label>
								<div class="col-sm-6">
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline" checked> Soltero/a
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline"> Casado/a
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Escolaridad:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Escolaridad" data-toggle="tooltip"
										data-placement="bottom" id="escolaridad"
										name="escolaridad" title="La escolarida es requerida"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Dirección:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Dirección domiciliar" data-toggle="tooltip"
										data-placement="bottom" id="direccion"
										name="direccion" title="La dirección es requerida"
										required />
								</div>
							</div>
							<div class="row form-group">
								<label class="col-sm-6 control-label">Con quien vive:</label>
								<div class="col-sm-6">
									<select id="el2">
										<option>Solo/a</option>
										<option>Padres</option>
										<option>Cónyuge</option>
										<option>Niños</option>
										<option>Otros</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Empleo:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Empleo/trabajo desempeñado" data-toggle="tooltip"
										data-placement="bottom" id="empleo"
										name="empleo" title="El empleo no es requerido"
										 />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Salario:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Cantidad ganada en el trabajo desempeñado" data-toggle="tooltip"
										data-placement="bottom" id="salario"
										name="salario" title="El salario no es requerido"
										 />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Tipo de empleo que desarrolla:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Empleo/trabajo desempeñado" data-toggle="tooltip"
										data-placement="bottom" id="tipoEmpleo"
										name="tipoEmpleo" title="El tipo empleo no es requerido"
										 />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Lugar de trabajo:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Lugar donde trabaja" data-toggle="tooltip"
										data-placement="bottom" id="lugarTrabajo"
										name="lugarTrabajo" title="El lugar de trabajo no es requerido"
										 />
								</div>
							</div>
							<div class="row form-group">
								<label class="col-sm-6 control-label">¿Ha estado en terapia alguna otra vez o recibido asistencia profesional para sus problemas?</label>
								<div class="col-sm-6">
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline" checked> No
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline"> Sí
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
								</div>
							</div>
							<div class="row form-group">
								<label class="col-sm-6 control-label">¿Ha estado internado alguna vez por problemas psicológicos/psiquiátricos?</label>
								<div class="col-sm-6">
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline" checked> No
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
									<div class="radio-inline">
										<label>
											<input type="radio" name="radio-inline"> Sí
											<i class="fa fa-circle-o"></i>
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">En caso afirmativo:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="¿Cuándo? ¿Dónde? ¿Por qué?" data-toggle="tooltip"
										data-placement="bottom" id="internado afirnativo"
										name="internadoAfirmativo" title="No es requerido"
										 />
								</div>
							</div>

						</div>
						<div class="col-sm-6">
							<h5 class="page-header">Acciones</h5>
							<div class="form-group">
								<div id="cancelar_nuevo" class="col-sm-6 text-center">
									<button class="action" type="reset" title="Cancelar">
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
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> 
					<span>Lista de Pacientes</span>
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
						<div class="col-md-12 col-xs-12 col-sm-12 agregar">
						<a class="ajax-link pull-right " id="btn-agrega-abrir" href="#" title="Nuevo Registro">
							<i class="fa fa-plus-circle fa-2x"></i>
						</a>
					</div>
						
					</div>
				</div>
				<table class="table table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>Código</th>
							<th>Nombre</th>
							<th>Apellido</th>
						</tr>
					</thead>
					<tbody>
					
					<%
					
						DtPaciente dtp = new DtPaciente();
						ArrayList<Paciente> listaPaciente = new ArrayList<Paciente>();
						listaPaciente=dtp.listaPaciente();
						
						for(Paciente a : listaPaciente)
						{
					%>
					
					<tr>
						<td><%=a.getExpediente() %></td>
						<td><%=a.getNombre1() %></td>
						<td><%=a.getApellido1()%></td>
					</tr>
					
					<% } %>
					
					</tbody>
					<tfoot>
						<tr>
							<th>Código</th>
							<th>Nombre</th>
							<th>Apellido</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
/////////////////////////////DATATABLES PLUGIN CON 3 VARIANTES DE CONFIGURACIONES/////////////////////////////
	function AllTables() 
	{
		TestTable1();
		TestTable2();
		TestTable3();
		LoadSelect2Script(MakeSelect2);
	}
/////////////////////////////CONTROLAR LA BUSQUEDA EN LA TABLA CARGADA/////////////////////////////
 	function MakeSelect2() 
 	{
 		$('select').select2();
 		$('.dataTables_filter').each(
 			function()
 			{
 				$(this).find('label input[type=text]').attr('placeholder','Buscar');
 			});
 	}
/////////////////////////////CONTROLAR EL EVENTO FADEIN DE LA VENTANA EDITAR/////////////////////////////
 	function editOrDeleteCustomer(event) 
 	{
 	    var link = jQuery(event.currentTarget);
 	    var url = link.attr('href');
 	    jQuery.get(url, function(data) {
 	       $('#frm-edita').fadeIn();
 	    });
 	}
// Add Drag-n-Drop feature
	$(document).ready(function() {
		$('#frm-agrega').hide();
		// Initialize datepicker
		$('#input_date').datepicker({setDate: new Date()});
/////////////////////////////LLAMAR A LA FUNCION QUE CARGA LOS REGISTROS DE LA TABLA/////////////////////////////
		LoadDataTablesScripts(AllTables);
/////////////////////////////ESTILO PARA LOS TOOLTIP/////////////////////////////
		$('.form-control').tooltip();
/////////////////////////////CONTROLAR EL FORMULARIO AGREGAR Y CERRAR FORMULARIO EDITAR/////////////////////////////
		$('#btn-agrega-abrir').click(function() 
		{
        	$('#frm-agrega').fadeIn();
        });      
		$('#cancelar_nuevo').click(function() 
		{
		    $('#frm-agrega').fadeOut();
		});
/////////////////////////////CONTROL DE VENTANAS (PROPIO DE LA PLANTILLA)/////////////////////////////
		WinMove();	
	});
</script>