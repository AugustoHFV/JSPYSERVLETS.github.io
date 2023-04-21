



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Calcular Edad</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script>
 
function algoritmo()
{
    let edad, año;
    año = parseFloat (document.Controlador3.EI.value);
    if (año<=2023)
    {
        edad=2023-año
        document.Controlador3.EF.value = edad;
    }
    else
        edad=0
        document.Controlador3.EF.value = edad;
}
        </script>
    <body>
        <form name="Controlador3">
            <table style="text-align: left; margin-left: auto; margin-right: auto;">
                <tbody>
                    <tr>
                        <td>
                            <label for="año">Ingresa el año en que naciste:</label>
                        </td>
                        <td>
                            <input name="EI" required="required" step="0.000001" type="number" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" rowspan="1">
                            <input value="Calcular" name="accion"   type="submit" onclick="algoritmo();"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="edad">Este año cumpliras:</label>
                        </td>
                        <td>
                            <input name="EF" step="0.000001"/>años
                        </td>
                    </tr>
                </tbody>
            </table>
            <a href="eje3.jsp">Volver</a>
        </form>
    </body>
</html>
