<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title>Insert title here</title>
</head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
 
<body>
	
<div class="container">
<h1>Registra Administrado</h1>

	<form id="id_form"> 
		<div class="row" style="margin-top: 5%">
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="nombre">Nombre</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre" maxlength="40">
				</div>
			</div>
			<div class="form-group  col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_apellido">apellido</label>
				</div>
				<div class="col-sm-6">
					<input class="form-control" type="text" id="id_apellido" name="apellido" placeholder="Ingrese el apellido" maxlength="8">
		 		</div>
			</div>
		</div>
		<div class="row" style="margin-top: 0%">
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_genero">Genero</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_genero" name="genero" placeholder="Ingrese el genero" maxlength="100">
				</div>
			</div>
			<div class="form-group  col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_fecha">Fecha de Nacimiento</label>
				</div>
				<div class="col-sm-6">
					<input class="form-control" type="date" id="id_fecha" name="fechanac" placeholder="Ingrese la fecha" maxlength="100">
		 		</div>
			</div>
		</div>
		<div class="row" style="margin-top: 0%">
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_telefono">Telefono</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_telefono" name="telefono" placeholder="Ingrese el correo" maxlength="100">
				</div>
			</div>
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_correo">Correo</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_correo" name="correo" placeholder="Ingrese el correo" maxlength="100">
				</div>
			</div>
		</div>
		
		<div class="row" style="margin-top: 2%" align="center"	>
				<button id="id_registrar" type="button" class="btn btn-primary" >Crea Alumno</button>
		</div>	
	</form>
</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  
<script type="text/javascript">

$("#id_registrar").click(function (){ 
	$.ajax({
		type:"POST",
		url:"registroAdmi",
		data:$('#id_form').serialize(),
		success: function(data){
			
		},
		erro:function(){
			
		}
		
	});

});


function limpiar(){
	$('#id_nombre').val('');
	$('#id_apellido').val('');
	$('#id_fechanac').val('');
	$('#id_genero').val('');
	$('#id_telefono').val('');
	$('#id_correo').val('');
}

$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        		nombre:{
                    selector: "#id_nombre",
                    validators:{
                        notEmpty: {
                             message: 'El nombre es obligatorio'
                        },
                        stringLength: {
                            min: 3,
                            max: 40,
                            message: 'El nombre es de 3 a 40 caracteres'
                        },
                    }
                },
            	apellido:{
                    selector: "#id_apellido",
                    validators:{
                        notEmpty: {
                             message: 'El nombre es obligatorio'
                        },
                        stringLength: {
                            min: 3,
                            max: 40,
                            message: 'El nombre es de 3 a 40 caracteres'
                        },
                    }
                },
                fechanac:{
                    selector: "#id_fecha",
                    validators:{
                        notEmpty: {
                             message: 'La fecha es obligatorio'
                        }
                    }
                },
                genero:{
                    selector: "#id_genero",
                    validators:{
                        notEmpty: {
                             message: 'El genero es obligatorio'
                        },
                        stringLength: {
                            min: 3,
                            max: 40,
                            message: 'El genero es de 3 a 40 caracteres'
                        },
                    }
                },
               	telefono:{
                    selector: "#id_telefono",
                    validators:{
                        notEmpty: {
                             message: 'El dni es obligatorio'
                        },
                        regexp: {
                            regexp: /^[0-9]{8}$/,
                            message: 'el dni es 8 dígitos'
                        }
                    }
                },
                correo:{
                    selector: "#id_correo",
                    validators:{
                        notEmpty: {
                             message: 'El correo es obligatorio'
                        },
                        emailAddress: {
                            message: 'El correo no es valido'
                        }
                    }
                }
        }   
    });

    
});
</script>
	
</body>
</html>