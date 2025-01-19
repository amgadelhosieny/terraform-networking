# Terraform VPC Setup on AWS

This project demonstrates how to set up a Virtual Private Cloud (VPC) on AWS using **Terraform**. It includes the creation of public and private subnets, an Internet Gateway (IGW), and a NAT Gateway for secure internet access.

## Project Structure

- **VPC**: Creates a Virtual Private Cloud with a CIDR block specified by the variable `var.cidr`.
- **Subnets**:
  - Public Subnets (`public1`, `public2`) are created with public IP mapping enabled.
  - Private Subnets (`private1`, `private2`) are created for internal resources without direct internet access.
- **Internet Gateway (IGW)**: Allows public subnets to access the internet.
- **NAT Gateway**: Allows instances in private subnets to access the internet via a NAT Gateway in the public subnet.
- **Route Tables**: Defines routing rules for public and private subnets to manage internet access.

## Requirements

- AWS account with proper permissions to create VPCs, subnets, and gateways.

## Usage

### Prerequisites

1. **Install Terraform**: Follow the instructions on the [Terraform website](https://www.terraform.io/downloads.html).
2. **AWS Credentials**:           
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"


## Steps to Deploy


Initialize Terraform: Run the following command to initialize the Terraform working directory:

1. **terraform init**:

Set Variables: If needed, configure the CIDR block for the VPC in terraform.tfvars


2. **Apply Terraform Configuration**:
To apply the configuration and create the resources on AWS, run: terraform apply

    Verify the Setup: After applying the Terraform configuration, the VPC with subnets, gateways, and routing should be created in your AWS account.

## Outputs

    The VPC ID is printed as an output once the deployment is successful.

## Cleanup

To delete the resources created by Terraform, you can run the following command: terraform destroy


## terraform destroy

This will tear down all the resources that were created.






