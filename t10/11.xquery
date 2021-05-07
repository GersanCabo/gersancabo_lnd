xquery version "1.0";
    declare copy-namespaces no-preserve, no-inherit;

<html>
	<head>
		<title>practica 14</title>
	</head>
	<body>
		
        <h3>Alumnos</h3>
        <table>
			<tr>
				<td>Curso</td>
			</tr>
			{
				for $curso in //curso
                where some $al in $curso//alumno
                satisfies ($al//asignatura = "Prácticas de empresa")

                return <tr><td>{$curso/@nombre}</td></tr>
			}

        </table>

	</body>
</html>
