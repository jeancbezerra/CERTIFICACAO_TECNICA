Para iniciar nossas atividades, necessitamos dos seguintes requisitos iniciais:

- Desenho da arquitetura;
- Cenários de testes / Endpoints dos Serviços;
- Existe cache de dados?
- Quais são servidores utilizados para as aplicações?
- Massa de dados para os cenários;
- Procedimentos de execução (Se possível um vídeo curto para expor o fluxo);
- Autenticação da aplicação/serviço. Criar um usuário para a Certificação Técnica com permissões necessárias para executar os fluxos de negócio;
- Quais são os requisitos não funcionais necessários:
- - Tempo de Resposta ideal por cenário ?
- - RPS – Requisições por Segundo/Minuto ?
- - TPS – Transações por Segundo/Minuto ?
- - EPS – Erros por Segundo/Minuto ?
- - QPS – Consultas por Segundo/Minuto ?
- - Timeout Threshold – Tempo de resposta máximo?

Possíveis restrições para as execuções dos testes, informe Sim, Não ou um descrição sobre a questão:

- Aplicação restringe acesso para usuários iguais ao mesmo tempo?
- Monitoramento já está ativo no ambiente do teste?
- A massa de dados é consumida a cada execução de teste, necessitando que o especialista em performance tenha que solicitar a equipe de aplicação que gere uma nova massa de dados?
- Existem horários específicos que os testes devem ser realizados?
- Existe um cluster em homologação nos servidores da aplicação?
- A aplicação/serviço possui arquitetura 32 bits?
- A aplicação/serviço encontra-se em estado de DEBUG ou RELEASE no ambiente em questão?
- A aplicação consome serviços críticos em ambiente de homologação?
- A execução de um teste de desempenho pode impactar em outro procedimento programado?
- A execução de um teste de desempenho gera custo financeiro no ambiente em questão?
- A versão que deve ser avaliada, encontra-se disponível no ambiente de homologação?
- No momento de execução dos testes em uma janela acordada, teremos um recurso especialista em banco de dados para acompanhar a carga injetada?

Dúvida?

- Para gravação dos cenários de teste em vídeo, recomendamos o plugin do Google Chrome Screencastify ou a gravação de tela do PowerPoint;
- Para gravações de cenários menores (ex: 2 cenários de negócio), utilize prints da tela em sequência inseridos em documento Word ou PowerPoint com demais informações do processo a ser automatizado;
- Caso a aplicação/negócio não tenha um SLA de tempo de resposta para suas transações, utilizaremos o de mercado já predefinido de 3 segundos para aplicações Web e 2 segundos para serviços.

Qualquer dúvida estamos à disposição.
Cordialmente
