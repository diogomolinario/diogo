import paramiko

# Define as informações de conexão para a máquina intermediária
intermediario_host = '172.16.10.17'
intermediario_usuario = 'rcarnauba.fastlane'

# Define as informações de conexão para a máquina final
final_host = 'srv20las001.grp.local'
final_usuario = 'desenv'
final_senha = 'h99Z0xGRe2'

# Cria uma conexão SSH para a máquina intermediária
intermediario = paramiko.SSHClient()
intermediario.set_missing_host_key_policy(paramiko.AutoAddPolicy())
intermediario.connect(intermediario_host, username=intermediario_usuario)

# Cria um canal de redirecionamento para a máquina final
canal = intermediario.invoke_shell()

# Envia o comando para se conectar à máquina final
comando = f'ssh {final_usuario}@{final_host}\n'
canal.send(comando)

# Espera a senha ser solicitada
while not canal.recv_ready():
    pass

# Envia a senha para a máquina final
canal.send(final_senha + '\n')

# Aguarda a conexão ser estabelecida
while not canal.recv_ready():
    pass



# Executa o comando para listar as pastas
comando = 'ls'
canal.send(comando)
print(str(canal.recv(4096).decode('utf-8')))

# # Imprime a saída do comando
# print(stdout.read().decode('utf-8'))

# Fecha a conexão com a máquina intermediária
intermediario.close()
