## Processo padrao

- Reunião de triagem
- Email de requisitos adicionais
- Validacao dos requisitos com a equipe CT;
- Validacao dos requisitos com a equipe de Sistemas;
- Criacao da automacao (Se necessario);
- Validacão da massa de dados;
- Validacão do plano de teste com um engenheiro de performance;
- Validacão dos servidores e do ambiente de execucao do teste;
- Smoke Test;
- Execucao do plano de teste;
- Coleta de métricas e tabulacão de resultados;
- Elaboracão do relatorio e laudo sintetico;
- Revisão de um engenheiro de performance;
- Revisão do PO;
- Entrega oficializada na ferramenta de SDM;

## Regras

### Sempre

- Valiar servidores (Ambiente de cada servidor);
- Validar Banco de Dados (Ambiente, Versão do Oracle, Validar permissoes);
- Validar se a aplicacao possui JVM e assim validar se existe o JProfiler configurado na JVM;
- Validar se a aplicacao possui monitoramento do Zabbix, AppDynamics ou algum dashboard do Grafana;
- (Batch) Validar acesso ao servidor de batch;
- (Batch) Validar se temos acesso ao servidor de batch;

### Em caso de abertura de solicitacoes para priorizar algum acesso

- Validar todos os dias se houve resposta ao chamado (3 vezes ao dia);
- Informar diariamente ao solicitante o posicionamento do chamado (Via Hangouts e Email);
- Informar o que está sendo desenvolvido enquanto nao se tem acesso ao que foi solicitado ou qualquer outra necessidade da 
equipe que envolva solicitacoes ao time da Porto Seguro (Via Hangouts e Email);
