<%@page import="entidades.Cita"%>
<%@page import="java.util.*"%>
<%@page import="datos.DtCita"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="Utf-8"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Gestion paciente</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i> <span>Registro de cita</span>
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
				<h4 class="page-header">Formulario de registro</h4>
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">Seleccione un
							paciente</label>
						<div class="col-sm-5">
							<select id="s2_with_tag" multiple="multiple" name="pacienteID"
								id="pacienteID" class="populate placeholder">
								<option>Harold Morales</option>
								<option>Alex Parrales</option>
								<option>Carlos Robles</option>
								<option>Moisés Solís</option>
								<option>Julissa Toruño</option>
								<option>Manuel Tórrez</option>
								<option>Andrés Valiente</option>
							</select>
						</div>

					</div>

					<div class="form-group has-success has-feedback">
						<label class="col-sm-2 control-label">Número de Sesión</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" name="numSesion"
								id="numSesion" placeholder="# de Sesión" data-toggle="tooltip"
								data-placement="bottom" title="Campo requerido" required />
						</div>
						<!-- 						<label class="col-sm-2 control-label">Asistencia del Paciente</label> -->
						<!-- 						<div class="col-sm-4"> -->
						<!-- 							<select class="populate placeholder" name="asistencia" -->
						<!-- 									id="s2_asistencia"> -->
						<!-- 									<option value="">-- Seleccione una opción --</option> -->
						<!-- 									<option value="1">Sí asistió</option> -->
						<!-- 									<option value="0">No asistió</option> -->
						<!-- 								</select> -->
						<!-- 						</div> -->
					</div>
					<div class="form-group has-error has-feedback">
						<label class="col-sm-2 control-label">Fecha y hora de la
							Cita</label>
						<div class="col-sm-2">
							<input type="text" id="input_date" class="form-control"
								id="fecha" name="fecha" placeholder="Date"
								title="Campo requerido" required> <span
								class="fa fa-calendar txt-danger form-control-feedback"></span>
						</div>

						<div class="col-sm-2">
							<input type="text" id="input_time" class="form-control" id="hora"
								name="hora" placeholder="Time" title="Campo requerido" required>
							<span class="fa fa-clock-o txt-danger form-control-feedback"></span>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-2">
							<button type="cancel" class="btn btn-default btn-label-left">
								<span><i class="fa fa-minus-circle"></i></span> Cancelar
							</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">
								<span><i class="fa fa-check-circle"></i></span> Guardar
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> <span>Lista de
						Parentesco</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> <span>Agregar
						Parentesco</span>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<div class="row padding-opc">
					<div class="col-md-12">
						<div class="col-md-12 col-xs-12 col-sm-12 agregar">
							<a class="ajax-link pull-right " id="btn-agrega-abrir" href="#"
								title="Nuevo Registro"> <i class="fa fa-plus-circle fa-2x"></i>
							</a>
						</div>

					</div>
				</div>
				<table class="table table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>Paciente</th>
							<th>Fecha</th>
							<th>Hora</th>
							<th>Sesion</th>
						</tr>
					</thead>
					<tbody>

						<%
							DtCita dtc = new DtCita();
							ArrayList<Cita> listaCita = new ArrayList<Cita>();
							listaCita = dtc.listaCitas();

							for (Cita c : listaCita) {
						%>

						<tr>
							<td><%=c.getPacienteId()%></td>
							<td><%=c.getFecha()%></td>
							<td><%=c.getHora()%></td>
							<td><%=c.getNumSesion()%></td>
						</tr>

						<%
							}
						%>

					</tbody>
					<tfoot>
						<tr>
							<th>Paciente</th>
							<th>Fecha</th>
							<th>Hora</th>
							<th>Sesion</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>




<script type="text/javascript">
	/////////////////////////////FUNCIONES DEL WEBSOCKET/////////////////////////////
	var wsUri = "ws://localhost:8080/IGMAB/serverendpointigmab";
	var websocket = new WebSocket(wsUri); //creamos el socket

	websocket.onopen = function(evt) { //manejamos los eventos...
		System.out.println("Conectado...");
	};

	websocket.onmessage = function(evt) { // cuando se recibe un mensaje
		//alert("Hubo cambio en la base de datos. Actualiza la página para verlos");
		//log("Mensaje recibido:" + evt.data);
		refrescar();

	};

	websocket.onerror = function(evt) {
		System.out.println("oho!.. error:" + evt.data);
	};

	function enviarMensaje() {
		guardarCita();
		// 		websocket.send("Guardado");

	}

	function refrescar() {
		var f = "";
		var table = $('#datatable-1').DataTable();

		$.ajax({
			url : "SlParentescoAjaxRefrescar",
			type : "post",
			datatype : 'html',
			//		data: {},
			success : function(data) {
				$('#datatable-1').html(data);
				$('#datatable-1').DataTable().ajax.reload();
				//			$('#datatable-1').dataTable().fnDestroy();
				AllTables();
				$('#datatable-1').addClass("dataTables_wrapper form-inline");

				//				LoadDataTablesScripts(AllTables);
				//				$('#tbl_Actor').dataTable({ 
				//					"aaData": orgContent,
				//		            "bLengthChange": true //used to hide the property  

				//				});
			}

		});
		alert("REFRESCADO");
		//		$('#datatable-1').dataTable().fnDestroy();
		//		AllTables();
		//		$('#datatable-1').addClass("dataTables_wrapper form-inline");
	}

	function guardarCita() {
		var fpacienteId = "", fnumSesion = "", ffecha = "", fhora = "";

		fpacienteId = $("#pacienteID").val();
		fnumSesion = $("#numSesion").val();
		ffecha = $("#fecha").val();
		fhora = $("#hora").val();

		$.ajax({
			url : "SlCita",
			type : "post",
			datatype : 'html',
			data : {
				'fpacienteId' : fpacienteId,
				'fnumSesion' : fnumSesion,
				'ffecha' : ffecha,
				'fhora' : fhora
			},
			success : function(data) {
				$('#datatable-1').html(data);
				$('#datatable-1').DataTable().ajax.reload();
				//			$('#datatable-1').dataTable().fnDestroy();
				AllTables();
				$('#datatable-1').addClass("dataTables_wrapper form-inline");

				//				LoadDataTablesScripts(AllTables);
				//				$('#tbl_Actor').dataTable({ 
				//					"aaData": orgContent,
				//		            "bLengthChange": true //used to hide the property  

				//				});
			}

		});

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

	/////////////////////////////CONTROLAR EL EVENTO FADEIN DE LA VENTANA EDITAR/////////////////////////////
	function editOrDeleteCustomer(event) {
		var link = jQuery(event.currentTarget);
		var url = link.attr('href');
		jQuery.get(url, function(data) {
			$('#frm-edita').fadeIn();
		});
	}

	// Run Select2 plugin on elements
	function DemoSelect2() {
		$('#s2_with_tag').select2({
			placeholder : "Seleccione un paciente"
		});
		$('#s2_asistencia').select2();
	}
	// Run timepicker
	function TimePicker() {
		$('#input_time').timepicker({
			setDate : new Date()
		});
	}
	$(document).ready(function() {
		// Initialize datepicker
		$('#input_date').datepicker({
			setDate : new Date()
		});
		// Load Timepicker plugin
		LoadTimePickerScript(TimePicker);

		LoadDataTablesScripts(AllTables);
		// Add tooltip to form-controls
		$('.form-control').tooltip();
		LoadSelect2Script(DemoSelect2);

		/////////////////////////////CONTROLAR EL FORMULARIO AGREGAR Y CERRAR FORMULARIO EDITAR/////////////////////////////
		$('#btn-agrega-abrir').click(function() {
			$('#frm-agrega').fadeIn();
		});
		$('#cancelar_nuevo').click(function() {
			$('#frm-agrega').fadeOut();
		});
		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>