<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
  <%@ include file="include/head.jsp" %>
  <body>
    <%@ include file="include/header.jsp" %>

    <%@ include file="include/nav.jsp" %>    

    <main>
      <div class="box_add">
        <button id="box_add_title" onclick="onVisible()">NOVO CADASTRO</button>
        <div id="box_visible" style="display: none">
          <div class="box_input_group">
            <input type="text" id="nome" placeholder="Nome*" required />
          </div>

          <div class="box_input_group">
            <input type="text" id="registro" placeholder="Registro*" required />
          </div>

          <div class="box_input_group">
            <input
              type="text"
              id="especialidade"
              placeholder="Especialidade*"
              required
            />
          </div>

          <div class="box_input_group">
            <input type="text" id="unidade" placeholder="Unidade*" required />
          </div>

          <div class="box_input_group">
            <input type="text" id="telefone" placeholder="Telefone*" required />
          </div>

          <div class="box_input_group">
            <input type="text" id="email" placeholder="Email*" required />
          </div>

          <div class="box_input_actions">
            <button id="button_primary">Adicionar</button>
          </div>
        </div>
      </div>
      <div class="box_table">
        <input type="search" id="busca" placeholder="Buscar" onChange="searchFiles()"/>
        <div class="box_table_responsive" style="overflow-x: auto">
          <table>
            <tr>
              <th>Id</th>
              <th>Nome</th>
              <th>Registro</th>
              <th>Especialidade</th>
              <th>Unidade</th>
              <th>Telefone</th>
              <th>E-mail</th>
            </tr>
            <tbody id="dateasync">

            </tbody>
          </table>
        </div>
        <span id="box_table_registers">Quantidade: <b id="countregiters"></b> registros.</span>
      </div>
    </main>
  </body>
  <script src="scripts/services/feedTable.js"></script>
</html>