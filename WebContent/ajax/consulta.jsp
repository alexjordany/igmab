<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.html">Inicio</a></li>
			<li><a href="#">Registrar consulta</a></li>
			<li><a href="#">Datos</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i>
					<span>Registrar consulta</span>
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
				<h4 class="page-header">Datos</h4>
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">N° Paciente</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="N° Paciente" data-toggle="tooltip" data-placement="bottom" title="Tooltip for n° paciente">
						</div>
						<label class="col-sm-2 control-label">N° Psicólogo</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="N° Psicólogo" data-toggle="tooltip" data-placement="bottom" title="Tooltip for n° psicólogo">
						</div>
					</div>
					<div class="form-group has-success has-feedback">
						<label class="col-sm-2 control-label">N° Cita</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="N° Cita">
						</div>
						<label class="col-sm-2 control-label">N° Consulta</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" placeholder="N° Consulta">
							
						</div>
					</div>
					<div class="form-group has-error has-feedback">
						<label class="col-sm-2 control-label">Fecha</label>
						<div class="col-sm-2">
							<input type="text" id="input_date" class="form-control" placeholder="Dia">
							<span class="fa fa-calendar txt-danger form-control-feedback"></span>
						</div>
						<div class="col-sm-2">
							<input type="text" id="input_time" class="form-control" placeholder="Hora">
							<span class="fa fa-clock-o txt-danger form-control-feedback"></span>
						</div>
						<label class="col-sm-1 control-label">Asistencia</label>
						<!--<div class="col-sm-4">-->
						<!--	<input type="text" class="form-control" placeholder="Another info" data-toggle="tooltip" data-placement="top" title="Hello world!">-->
						<!--</div>-->
						<div class="col-sm-4">
							<div class="checkbox">
								<label>
									<input type="checkbox" checked> 
								<i class="fa fa-square-o small"></i>
								</label>
							</div>
						</div>
						</div>
				
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="form-styles">Descripción </label>
						<div class="col-sm-10">
								<textarea class="form-control" rows="5" id="wysiwig_simple"></textarea>
						</div>
					</div>
					
											
							<div class="form-group">
						<div class="col-sm-9 col-sm-offset-3">
							<button type="submit" class="btn btn-primary">Guardar</button>
						</div>
					</div>