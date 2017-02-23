<%@page import="entidades.Parentesco"%>
<%@page import="java.util.*"%>
<%@page import="datos.DtParentesco"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a href="#">Parentesco</a></li>
			<li><a href="#">Gestión Parentesco</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-12">
		<div id="frm-agrega" class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-location-arrow"></i> <span>Agregar Parentesco</span>
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
					<form class="form-horizontal" method="post"	action="./SlParentesco">
						<div class="col-sm-6">
							<h5 class="page-header">Datos</h5>
							<div class="form-group">
								<label class="col-sm-6 control-label">Tipo de parentesco:</label>
								<div class="col-sm-6">
									<input type="text" class="form-control"
										placeholder="Ej: padre, madre" data-toggle="tooltip"
										data-placement="bottom" id="parentesco"
										name="parentesco" title="El tipo de parentesco es requerido" required
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
					<span>Lista de Parentesco</span>
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
							<th>Parentesco</th>
						</tr>
					</thead>
					<tbody>
					
					<%
					
						DtParentesco dtp = new DtParentesco();
						ArrayList<Parentesco> listaParentesco = new ArrayList<Parentesco>();
						listaParentesco=dtp.listaParentescos();
						
						for(Parentesco p : listaParentesco)
						{
					%>
					
					<tr>
						<td><%=p.getParentesco() %></td>
					</tr>
					
					<% } %>
					
					</tbody>
					<tfoot>
						<tr>
							<th>Parentesco</th>
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