package br.ufac.sgcm;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import br.ufac.sgcm.dao.EspecialidadeDao;
import br.ufac.sgcm.model.Especialidade;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;

public class PrimeiroServlet extends HttpServlet{
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        PrintWriter saida = res.getWriter();
        // saida.println("<html>");
        // saida.println("<head>");
        // saida.println("<title>Primeiro Servlet</title>");
        // saida.println("</head>");
        // saida.println("<body>");
        // saida.println("<h1>Exemplo de Servlet</h1>");
        // saida.println("</body>");
        // saida.println("</html>");

        EspecialidadeDao dao = new 
        EspecialidadeDao();
        List<Especialidade> lista = dao.get();

        for (Especialidade e: lista){
            saida.println(e.getNome());
        }

        // super.service(req, res);
    }
}