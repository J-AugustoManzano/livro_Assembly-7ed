# Livro: Programação Assembly
Padrão IBM-PC 8086/8088

Assembly é uma linguagem de montagem utilizada para programar computadores em baixo nível. Seus princípios e recursos encontram-se neste livro, voltado aos iniciantes no estudo dessa linguagem, o qual transmite conhecimentos básicos da programação de microcomputadores IBM-PC a partir do microprocessador Intel 8086/8088, cuja escolha se deu por ser a versão mais difundida em escolas do mundo todo e, ainda, em razão de a ferramenta Emu8086 v. 4.08 empregar o padrão Intel 8086/8088, que possui grande quantidade de ferramentas de simulação e de programação, sendo o ambiente Emu8086 uma delas.

Outro detalhe a ser considerado é o fato de ficar um pouco mais fácil entender a engenharia de um microprocessador de 32 bits (ou mesmo de 64 bits, lançamento inicial da empresa AMD) a partir do modelo 8086 do que a partir dos modelos 8080 e 8085, pois foi com o modelo 8086 que a Intel obteve grande habilidade técnica para resolver problemas de endereçamento de memória e deu a ela toda a base para chegar à capacidade de 32 bits e, posteriormente, a 64 bits.

A obra estrutura-se em quatro partes lógicas, agrupando o tema em áreas operacionais (o que não é simples em se tratando de programação em baixo nível, pois os assuntos facilmente se misturam), a fim de facilitar o aprendizado. É ideal conhecer algoritmos computacionais e uma linguagem de alto nível.

A parte I apresenta noções e conceitos preliminares, explica a diferença entre assembly e assembler, contextualiza o sistema computacional, incluindo organização básica de dados, registradores, interrupções, segmentos, deslocamentos e endereçamento de memória. Ainda faz uma abordagem básica da arquitetura interna do modelo de microprocessador 8086/8088.

Na parte II constam os fundamentos do programa DEBUG. São estudados conceitos de aritmética em modo hexadecimal, representação de valores negativos, cálculos com códigos de máquina, movimentação de dados, apresentação de caracteres, valores binários e hexadecimais, registradores de estado, salto condicional, entrada de dados por teclado, uso de procedimentos e de pilha, além de controle da consistência da entrada de dados.

A parte III descreve os recursos básicos da ferramenta Emu8086, a manipulação de registradores e dados (uma abordagem mais prática encontrada no final da obra), tipos de dados e cálculos matemáticos mais elaborados, instruções lógicas e de saltos com decisões e laços de repetição, macros, segmentos e deslocamentos, criação de biblioteca externa, valores negativos, uso da biblioteca de recursos que acompanha a ferramenta Emu8086 v. 4.08, endereçamento e acesso à memória.

Finalizando, a parte IV traz apêndices com informações complementares para um embasamento maior.

A sexta edição, revisada, atualizada e ampliada, do livro Fundamentos em Programação Assembly para Computadores IBM-PC a partir dos Microprocessadores Intel 8086/8088 implementa os opcodes dos códigos Assembly dos capítulos 3 a 5, visando uma forma mais clara de expor o assunto, e o capítulo 7 aprimora os procedimentos NEAR (próximo) e FAR (distante). O novo apêndice C aborda a ferramenta para debug GRDB (Get Real DeBugger), com capacidade de operação em registradores de 32 bits, e o uso do programa DEBUG do professor Paul Vojta em modo 32 bits. O capítulo 11, outra novidade desta edição, descreve de maneira simples como implementar tomadas de decisão e laços para repetição a partir da óptica de alto nível.
