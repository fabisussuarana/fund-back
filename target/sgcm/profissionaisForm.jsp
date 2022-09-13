<%@ page pageEncoding="UTF-8" %>

<%@ page import="br.ufac.sgcm.model.Especialidade" %>
<%@ page import="br.ufac.sgcm.model.Unidade" %>

<jsp:useBean
    id="controller"
    class="br.ufac.sgcm.controller.ProfissionalController"
    scope="page" />

<jsp:useBean
    id="controllerE"
    class="br.ufac.sgcm.controller.EspecialidadeController"
    scope="page" />

<jsp:useBean
    id="controllerU"
    class="br.ufac.sgcm.controller.UnidadeController"
    scope="page" />

<jsp:useBean
    id="item"
    class="br.ufac.sgcm.controller.Profissional"
    scope="page" />

<%
    String paramId = request.getParameter("id");
    if(paramId != null){
        Long id = Long.parseLong(paramId);
        item = controller.get(id);
    }
%>

<!DOCTYPE html>
<html>
    <%@ include file="include/head.jsp" %>
    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <form action="#">
                <div class="grid">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" value="<%=item.getNome() != null ? item.getNome() : ""%>" required>

                    <label for="registroConselho">Registro</label>
                    <input type="text" name="registroConselho" id="registroConselho" value="<%=item.getRegistroConselho() != null ? item.getRegistroConselho() : ""%>">

                    <label for="especialidade">Especialidade</label>
                    <select name="especialidade" id="especialidade" required>
                        <option value=""></option>
                        <%
                            selecionado = "";
                            for (Especialidade e: controllerE.get()) { 
                                if(item.getId() != null) {
                                    if(e.getId() == item.getEspecialidade().getId()) selecionado = " selected";
                                }
                        %>
                        <option value="<%=e.getId()%>"<%=selecionado%>><%=e.getNome()%>Especialidade A</option>

                        <% } %>
                    </select>
                    <label for="unidade">Unidade</label>
                    <select name="unidade" id="unidade">
                        <option value=""></option>
                        <%
                            selecionado = "";
                            for (Unidade u: controllerU.get()) { 
                                if(item.getId() != null) {
                                    if(e.getId() == item.getUnidade().getId()) selecionado = " selected";
                                }
                        %>
                        <option value="<%=e.getId()%>"><%=e.getNome()%>Unidade A</option>

                        <% } %>
                    </select>

                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone" value="<%=item.getTelefone() != null ? item.getTelefone() : ""%>">

                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email" value="<%=item.getEmail() != null ? item.getEmail() : ""%>">
                </div>
                <input type="button" value="Cancelar" data-url="profissionais.jsp">
                <input type="submit" value="Salvar">
            </form>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>