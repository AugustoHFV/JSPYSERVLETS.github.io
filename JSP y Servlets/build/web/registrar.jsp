



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Capital en un banco a 2% mensual</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script>
 
function algoritmo()
{
    let capital_final, capital_inicial;
    capital_inicial = parseFloat (document.Controlador.CI.value);
    capital_final=capital_inicial*1.02;
    document.Controlador.CF.value = capital_final;
}
 
        </script>
    </head>
    <body>
        <form name="Controlador">
            <table style="text-align: left; margin-left: auto; margin-right: auto;">
                <tbody>
                    <tr>
                        <td>
                            <label for="capital_inicial">Ingresa el valor de capital inicial:</label>
                        </td>
                        <td>
                            <input name="CI" required="required" step="0.000001" type="number"/>
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" rowspan="1">
                            <input value="Calcular" name="accion"   type="submit" onclick="algoritmo();"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="capital_final">Valor de capital final:</label>
                        </td>
                        <td>
                            <input name="CF" step="0.000001" type="number"/>
                        </td>
                    </tr>
                </tbody>
            </table>
            <a href="eje1.jsp">Volver</a>
        </form>
    </body>
</html>
