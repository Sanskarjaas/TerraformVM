# Azure Virtual Machine with Networking and Security Setup

This Terraform script provisions an Azure Virtual Machine (VM) with associated networking components such as Virtual Networks, Subnets, Public IP, and Network Security Groups.

## Resources Created

This script will create the following Azure resources:

1. **Resource Group**: A logical container to manage all related resources.
2. **Virtual Network (VNet)**: A network for internal communication.
3. **Subnet**: A network within the Virtual Network for the virtual machine.
4. **Public IP Address**: Allows the VM to be accessed from the internet.
5. **Network Interface**: Connects the VM to the Virtual Network.
6. **Network Security Group (NSG)**: Controls inbound/outbound traffic to the VM.
7. **Virtual Machine (VM)**: Ubuntu-based Linux virtual machine.

## How to Use

### Prerequisites

- Ensure you have the following installed:
  - [Terraform](https://www.terraform.io/downloads.html)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- You must also have an active Azure account.

### Steps

1. **Clone the repository**:
   ```bash
   git clone <repo-url>
   cd <your-directory>
   ```
