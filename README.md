cat <<EOF > README.md

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
   \`\`\`bash
   git clone <repo-url>
   cd terraform-azure-vm
   \`\`\`

2. **Login to Azure CLI**:
   \`\`\`bash
   az login
   \`\`\`

3. **Initialize Terraform**:
   Initialize Terraform to download the provider plugin:
   \`\`\`bash
   terraform init
   \`\`\`

4. **Create a Plan**:
   Generate and review the Terraform plan:
   \`\`\`bash
   terraform plan
   \`\`\`

5. **Apply the Plan**:
   Execute the Terraform plan to provision the resources:
   \`\`\`bash
   terraform apply
   \`\`\`

### Variables

| Variable                | Description                          | Default Value   |
| ----------------------- | ------------------------------------ | --------------- |
| \`resource_group_name\` | The name of the resource group       | \`example\`     |
| \`location\`            | The Azure region to deploy resources | \`South India\` |

### Example Usage

\`\`\`terraform
resource "azurerm_resource_group" "example" {
name = "example"
location = "South India"
}

resource "azurerm_virtual_machine" "main" {
name = "vm"
location = azurerm_resource_group.example.location
resource_group_name = azurerm_resource_group.example.name
network_interface_ids = [azurerm_network_interface.example.id]
vm_size = "Standard_DS1_v2"

storage_image_reference {
publisher = "Canonical"
offer = "0001-com-ubuntu-server-jammy"
sku = "22_04-lts"
version = "latest"
}

os_profile {
computer_name = "hostname"
admin_username = "testadmin"
admin_password = "Password1234!"
}

os_profile_linux_config {
disable_password_authentication = false
}
}
\`\`\`

### Clean Up Resources

To remove all resources created by this Terraform script, run:
\`\`\`bash
terraform destroy
\`\`\`

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

EOF
