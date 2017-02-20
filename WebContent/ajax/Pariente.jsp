<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Pariente</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div id="frm-agrega" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> <span>Registrar Pariente</span>
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
								<label class="col-sm-6 control-label">Primer Nombre:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer Nombre" data-toggle="tooltip"
										data-placement="bottom" id="primer_nombre"
										name="primer_nombre" title="El Campo es requerido"
										required />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-6 control-label">Segundo Nombre:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Segundo Nombre" data-toggle="tooltip"
										data-placement="bottom" id="segundo_apellido"
										name="segundo_nombre" title="El Campo es requerido"
										required />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-6 control-label">Primer Apellido:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Primer Apellido" data-toggle="tooltip"
										data-placement="bottom" id="primer_apellido"
										name="primer_apellido" title="El Campo es requerido"
										required />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-6 control-label">Segundo Apellido:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Segundo Apellido" data-toggle="tooltip"
										data-placement="bottom" id="segundo_apellido"
										name="segundo_apellido" title="El Campo es requerido"
										required />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-6 control-label">Ocupación:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Ocupacion" data-toggle="tooltip"
										data-placement="bottom" id="ocupacion"
										name="ocupacion" title="El Campo es requerido"
										required />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-6 control-label">Cargo:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Cargo" data-toggle="tooltip"
										data-placement="bottom" id="cargo"
										name="cargo" title="El Campo es requerido"
										required />
								</div>
							</div>
							
						<div class="form-group">
								<label class="col-sm-6 control-label">Lugar de trabajo:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Lugar de trabajo" data-toggle="tooltip"
										data-placement="bottom" id="lugar_trabajo"
										name="lugar_trabajo" title="El Campo es requerido"
										required />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-6 control-label">Salario mensual:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Salario mensual" data-toggle="tooltip"
										data-placement="bottom" id="salario_mensual"
										name="salario_mensual" title="El Campo es requerido"
										required />
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
					<span>Lista de Parientes</span>
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