<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <title>Gestion proyectos</title>
</head>
<body>


    <h1>Gestion de proyectos</h1>


<form>
<select name="proyecto" id="combo-proyecto">

    @foreach ($proyectos as $proyecto )

    <option value="{{$proyecto->id_proyecto}}">{{$proyecto->nombre}}</option>

    @endforeach
</select>


</form>
<br />

<button type="submit">Aceptar</button>
</body>
</html>
