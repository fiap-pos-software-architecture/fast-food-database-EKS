# Fast-Food Database

Este repositório contém a configuração de infraestrutura para um banco de dados de fast food, utilizando Kubernetes e AWS EKS, com suporte a MySQL.

## Estrutura do Projeto

### `.github/workflows/`
Contém os arquivos de automação CI/CD utilizando GitHub Actions:

- **deploy-eks.yml**: Define o pipeline de deploy da infraestrutura no EKS.
- **terraform.yml**: Executa a configuração da infraestrutura utilizando Terraform.

### `kubernetes/Database/`
Contém os arquivos YAML para provisionamento e gerenciamento do banco de dados MySQL no Kubernetes:

- **mysql-configmap.yaml**: Configuração de ambiente do MySQL, como variáveis de ambiente.
- **mysql-deployment.yaml**: Define o deployment do MySQL no Kubernetes.
- **mysql-pv.yaml**: Configuração de volumes persistentes (PV) para armazenamento de dados do MySQL.
- **mysql-pvc.yaml**: Reclamações de volumes persistentes (PVC) para garantir armazenamento durável.
- **mysql-service.yaml**: Serviço Kubernetes para expor o MySQL dentro do cluster.

### Arquivos de Terraform
Os arquivos abaixo definem a infraestrutura para provisionamento de um cluster AWS EKS:

- **backend.tf**: Configura o backend do Terraform para armazenar o estado da infraestrutura.
- **data.tf**: Define os dados necessários para criar os recursos.
- **eks-access-entry.tf**: Configura permissões e acesso ao cluster EKS.
- **eks-access-policy.tf**: Define políticas de acesso ao cluster EKS.
- **eks-cluster.tf**: Cria o cluster EKS na AWS.
- **eks-node.tf**: Cria os nós de trabalho do cluster EKS.
- **provider.tf**: Configura o provedor do Terraform para a AWS.
- **security-group.tf**: Define os grupos de segurança associados ao cluster.
- **vars.tf**: Contém as variáveis utilizadas no projeto.

## Requisitos

- **Docker Desktop** com suporte ao Kubernetes habilitado.
- **Kubectl** instalado. [Instruções](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- **AWS CLI** configurado com credenciais válidas. [Instruções](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## Como Executar

### Passo 1: Preparar o Ambiente Kubernetes

1. **Configurar o Cluster EKS:**
   - Execute o pipeline do GitHub Actions ou rode manualmente o Terraform para provisionar o cluster:

   ```bash
   terraform init
   terraform apply
