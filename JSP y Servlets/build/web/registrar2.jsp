



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Calcular descuento del 15%</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script>
 
function algoritmo()
{
    let Precio_final, Precio_inicial;
    Precio_inicial = parseFloat (document.Controlador2.VI.value);
    Precio_final=Precio_inicial*0.85;
    document.Controlador2.VF.value = Precio_final;
}
 
        </script>
    </head>
    <body>
        <form name="Controlador2">
            <table style="text-align: left; margin-left: auto; margin-right: auto;">
                <tbody>
                    <tr>
                        <td>
                            <label for="Precio_inicial">Ingresa el precio inicial:</label>
                        </td>
                        <td>
                            <input name="VI" required="required" step="0.000001" type="number" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" rowspan="1">
                            <input value="Calcular" name="accion"   type="submit" onclick="algoritmo();"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="Precio_final">Valor de Precio final:</label>
                        </td>
                        <td>
                            <input name="VF" step="0.000001" type="number" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <a href="eje2.jsp">Volver</a>
        </form>
    </body>
</html>
