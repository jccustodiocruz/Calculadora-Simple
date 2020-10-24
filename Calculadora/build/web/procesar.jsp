<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos.css" />
        <title>Resultado</title>
    </head>
    <body>
        <div class="result">
            <%
                float num1 = Float.parseFloat(request.getParameter("numero1"));
                float num2 = Float.parseFloat(request.getParameter("numero2"));
                String op = request.getParameter("operacion");
                float resultado = 0;
                
                if (op.equals("Suma")) {
                    resultado = num1 + num2;
                } else if (op.equals("Resta")) {
                    resultado = num1 - num2;
                } else if (op.equals("Multiplicacion")) {
                    resultado = num1 * num2;
                } else if (op.equals("Division")) {
                    resultado = num1 / num2;
                }                                
            %>                
            <h2>El resultado es: <% out.print(resultado); %></h2>            
        </div>        
        <a href="index.html"><h3>Realizar otra operacion</h3></a>
    </body>
</html>
