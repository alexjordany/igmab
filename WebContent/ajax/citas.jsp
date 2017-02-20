<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="Utf-8"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.jsp">Dashboard</a></li>
			<li><a href="#">Gestion paciente</a></li>
			<li><a href="#">Registrar paciente</a>
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
							<select id="s2_with_tag" multiple="multiple"
								class="populate placeholder">
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
							<input type="text" class="form-control" name=numSesion
								placeholder="Número de Sesión" data-toggle="tooltip"
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
								placeholder="Date" title="Campo requerido" required> <span
								class="fa fa-calendar txt-danger form-control-feedback"></span>
						</div>

						<div class="col-sm-2">
							<input type="text" id="input_time" class="form-control"
								placeholder="Time" title="Campo requerido" required> <span
								class="fa fa-clock-o txt-danger form-control-feedback"></span>
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
<script type="text/javascript">
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
		// Add tooltip to form-controls
		$('.form-control').tooltip();
		LoadSelect2Script(DemoSelect2);
		// Load example of form validation
		LoadBootstrapValidatorScript(DemoFormValidator);
		// Add drag-n-drop feature to boxes
		WinMove();
	});
</script>