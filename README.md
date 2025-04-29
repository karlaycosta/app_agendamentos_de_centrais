# 📋 Aplicativo de Manutenção de Ar-Condicionados

Este projeto visa desenvolver um aplicativo completo para gerenciar a manutenção de aparelhos de ar-condicionado em uma instituição. O aplicativo, desenvolvido com Flutter para compatibilidade mobile (Android e iOS) e web, terá um painel de gestão e utilizará o Firebase como backend. As principais funcionalidades incluem o cadastro de equipamentos, agendamento e histórico de manutenções, alertas, relatórios e registro de técnicos. O objetivo é gerenciar a manutenção dos aparelhos, reduzir custos e aumentar a vida útil dos ar-condicionados.

| Integrantes   | Função        |
| :---          |     :---:     |
| 1. EDUARDO ROCHA D'AVANSO DE OLIVEIRA | A definir  |
| 2. GABRIEL DE ABREU FERNANDES  | A definir  |
| 3. LUIZ GABRIEL GOMES SILVA | A definir |
| 4. REBECA ANDRADE DA SILVA     | A definir  |

### 🧭 Orientadores:
1. Deriks Karlay Dias Costa
2. Landry Pereira da Silva

## 🚀 1. Objetivo do Aplicativo
Gerenciar todos os aparelhos de ar-condicionado da instituição, controlando:
1. ✅ Cadastro de aparelhos
2. ✅ Agendamento e histórico de manutenções preventivas/corretivas
3. ✅ Alertas para próximas manutenções
4. ✅ Relatórios de status
5. ❓ Registro de técnicos responsáveis

## 📱 2. Funcionalidades Principais

### Cadastro de Equipamentos
1. ✅ Número de patrimônio
2. ✅ Localização (prédio, sala, andar)
3. ✅ Marca e modelo
4. ✅ Capacidade (BTUs)
5. ✅ Data de instalação
6. ✅ Estado atual (ativo, em manutenção, descartado)

### Gestão de Manutenções
1. ✅ Registro de manutenções realizadas
2. ✅ Tipo de manutenção (preventiva, corretiva)
3. ✅ Descrição do serviço
4. ✅ Data da manutenção
5. ❓ Técnico responsável
6. ✅ Custo da manutenção

### Alertas e Notificações
1. ✅ Manutenção preventiva programada (baseada em periodicidade: ex. 6 meses)
2. ✅ Notificações de vencimento de manutenção
3. ✅ Notificação de equipamentos com problema crítico

### Relatórios
1. ✅ Relatório por equipamento
2. ✅ Relatório geral da instituição
3. ✅ Gráfico de manutenções realizadas
4. ✅ Custo acumulado por período

## 📝 3. Requisitos Técnicos

### Plataforma
 ✅ Mobile: Aplicativo Flutter (Android e futuramente iOS)\
 ✅ Web: Painel de Gestão (Flutter Web)\

### 💻 Tecnologias
1. Frontend Mobile e Web: Flutter
2. Backend/Database: Firebase (Authentication, Firestore, Cloud Functions)
3. Hospedagem: Firebase Hosting
4. Notificações: Firebase Cloud Messaging (FCM)

## 📈 4. Etapas de Desenvolvimento

### 📑 Fase 1 - Planejamento
1. ✅ Levantamento de requisitos detalhados
2. ✅ Definição do fluxo de usuários
3. ❓ Protótipos das telas (mobile e web)

### ✒️ Fase 2 - Design
1. ✅ UI/UX Design (simples, intuitivo, institucional)
2. ❓ Paleta de cores (baseada na identidade da instituição)

### 📜 Fase 3 - Desenvolvimento

#### App Mobile (Flutter)
1. ✅ Cadastro/Login de Usuário (Firebase Authentication)
2. ✅ Cadastro de Equipamentos
3. ✅ Registro de Manutenções
3. ✅ Sistema de Alertas (Push Notifications)
4. ✅ Relatórios e Gráficos

#### Painel Web (Flutter Web)
1. ✅ Dashboard de Visão Geral
2. ✅ Listagem e Gerenciamento de Equipamentos
3. ✅ Histórico de Manutenções
4. ✅ Gerenciamento de Técnicos
5. ✅ Visualização de Relatórios
6. ❓ Exportação de dados (PDF/Excel)

### 📌 Fase 4 - Deploy
1. ✅ Hospedagem do painel web no Firebase Hosting
2. ❓ Publicação do app na Play Store (e futuramente App Store)
3. ❓ Treinamento de usuários

### 🛠️ Fase 5 - Manutenção Evolutiva
1. Correções de bugs
2. Melhorias sugeridas
3. Inclusão de novas funcionalidades (baseadas em feedback)

## 💡 5. Funcionalidades Futuras (Pós-Lançamento)
1. Controle de estoque de peças
2. Assinatura digital nos registros de manutenção
3. Integração com sistemas de facilities da instituição
4. Dashboard inteligente para previsão de falhas via IA

# 🗂️ Modelo de Dados no Firestore

## 📂 1. Coleções Principais

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

## 🔗 2. Relacionamentos
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
