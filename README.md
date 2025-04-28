# 📋 Aplicativo de Manutenção de Ar-Condicionados

## 1. Objetivo do App
Gerenciar todos os aparelhos de ar-condicionado da instituição, controlando:
- [x] Cadastro de aparelhos
- :negative_squared_cross_mark: Agendamento e histórico de manutenções preventivas/corretivas
- :x: Alertas para próximas manutenções
- :white_check_mark: Relatórios de status
- :heavy_check_mark: Registro de técnicos responsáveis

## 2. Funcionalidades Principais

### Cadastro de Equipamentos
- Número de patrimônio
- Localização (prédio, sala, andar)
- Marca e modelo
- Capacidade (BTUs)
- Data de instalação
- Estado atual (ativo, em manutenção, descartado)

### Gestão de Manutenções
- Registro de manutenções realizadas
- Tipo de manutenção (preventiva, corretiva)
- Descrição do serviço
- Data da manutenção
- Técnico responsável
- Custo da manutenção

### Alertas e Notificações
- Manutenção preventiva programada (baseada em periodicidade: ex. 6 meses)
- Notificações de vencimento de manutenção
- Notificação de equipamentos com problema crítico

### Relatórios
- Relatório por equipamento
- Relatório geral da instituição
- Gráfico de manutenções realizadas
- Custo acumulado por período

## 3. Requisitos Técnicos

### Plataforma
- Mobile: Aplicativo Flutter (Android e futuramente iOS)
- Web: Painel de Gestão (Flutter Web)

### Tecnologias
- Frontend Mobile e Web: Flutter
- Backend/Database: Firebase (Authentication, Firestore, Cloud Functions)
- Hospedagem: Firebase Hosting
- Notificações: Firebase Cloud Messaging (FCM)

## 4. Etapas de Desenvolvimento

### Fase 1 - Planejamento
- Levantamento de requisitos detalhados
- Definição do fluxo de usuários
- Protótipos das telas (mobile e web)

### Fase 2 - Design
- UI/UX Design (simples, intuitivo, institucional)
- Paleta de cores (baseada na identidade da instituição)

### Fase 3 - Desenvolvimento

#### App Mobile (Flutter)
- Cadastro/Login de Usuário (Firebase Authentication)
- Cadastro de Equipamentos
- Registro de Manutenções
- Sistema de Alertas
- Relatórios e Gráficos
- Push Notifications

#### Painel Web (Flutter Web)
- Dashboard de Visão Geral
- Listagem e Gerenciamento de Equipamentos
- Histórico de Manutenções
- Gerenciamento de Técnicos
- Visualização de Relatórios
- Exportação de dados (PDF/Excel)

### Fase 4 - Testes
- Testes unitários (mobile e web)
- Testes de interface (UI tests)
- Teste piloto com usuários

### Fase 5 - Deploy
- Publicação do app na Play Store (e futuramente App Store)
- Hospedagem do painel web no Firebase Hosting
- Treinamento de usuários

### Fase 6 - Manutenção Evolutiva
- Correções de bugs
- Melhorias sugeridas
- Inclusão de novas funcionalidades (baseadas em feedback)

## 5. Funcionalidades Futuras (Pós-Lançamento)
- Controle de estoque de peças
- Assinatura digital nos registros de manutenção
- Integração com sistemas de facilities da instituição
- Dashboard inteligente para previsão de falhas via IA

# 🗂️ Modelo de Dados no Firestore

## 1. Coleções Principais

### `/equipamentos`
Cada documento representa **um ar-condicionado**.

**Campos:**
- `patrimonio`: `String`
- `localizacao`: `String`
- `marca`: `String`
- `modelo`: `String`
- `capacidade_btus`: `Number`
- `data_instalacao`: `Timestamp`
- `estado`: `String`
- `periodicidade_manutencao_meses`: `Number`
- `proxima_manutencao`: `Timestamp`

### `/manutencoes`
Cada documento representa **uma manutenção realizada**.

**Campos:**
- `equipamento_id`: `Reference`
- `tipo_manutencao`: `String`
- `descricao`: `String`
- `data_manutencao`: `Timestamp`
- `tecnico_id`: `Reference`
- `custo`: `Number`

### `/tecnicos`
Cada documento representa **um técnico da manutenção**.

**Campos:**
- `nome`: `String`
- `email`: `String`
- `telefone`: `String`
- `especializacao`: `String`
- `ativo`: `Boolean`

### `/usuarios`
Cada documento representa **um usuário do app ou do painel web**.

**Campos:**
- `nome`: `String`
- `email`: `String`
- `tipo_usuario`: `String`
- `uid`: `String`

## 🛠️ 2. Relacionamentos
- Um **equipamento** pode ter **várias manutenções**.
- Uma **manutenção** sempre está ligada a **um equipamento** e **um técnico**.
- **Usuários** podem ser técnicos (fazem manutenção) ou gestores (acessam o painel web).

## 📊 3. Exemplos de Consultas
- Listar todos os equipamentos com manutenção prevista para os próximos 30 dias.
- Listar histórico de manutenções de um equipamento.
- Exibir o total de custo de manutenção por equipamento.

## 🔥 4. Observações
- Manter documentos pequenos (< 1MB).
- Criar índices para buscas combinadas.
- Usar subcoleções apenas se necessário.
