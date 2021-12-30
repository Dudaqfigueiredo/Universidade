from PyQt5 import  uic,QtWidgets #Importa do PyQT5 o módulo uic para ler o arquivo ui e o QtWidgets para montar os elementos na tela
import mysql.connector #Para conectar ao mysql

banco = mysql.connector.connect( #varivel com uma instancia do mysql connector com o método connect para fazer a conexão do código com banco
    host="localhost", #O host do seu mysql
    user="root",
    passwd="root",
    database="universidade" #Qual banco de dados utilizar
)

#Declarando variaveis para usar na função
chaveprimaria= 0
chaveprimaria2= 0

#O banco já possui trigger que pega a nota da p1 e da p2 do aluno em matricula, mostra a média, mostra se for aprovadou ou reprovado.
#Em caso de 3 reprovações em uma disciplina, o aluno deixa de ser ativo e é "jubilado"

def TelaMenu():
    login.label_6.setText("")
    #Adicionando em variáveis os textos digitados nas caixas de texto
    nome_usuario = login.lineEdit.text()
    senha = login.lineEdit_2.text()
    cursor = banco.cursor()
    
    #Tenta procurar no banco de dados o usuário digitado
    try:
        comando_SQL = "select senha from login where usuário='{}'".format(nome_usuario)
        cursor.execute(comando_SQL)
        dados_lidos = cursor.fetchall()
        login.close()
    #Se não conseguir encontrar o usuário, mostra mensagem de erro
    except:
        print("Erro ao validar login")

    #Se a senha salva no banco de dados for igual da digitada, a página de login fecha e abre o menu liberando o acesso
    if senha == dados_lidos[0][0]: 
        login.close()
        Menu.show()
    #Se a senha salva no banco de dados for diferente da digitada, a página de login fecha mostra a mensagem de erro
    else:
        login.close()
        login.show()
        login.label_6.setText("Dados de login incorretos!")

def Adicionar_Dados():
    AdicionarDados.show() #Abrir a tela armazenada em AdicionarDados

def Visualizar_Dados():
    VisualizarDados.show() #Abrir a tela armazenada em VisualizarDados

def Funções():
    TelaFunções.show() #Abrir a tela armazenada em TelaFunções

#Abrir tela de adicionar dados. O show é utilizado com a variavel que o a tela foi armazenada mais em frente
def Adicionar_Dados_Alunos():
    AdicionarDadosAlunos.show() 

def Adicionar_Dados_Cursos():
    AdicionarDadosCursos.show() 

def Adicionar_Dados_Disciplinas():
    AdicionarDadosDisciplinas.show() 

def Adicionar_Dados_Funcionários():
    AdicionarDadosFuncionários.show() 

def Adicionar_Dados_Matricula():
    AdicionarDadosMatricula.show() 

def Adicionar_Dados_Professores():
    AdicionarDadosProfessores.show() 

def Adicionar_Dados_Setores():
    AdicionarDadosSetores.show() 

#Funções para visualizar as tabelas. A primeira está explicada e as outras seguem as mesma lógica
def Visualizar_Dados_Alunos():
    VisualizarDadosAlunos.show()

    cursor = banco.cursor() #Cursor com a variavel banco
    comando_SQL = "select*from alunos" #uma variavel com qual comando usaremos. Nesse caso para visualizar a tabela.
    cursor.execute(comando_SQL) #O execute recebe qual comando que vai digitar as os dados
    dados_lidos = cursor.fetchall() #Pegar o que foi feito na última linha e salvar na variavel
    VisualizarDadosAlunos.tableWidget.setRowCount(len(dados_lidos)) #TableWidget é o coponente que usei em QT Designer. O set RowCount é quantas linhas vai ter a tabela. O len pega o tamanlho da tabela.
    VisualizarDadosAlunos.tableWidget.setColumnCount(6) #Numero de colunas

    #Para preencher a tabela. Então usamos um for para pecorrer uma matriz
    for i in range(0, len(dados_lidos)): #Esse i pecorre por todas as linhas
        for j in range(0, 6): #Esse J pecorre por todas as colunas
           VisualizarDadosAlunos.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) #Usa o setItem com a posição em que quero inserir esse elemento na tabela.
           #E vai passar para cada posição da tabela. Colocando os dados_lidos para aparecer na tabela.

def Visualizar_Dados_Cursos():
    VisualizarDadosCursos.show()

    cursor = banco.cursor()
    comando_SQL = "select*from cursos"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosCursos.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosCursos.tableWidget.setColumnCount(3)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 3):
           VisualizarDadosCursos.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def Visualizar_Dados_Disciplinas():
    VisualizarDadosDisciplinas.show()
    

    cursor = banco.cursor()
    comando_SQL = "select*from disciplinas"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosDisciplinas.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosDisciplinas.tableWidget.setColumnCount(3)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 3):
           VisualizarDadosDisciplinas.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def Visualizar_Dados_Funcionários():
    VisualizarDadosFuncionários.show()
    cursor = banco.cursor()
    comando_SQL = "select*from funcionários"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosFuncionários.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosFuncionários.tableWidget.setColumnCount(5)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 5):
           VisualizarDadosFuncionários.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def Visualizar_Dados_Matricula():
    VisualizarDadosMatricula.show()
    cursor = banco.cursor()
    comando_SQL = "select*from matricula"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosMatricula.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosMatricula.tableWidget.setColumnCount(7)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 7):
           VisualizarDadosMatricula.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def Visualizar_Dados_Professores():
    VisualizarDadosProfessores.show()

    cursor = banco.cursor()
    comando_SQL = "select*from professores"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosProfessores.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosProfessores.tableWidget.setColumnCount(7)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 7):
           VisualizarDadosProfessores.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def Visualizar_Dados_Setores():
    VisualizarDadosSetores.show()

    cursor = banco.cursor()
    comando_SQL = "select*from setores"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    VisualizarDadosSetores.tableWidget.setRowCount(len(dados_lidos))
    VisualizarDadosSetores.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           VisualizarDadosSetores.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

#Essas funções são tabelas para cada caso. O caso de cada uma está escito dentro de cada.
#O código dentro das funções já foi explicando em visualizar dados (é a mesma lógica)
def FunçõesTela1():
    #A função 1 serve para mostrar as turmas com mais alunos
    Funções1.show()   

    cursor = banco.cursor()
    comando_SQL = "select disciplinas.nome, quantidade.valor from quantidade join media join disciplinas on quantidade.cod_disc = disciplinas.cod_disc where quantidade.valor >= media.numero;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções1.tableWidget.setRowCount(len(dados_lidos))
    Funções1.tableWidget.setColumnCount(2)

    
    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções1.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela2():
    #A função 2 deve mostrar a quantidade de professores ativos em cada curso.
    Funções2.show()   
    cursor = banco.cursor()
    comando_SQL = "select cursos.nome, quantidadeprofessores.quantidade from cursos join quantidadeprofessores on cursos.cod_curso = quantidadeprofessores.cod_curso order by quantidadeprofessores.quantidade desc;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções2.tableWidget.setRowCount(len(dados_lidos))
    Funções2.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções2.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela3():
    #A função 3 é para mostrar a média salárial dos professores de cada curso.
    Funções3.show()   
    cursor = banco.cursor()
    comando_SQL = "select cursos.nome, mediasalarial from cursos join mediasalario on cursos.cod_curso = mediasalario.cod_curso;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções3.tableWidget.setRowCount(len(dados_lidos))
    Funções3.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções3.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela4():
    #A função 4 é para mostrar a folha de pagamento de cada departamento
    Funções4.show()   
    cursor = banco.cursor()
    comando_SQL = "select setores.nome, folhapagamentosetores.somasalario from setores join folhapagamentosetores on folhapagamentosetores.cod_setor = setores.cod_setor group by setores.nome;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções4.tableWidget.setRowCount(len(dados_lidos))
    Funções4.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções4.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela5():
    #A função 5 é para mostrar a média final de todas as notas de cada turma
    Funções5.show()   
    cursor = banco.cursor()
    comando_SQL = "select professoresedisciplinas.disciplina as Disciplina, professoresedisciplinas.nome as NomeProfessor, mediadisciplinas.media as MediaNotas from professoresedisciplinas join mediadisciplinas on professoresedisciplinas.cod_disc = mediadisciplinas.cod_disc;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções5.tableWidget.setRowCount(len(dados_lidos))
    Funções5.tableWidget.setColumnCount(3)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 3):
           Funções5.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela6():
    #A função 6 é para mostrar quantas disciplinas cada professor trabalha.
    Funções6.show()   
    cursor = banco.cursor()
    comando_SQL = "select nome, count(disciplina) as Disciplinas from professoresedisciplinas group by nome order by Disciplinas desc;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções6.tableWidget.setRowCount(len(dados_lidos))
    Funções6.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções6.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela7():
    #A função 7 é para mostrar o professor mais antigo da instituição
    Funções7.show()   
    cursor = banco.cursor()
    comando_SQL = "select professores.nome, professores.inicio from professores join professorantigo where professores.inicio = professorantigo.DataInicio;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções7.tableWidget.setRowCount(len(dados_lidos))
    Funções7.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):
        for j in range(0, 2):
           Funções7.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j]))) 

def FunçõesTela8():
    #A função 8 é para mostrar o número de alunos por curso
    Funções8.show()   
    cursor = banco.cursor()
    comando_SQL = "select cursos.nome, count(alunos.CPF) from alunos join cursos on alunos.cod_curso = cursos.cod_curso group by cursos.nome;"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    Funções8.tableWidget.setRowCount(len(dados_lidos))
    Funções8.tableWidget.setColumnCount(2)

    for i in range(0, len(dados_lidos)):

        for j in range(0, 2):
           Funções8.tableWidget.setItem(i,j,QtWidgets.QTableWidgetItem(str(dados_lidos[i][j])))
 
#Funções para adicionar dados nas tabelas. A primeira está explicada e as outras seguem as mesma lógica
def EnviarAdicionarAlunos():

    linha1 = AdicionarDadosAlunos.lineEdit.text() #A variavel linha recebe o que foi escrito na caixa de texto. Para ver o nome da caixa de texto é no QT Designer
    linha2 = AdicionarDadosAlunos.lineEdit_2.text()
    linha3 = AdicionarDadosAlunos.lineEdit_3.text()
    linha4 = AdicionarDadosAlunos.lineEdit_4.text()
    linha5 = AdicionarDadosAlunos.lineEdit_5.text()

    Ativo=""

    cursor = banco.cursor() #Cursor com a variavel banco
    comando_SQL = "INSERT INTO alunos (CPF,nome,telefone,endereço,Ativo,cod_curso) VALUES (%s,%s,%s,%s,%s,%s)" #uma variavel com qual comando usaremos. Nesse caso para visualizar a tabela.
    dados = (str(linha1),str(linha2),str(linha3),str(linha4),Ativo, int(linha5)) #Essa linha são variaveis que receberam o que foi. Aqui colocamos na sequencia que desejamos inserir
    #O Ativo é colocado automaticamente pelo trigger. Depois de 3 reprovações em uma disciplina o aluno não fica mais ativo
    cursor.execute(comando_SQL,dados) #O execute recebe qual comando que vai digitar as os dados
    banco.commit() #Manda para o banco
    #Esse setText serve para limpar os campos depois que enviar os dados
    AdicionarDadosAlunos.lineEdit.setText("")
    AdicionarDadosAlunos.lineEdit_2.setText("")
    AdicionarDadosAlunos.lineEdit_3.setText("")
    AdicionarDadosAlunos.lineEdit_4.setText("")
    AdicionarDadosAlunos.lineEdit_5.setText("")

def EnviarAdicionarCursos():
    linha1 = AdicionarDadosCursos.lineEdit.text()
    linha2 = AdicionarDadosCursos.lineEdit_2.text()
    linha3 = AdicionarDadosCursos.lineEdit_3.text()

    cursor = banco.cursor()
    comando_SQL = "INSERT INTO cursos (cod_curso,nome,inicio) VALUES (%s,%s,%s)"
    dados = (int(linha1),str(linha2),(linha3))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosCursos.lineEdit.setText("")
    AdicionarDadosCursos.lineEdit_2.setText("")
    AdicionarDadosCursos.lineEdit_3.setText("") 

def EnviarAdicionarDisciplinas():
    linha1 = AdicionarDadosDisciplinas.lineEdit.text()
    linha2 = AdicionarDadosDisciplinas.lineEdit_2.text()
    linha3 = AdicionarDadosDisciplinas.lineEdit_3.text()

    cursor = banco.cursor()
    comando_SQL = "INSERT INTO disciplinas (cod_disc,nome,CPF_prof) VALUES (%s,%s,%s)"
    dados = (int(linha1),str(linha2),str(linha3))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosDisciplinas.lineEdit.setText("")
    AdicionarDadosDisciplinas.lineEdit_2.setText("")
    AdicionarDadosDisciplinas.lineEdit_3.setText("")

def EnviarAdicionarFuncionários():
    linha1 = AdicionarDadosAlunos.lineEdit.text()
    linha2 = AdicionarDadosAlunos.lineEdit_2.text()
    linha3 = AdicionarDadosAlunos.lineEdit_3.text()
    linha4 = AdicionarDadosAlunos.lineEdit_4.text()
    linha5 = AdicionarDadosAlunos.lineEdit_5.text()

    cursor = banco.cursor()
    comando_SQL = "INSERT INTO Funcionários (CPF,nome,endereço,salario,cod_setor) VALUES (%s,%s,%s,%s,%s)"
    dados = (str(linha1),str(linha2),str(linha3),str(linha4), int(linha5))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosAlunos.lineEdit.setText("")
    AdicionarDadosAlunos.lineEdit_2.setText("")
    AdicionarDadosAlunos.lineEdit_3.setText("")
    AdicionarDadosAlunos.lineEdit_4.setText("")
    AdicionarDadosAlunos.lineEdit_5.setText("")  

def EnviarAdicionarMatricula():
    linha1 = AdicionarDadosMatricula.lineEdit.text()
    linha2 = AdicionarDadosMatricula.lineEdit_2.text()
    linha3 = AdicionarDadosMatricula.lineEdit_3.text()


    cursor = banco.cursor()
    comando_SQL = "INSERT INTO matricula (CPF_aluno,cod_disc,media) VALUES (%s,%s,%s)"
    dados = (str(linha1),str(linha2),int(linha3))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosMatricula.lineEdit.setText("")
    AdicionarDadosMatricula.lineEdit_2.setText("")
    AdicionarDadosMatricula.lineEdit_3.setText("")

def EnviarAdicionarProfessores():
    linha1 = AdicionarDadosProfessores.lineEdit.text()
    linha2 = AdicionarDadosProfessores.lineEdit_2.text()
    linha3 = AdicionarDadosProfessores.lineEdit_3.text()
    linha4 = AdicionarDadosProfessores.lineEdit_4.text()
    linha5 = AdicionarDadosProfessores.lineEdit_5.text()
    linha6 = AdicionarDadosProfessores.lineEdit_6.text()
    linha7 = AdicionarDadosProfessores.lineEdit_7.text()

    Ativo=""
    cursor = banco.cursor()
    comando_SQL = "INSERT INTO professores (CPF,nome,telefone,endereço,inicio,salario,Ativo,cod_curso) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
    dados = (str(linha1),str(linha2),str(linha3),str(linha4), str(linha5),str(linha6), Ativo, str(linha7))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosProfessores.lineEdit.setText("")
    AdicionarDadosProfessores.lineEdit_2.setText("")
    AdicionarDadosProfessores.lineEdit_3.setText("")
    AdicionarDadosProfessores.lineEdit_4.setText("")
    AdicionarDadosProfessores.lineEdit_5.setText("")  
    AdicionarDadosProfessores.lineEdit_6.setText("")
    AdicionarDadosProfessores.lineEdit_7.setText("")  

def EnviarAdicionarSetores():
    linha1 = AdicionarDadosSetores.lineEdit.text()
    linha2 = AdicionarDadosSetores.lineEdit_2.text()

    cursor = banco.cursor()
    comando_SQL = "INSERT INTO setores (cod_setor,nome) VALUES (%s,%s)"
    dados = (int(linha1),str(linha2))
    cursor.execute(comando_SQL,dados)
    banco.commit() 
    AdicionarDadosSetores.lineEdit.setText("")
    AdicionarDadosSetores.lineEdit_2.setText("")

#Essas funções são para excluir os dados da tabela. Está explicado o primeiro e o restante segue a mesma lógica.
def excluir_dadosAlunos():
    linha = VisualizarDadosAlunos.tableWidget.currentRow() #essa currentrow é para saber qual linha que o usuário selecionou
    VisualizarDadosAlunos.tableWidget.removeRow(linha) #Esse removerow é para remover a linha na tela
    cursor = banco.cursor() #Cursor com a variavel banco
    comando_SQL = "SELECT * FROM alunos" #Variavel com o comando para mostrar a tabela
    cursor.execute(comando_SQL) #Executar o comando
    dados_lidos = cursor.fetchall()
    CPF = (dados_lidos[linha][0]) #Pegando a chave primária que é o CPF nesse caso e está na minha selecionada na coluna 0
    cursor.execute("DELETE FROM alunos where CPF='"+ str(CPF)+"'") #Comando para remover a linha onde estiver com a chave primária que foi guardado
    banco.commit()

def excluir_dadosCursos():
    linha = VisualizarDadosCursos.tableWidget.currentRow()
    VisualizarDadosCursos.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM cursos")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM cursos where cod_curso='"+ str(valor_id)+"'")
    banco.commit()

def excluir_dadosDisciplinas():
    linha = VisualizarDadosDisciplinas.tableWidget.currentRow()
    VisualizarDadosDisciplinas.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM disciplinas")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM disciplinas where cod_disc='"+ str(valor_id)+"'")
    banco.commit()

def excluir_dadosFuncionários():
    linha = AdicionarDadosFuncionários.tableWidget.currentRow()
    AdicionarDadosFuncionários.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM funcionários")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM funcionários where CPF='"+ str(valor_id)+"'")
    banco.commit()

def excluir_dadosMatricula():
    linha = VisualizarDadosMatricula.tableWidget.currentRow()
    VisualizarDadosMatricula.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM matricula")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    valor_id2 = dados_lidos[linha][1]
    cursor.execute("DELETE FROM matricula where CPF_aluno='"+ str(valor_id)+"' and cod_disc=" + str(valor_id2))
    banco.commit()

def excluir_dadosProfessores():
    linha = VisualizarDadosProfessores.tableWidget.currentRow()
    VisualizarDadosProfessores.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM professores")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM professores where CPF='"+ str(valor_id)+"'")
    banco.commit()

def excluir_dadosSetores():
    linha = VisualizarDadosSetores.tableWidget.currentRow()
    VisualizarDadosSetores.tableWidget.removeRow(linha)
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM setores")
    dados_lidos = cursor.fetchall()
    valor_id = dados_lidos[linha][0]
    cursor.execute("DELETE FROM setores where cod_setor='"+ str(valor_id)+"'")
    banco.commit()

##Essas funções são para modificar os dados da tabela. Está explicado o primeiro e o restante segue a mesma lógica.
def modificar_dadosAlunos():
    global chaveprimaria #chama variavel que declarei no inicio
    linha = VisualizarDadosAlunos.tableWidget.currentRow() #essa currentrow é para saber qual linha que o usuário selecionou
    cursor = banco.cursor() #Cursor com a variavel banco
    comando_SQL = "SELECT * FROM alunos" #Variavel com comando
    cursor.execute(comando_SQL) #Executando o comando
    dados_lidos = cursor.fetchall()
    CPF = (dados_lidos[linha][0]) #Pegando a chave primária que é o CPF nesse caso e está na minha selecionada na coluna 0
    cursor.execute("select*FROM alunos where CPF='"+ str(CPF)+"'") #Comando para mostrar somente a linha selecionada
    var = cursor.fetchall()
    ModificarAlunos.show() #Abrindo a tela para colocar os novos valores
    
    #Lendo os valores colocados em cada caixa de texto. Os valores serão salvos na função Salvar_dados
    ModificarAlunos.lineEdit.setText(str(var[0][0]))
    ModificarAlunos.lineEdit_2.setText(str(var[0][1]))
    ModificarAlunos.lineEdit_3.setText(str(var[0][2]))
    ModificarAlunos.lineEdit_4.setText(str(var[0][3]))
    ModificarAlunos.lineEdit_5.setText(str(var[0][4]))
    ModificarAlunos.lineEdit_6.setText(str(var[0][5]))

    chaveprimaria=CPF #Colocando o CPF na variavel de chave primária
    
    banco.commit()  

def modificar_dadosCursos():
    global chaveprimaria

    linha = VisualizarDadosCursos.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM cursos"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    codigo = (dados_lidos[linha][0])

    cursor.execute("select*FROM cursos where cod_curso='"+ str(codigo)+"'")
    var = cursor.fetchall()
    ModificarCursos.show()
    
    ModificarCursos.lineEdit_3.setText(str(var[0][0]))
    ModificarCursos.lineEdit_4.setText(str(var[0][1]))
    ModificarCursos.lineEdit_5.setText(str(var[0][2]))

    chaveprimaria=codigo

    banco.commit()  

def modificar_dadosDisciplinas():
    global chaveprimaria
    linha = VisualizarDadosDisciplinas.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM disciplinas"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    cod_disc = (dados_lidos[linha][0])
    cursor.execute("select*FROM disciplinas where cod_disc='"+ str(cod_disc)+"'")
    var = cursor.fetchall()
    ModificarDisciplinas.show()
    
    ModificarDisciplinas.lineEdit_3.setText(str(var[0][0]))
    ModificarDisciplinas.lineEdit_4.setText(str(var[0][1]))
    ModificarDisciplinas.lineEdit_5.setText(str(var[0][2]))

    chaveprimaria=cod_disc
    banco.commit()  

def modificar_dadosFuncionários():
    global chaveprimaria
    linha = VisualizarDadosFuncionários.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM funcionários"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    CPF = (dados_lidos[linha][0])
    cursor.execute("select*FROM funcionários where CPF='"+ str(CPF)+"'")
    var = cursor.fetchall()
    ModificarFuncionários.show()
    
    ModificarFuncionários.lineEdit.setText(str(var[0][0]))
    ModificarFuncionários.lineEdit_2.setText(str(var[0][1]))
    ModificarFuncionários.lineEdit_3.setText(str(var[0][2]))
    ModificarFuncionários.lineEdit_4.setText(str(var[0][3]))
    ModificarFuncionários.lineEdit_5.setText(str(var[0][4]))

    chaveprimaria=CPF
    banco.commit()  

def modificar_dadosMatricula():
    global chaveprimaria
    global chaveprimaria2
    linha = VisualizarDadosMatricula.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM matricula"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    CPF = (dados_lidos[linha][0])
    codigo = (dados_lidos[linha][1])
    cursor.execute("select*FROM matricula where CPF_aluno='"+ str(CPF)+"' and cod_disc='"+ str(codigo)+"'")
    var = cursor.fetchall()
    ModificarMatricula.show()
    
    ModificarMatricula.lineEdit.setText(str(var[0][0]))
    ModificarMatricula.lineEdit_2.setText(str(var[0][1]))
    ModificarMatricula.lineEdit_3.setText(str(var[0][2]))
    ModificarMatricula.lineEdit_4.setText(str(var[0][3]))


    chaveprimaria=CPF
    chaveprimaria2=codigo
    banco.commit()  

def modificar_dadosProfessores():
    global chaveprimaria
    linha = VisualizarDadosProfessores.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM professores"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    CPF = (dados_lidos[linha][0])
    cursor.execute("select*FROM professores where CPF='"+ str(CPF)+"'")
    var = cursor.fetchall()
    ModificarProfessores.show()
    
    ModificarProfessores.lineEdit.setText(str(var[0][0]))
    ModificarProfessores.lineEdit_3.setText(str(var[0][1]))
    ModificarProfessores.lineEdit_2.setText(str(var[0][2]))
    ModificarProfessores.lineEdit_4.setText(str(var[0][3]))
    ModificarProfessores.lineEdit_7.setText(str(var[0][4]))
    ModificarProfessores.lineEdit_6.setText(str(var[0][5]))
    ModificarProfessores.lineEdit_5.setText(str(var[0][6]))
    ModificarProfessores.lineEdit_8.setText(str(var[0][7]))

    chaveprimaria=CPF
    banco.commit()  

def modificar_dadosSetores():
    global chaveprimaria
    linha = VisualizarDadosSetores.tableWidget.currentRow()
    cursor = banco.cursor()
    comando_SQL = "SELECT * FROM setores"
    cursor.execute(comando_SQL)
    dados_lidos = cursor.fetchall()
    cod = (dados_lidos[linha][0])
    cursor.execute("select*FROM setores where cod_setor='"+ str(cod)+"'")
    var = cursor.fetchall()
    ModificarSetores.show()
    
    ModificarSetores.lineEdit_3.setText(str(var[0][0]))
    ModificarSetores.lineEdit_4.setText(str(var[0][1]))

    chaveprimaria=cod
    banco.commit()  

##Essas funções são para modificar os dados da tabela. Está explicado o primeiro e o restante segue a mesma lógica.
def SalvarAlunos():
    global chaveprimaria
    #Adicionando em variaveis os valores que foram digitados nas caixas de texto da tela de modificar dados
    nome = ModificarAlunos.lineEdit_2.text() 
    telefone = ModificarAlunos.lineEdit_3.text()
    endereço=ModificarAlunos.lineEdit_4.text()
    Ativo=ModificarAlunos.lineEdit_5.text()
    cod_curso=ModificarAlunos.lineEdit_6.text()
    cursor = banco.cursor()
    #Executando o update com os valores novos que foram guardados nas variaveis usando os conchetes, o .format e as variaveis em ordem no final
    cursor.execute("UPDATE `universidade`.`alunos` SET nome='{}', telefone='{}', endereço='{}', Ativo='{}', cod_curso='{}' WHERE CPF='{}'".format(nome,telefone,endereço,Ativo,cod_curso,chaveprimaria))
    ModificarAlunos.close() #Fechar a tela de modificaçar
    VisualizarDadosAlunos.close() #Fechando a tela da tabela para poder mudar
    Visualizar_Dados_Alunos() #Abrindo a tela novamente já com a alteração

def SalvarCursos():
    global chaveprimaria
    nome = ModificarCursos.lineEdit_4.text()
    inicio = ModificarCursos.lineEdit_5.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`cursos` SET nome='{}', inicio='{}' WHERE cod_curso='{}'".format(nome,inicio,chaveprimaria))
    ModificarCursos.close()
    VisualizarDadosCursos.close()
    Visualizar_Dados_Cursos()

def SalvarDisciplinas():
    global chaveprimaria
    nome = ModificarDisciplinas.lineEdit_4.text()
    CPF_prof = ModificarDisciplinas.lineEdit_5.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`disciplinas` SET nome='{}', CPF_prof='{}' WHERE cod_disc='{}'".format(nome,CPF_prof,chaveprimaria))
    ModificarDisciplinas.close()
    VisualizarDadosDisciplinas.close()
    Visualizar_Dados_Disciplinas()

def SalvarFuncionários():
    global chaveprimaria
    nome = ModificarFuncionários.lineEdit_2.text()
    endereço=ModificarFuncionários.lineEdit_3.text()
    salario=ModificarFuncionários.lineEdit_4.text()
    cod_setor=ModificarFuncionários.lineEdit_5.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`funcionários` SET nome='{}', endereço='{}', salario='{}', cod_setor='{}' WHERE CPF='{}'".format(nome,endereço,salario,cod_setor,chaveprimaria))
    ModificarFuncionários.close()
    VisualizarDadosFuncionários.close()
    Visualizar_Dados_Funcionários()

def SalvarMatricula():
    global chaveprimaria
    global chaveprimaria2
    P1 = ModificarMatricula.lineEdit_3.text()
    P2 = ModificarMatricula.lineEdit_4.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`Matricula` SET P1='{}', P2='{}' WHERE CPF_aluno='{}' and cod_disc='{}'".format(P1,P2,chaveprimaria,chaveprimaria2))
    ModificarMatricula.close()
    VisualizarDadosMatricula.close()
    Visualizar_Dados_Matricula()

def SalvarProfessores():
    global chaveprimaria
    nome = ModificarProfessores.lineEdit_3.text()
    telefone = ModificarProfessores.lineEdit_2.text()
    endereço=ModificarProfessores.lineEdit_4.text()
    inicio=ModificarProfessores.lineEdit_7.text()
    salario=ModificarProfessores.lineEdit_6.text()
    Ativo=ModificarProfessores.lineEdit_5.text()
    cod_curso=ModificarProfessores.lineEdit_8.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`Professores` SET nome='{}', telefone='{}', endereço='{}', inicio='{}', salario='{}', Ativo='{}', cod_curso='{}' WHERE CPF='{}'".format(nome,telefone,endereço,inicio,salario,Ativo,cod_curso,chaveprimaria,chaveprimaria2))
    ModificarProfessores.close()
    VisualizarDadosProfessores.close()
    Visualizar_Dados_Professores()

def SalvarSetores():
    global chaveprimaria
    nome = ModificarSetores.lineEdit_4.text()
    cursor = banco.cursor()
    cursor.execute("UPDATE `universidade`.`Setores` SET nome='{}' WHERE cod_setor='{}'".format(nome,chaveprimaria))
    ModificarSetores.close()
    VisualizarDadosSetores.close()
    Visualizar_Dados_Setores()



app=QtWidgets.QApplication([]) #Cria a aplicação


#A seguir uma variavel recebe o arquivo ui. Antes de dizer qual arquivo ui será armazenado naquela variavel, coloca uic.loadUi para carregar esse arquivo
Menu=uic.loadUi("universidadejanela.ui") #O Menu recebe o arquivo da janela principal
VisualizarDados=uic.loadUi("VisualizarDados.ui") 
TelaFunções=uic.loadUi("Funções.ui")
AdicionarDados=uic.loadUi("AdicionarDados.ui")
login=uic.loadUi("login.ui")

AdicionarDadosAlunos=uic.loadUi("AdicionarDados_Alunos.ui")
AdicionarDadosCursos=uic.loadUi("AdicionarDados_Cursos.ui")
AdicionarDadosDisciplinas=uic.loadUi("AdicionarDados_Disciplinas.ui")
AdicionarDadosFuncionários=uic.loadUi("AdicionarDados_Funcionários.ui")
AdicionarDadosMatricula=uic.loadUi("AdicionarDados_Matricula.ui")
AdicionarDadosProfessores=uic.loadUi("AdicionarDados_Professores.ui")
AdicionarDadosSetores=uic.loadUi("AdicionarDados_Setores.ui")

VisualizarDadosAlunos=uic.loadUi("VisualizarDados_Alunos.ui")
VisualizarDadosCursos=uic.loadUi("VisualizarDados_Cursos.ui")
VisualizarDadosDisciplinas=uic.loadUi("VisualizarDados_Disciplinas.ui")
VisualizarDadosFuncionários=uic.loadUi("VisualizarDados_Funcionários.ui")
VisualizarDadosMatricula=uic.loadUi("VisualizarDados_Matricula.ui")
VisualizarDadosProfessores=uic.loadUi("VisualizarDados_Professores.ui")
VisualizarDadosSetores=uic.loadUi("VisualizarDados_Setores.ui")

ModificarAlunos=uic.loadUi("ModificarAlunos.ui")
ModificarCursos=uic.loadUi("ModificarCursos.ui")
ModificarDisciplinas=uic.loadUi("ModificarDisciplinas.ui")
ModificarFuncionários=uic.loadUi("ModificarFuncionários.ui")
ModificarMatricula=uic.loadUi("ModificarMatricula.ui")
ModificarProfessores=uic.loadUi("ModificarProfessor.ui")
ModificarSetores=uic.loadUi("ModificarSetores.ui")

Funções1=uic.loadUi("Funções_1.ui")
Funções2=uic.loadUi("Funções_2.ui")
Funções3=uic.loadUi("Funções_3.ui")
Funções4=uic.loadUi("Funções_4.ui")
Funções5=uic.loadUi("Funções5.ui")
Funções6=uic.loadUi("Funções6.ui")
Funções7=uic.loadUi("Funções7.ui")
Funções8=uic.loadUi("Funções8.ui")


#Cada botão recebe uma função
"""Para saber o nome de cada botão é só ir no Qt Designer e apertar no botão que aparecerá o nome dele e de cada elemento do lado direito superior
Falarei sobre o primeiro, o restante é a mesma lógica """
Menu.pushButton.clicked.connect(Adicionar_Dados) #Quando o botão "pushButton" for clicado, carregar a função Adicionar_Dados
Menu.pushButton_4.clicked.connect(Visualizar_Dados)
Menu.pushButton_5.clicked.connect(Funções)

AdicionarDados.pushButton.clicked.connect(Adicionar_Dados_Alunos)
AdicionarDados.pushButton_2.clicked.connect(Adicionar_Dados_Cursos)
AdicionarDados.pushButton_3.clicked.connect(Adicionar_Dados_Disciplinas)
AdicionarDados.pushButton_4.clicked.connect(Adicionar_Dados_Funcionários)
AdicionarDados.pushButton_5.clicked.connect(Adicionar_Dados_Matricula)
AdicionarDados.pushButton_7.clicked.connect(Adicionar_Dados_Professores)
AdicionarDados.pushButton_8.clicked.connect(Adicionar_Dados_Setores)

VisualizarDados.pushButton.clicked.connect(Visualizar_Dados_Alunos)
VisualizarDados.pushButton_2.clicked.connect(Visualizar_Dados_Cursos)
VisualizarDados.pushButton_3.clicked.connect(Visualizar_Dados_Disciplinas)
VisualizarDados.pushButton_4.clicked.connect(Visualizar_Dados_Funcionários)
VisualizarDados.pushButton_5.clicked.connect(Visualizar_Dados_Matricula)
VisualizarDados.pushButton_7.clicked.connect(Visualizar_Dados_Professores)
VisualizarDados.pushButton_8.clicked.connect(Visualizar_Dados_Setores)

TelaFunções.pushButton.clicked.connect(FunçõesTela1)
TelaFunções.pushButton_2.clicked.connect(FunçõesTela2)
TelaFunções.pushButton_3.clicked.connect(FunçõesTela3)
TelaFunções.pushButton_4.clicked.connect(FunçõesTela4)
TelaFunções.pushButton_5.clicked.connect(FunçõesTela5)
TelaFunções.pushButton_6.clicked.connect(FunçõesTela6)
TelaFunções.pushButton_7.clicked.connect(FunçõesTela7)
TelaFunções.pushButton_8.clicked.connect(FunçõesTela8)


AdicionarDadosAlunos.pushButton_2.clicked.connect(EnviarAdicionarAlunos)
AdicionarDadosCursos.pushButton_2.clicked.connect(EnviarAdicionarCursos)
AdicionarDadosDisciplinas.pushButton_2.clicked.connect(EnviarAdicionarDisciplinas)
AdicionarDadosFuncionários.pushButton_2.clicked.connect(EnviarAdicionarFuncionários)
AdicionarDadosMatricula.pushButton_2.clicked.connect(EnviarAdicionarMatricula)
AdicionarDadosProfessores.pushButton_2.clicked.connect(EnviarAdicionarProfessores)
AdicionarDadosSetores.pushButton_2.clicked.connect(EnviarAdicionarSetores)


VisualizarDadosAlunos.pushButton_2.clicked.connect(excluir_dadosAlunos)
VisualizarDadosCursos.pushButton_3.clicked.connect(excluir_dadosCursos)
VisualizarDadosDisciplinas.pushButton_3.clicked.connect(excluir_dadosDisciplinas)
VisualizarDadosFuncionários.pushButton_3.clicked.connect(excluir_dadosFuncionários)
VisualizarDadosMatricula.pushButton_3.clicked.connect(excluir_dadosMatricula)
VisualizarDadosProfessores.pushButton_3.clicked.connect(excluir_dadosProfessores)
VisualizarDadosSetores.pushButton_3.clicked.connect(excluir_dadosSetores)

VisualizarDadosAlunos.pushButton.clicked.connect(modificar_dadosAlunos)
VisualizarDadosCursos.pushButton.clicked.connect(modificar_dadosCursos)
VisualizarDadosDisciplinas.pushButton.clicked.connect(modificar_dadosDisciplinas)
VisualizarDadosFuncionários.pushButton.clicked.connect(modificar_dadosFuncionários)
VisualizarDadosMatricula.pushButton.clicked.connect(modificar_dadosMatricula)
VisualizarDadosProfessores.pushButton.clicked.connect(modificar_dadosProfessores)
VisualizarDadosSetores.pushButton.clicked.connect(modificar_dadosSetores)

ModificarAlunos.pushButton.clicked.connect(SalvarAlunos)
ModificarCursos.pushButton.clicked.connect(SalvarCursos)
ModificarDisciplinas.pushButton.clicked.connect(SalvarDisciplinas)
ModificarFuncionários.pushButton.clicked.connect(SalvarFuncionários)
ModificarMatricula.pushButton.clicked.connect(SalvarMatricula)
ModificarProfessores.pushButton.clicked.connect(SalvarProfessores)
ModificarSetores.pushButton.clicked.connect(SalvarSetores)


login.pushButton_5.clicked.connect(TelaMenu)

login.show() #Abrir a página login assim que executar o código
app.exec()