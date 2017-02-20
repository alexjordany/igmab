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
					<i class="fa fa-search"></i>
					<span>Formulario de registro de pariente</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<h4 class="page-header">Formulario de registro</h4>
				<form class="form-horizontal" role ="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">Primer nombre</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Primer nombre"data-toggle="tooltip" data-placement="bottom" title="Primer nombre">
						</div>
						<label class="col-sm-2 control-label">Segundo nombre</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Segundo nombre"data-toggle="tooltip" data-placement="bottom" title="Segundo nombre">
						</div>
						<label class="col-sm-2 control-label">Primer apellido</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Primer apellido"data-toggle="tooltip" data-placement="bottom" title="Primer apellido">
						</div>
						<label class="col-sm-2 control-label">Segundo apellido</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Segundo apellido"data-toggle="tooltip" data-placement="bottom" title="Segundo apellido">
						</div>
					</div>
					<div class="form-group has-success has-feedback">
					<label class="col-sm-2 control-label">Ocupacion</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Ocupacion">
						</div>
						<label class="col-sm-2 control-label">Lugar de trabajo</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Lugar de trabajo">
						</div>
						<label class="col-sm-2 control-label">Cargo</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" placeholder="Cargo">
							<span class="fa fa-check-square-o txt-success form-control-feedback"></span>
						</div>
						<label class="col-sm-2 control-label">Salario</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" placeholder="Salario">
						</div>
					</div>
					<div class="form-group has-warning has-feedback">
						<label class="col-sm-2 control-label">Fecha de nacimiento</label>
						<div class="col-sm-3">
							<input type="text" id="input_date" class="form-control" placeholder="Fecha de nacimiento">
							<span class="fa fa-calendar txt-danger form-control-feedback"></span>
						</div>
						<label class="col-sm-2 control-label">Escolaridad</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="Escolaridad"data-toggle="tooltip" data-placement="bottom" title="Escolaridad">
						</div>
						
						
					</div>
					
					<div class="form-group has-error has-feedback">
						<label class="col-sm-2 control-label">Estado de vida</label>
						<div class="col-sm-4">
							<select id="s2_with_tag"  class="populate placeholder">
								<option>Vivo(a)</option>
								<option>Fallecido(a)</option>
							</select>
						</div>
						<label class="col-sm-2 control-label">Causa de muerte</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder=""data-toggle="tooltip" data-placement="bottom" title="Causa de muerte">
						</div>
						
					</div>
					
					<div class="form-group">
							<label class="col-sm-3 control-label">Seleccione paciente</label>
							<div class="col-sm-5">
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">-- Select a country --</option>
									<option value="fr">France</option>
									<option value="de">Germany</option>
									<option value="it">Italy</option>
									<option value="jp">Japan</option>
									<option value="ru">Russia</option>
									<option value="gb">United Kingdom</option>
									<option value="us">United State</option>
								</select>
							</div>
							<div class="col-sm-9 col-sm-offset-3">
								<div class="checkbox">
									<label>
										<input type="checkbox"  name="tutor" /> Este pariente es tutor?
										<i class="fa fa-square-o small"></i>
									</label>
								</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-2">
							<button type="cancel" class="btn btn-default btn-label-left">
							<span><i class="fa fa-minus-circle"></i></span>
								Cancelar
							</button>
						</div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary btn-label-left">
							<span><i class="fa fa-check-circle"></i></span>
								Guardar
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
	
	<script type="text/javascript">
// Run Select2 plugin on elements
function DemoSelect2(){
	$('#s2_with_tag').select2({placeholder: "Select estadovida"});
	$('#s2_country').select2();
}
// Run timepicker
function DemoTimePicker(){
	$('#input_time').timepicker({setDate: new Date()});
}
$(document).ready(function() {
	// Create Wysiwig editor for textare
	TinyMCEStart('#wysiwig_simple', null);
	TinyMCEStart('#wysiwig_full', 'extreme');
	// Add slider for change test input length
	FormLayoutExampleInputLength($( ".slider-style" ));
	// Initialize datepicker
	$('#input_date').datepicker({setDate: new Date()});
	// Load Timepicker plugin
	LoadTimePickerScript(DemoTimePicker);
	// Add tooltip to form-controls
	$('.form-control').tooltip();
	LoadSelect2Script(DemoSelect2);
	// Load example of form validation
	LoadBootstrapValidatorScript(DemoFormValidator);
	// Add drag-n-drop feature to boxes
	WinMove();
});
</script>
</div>