
# Automated Data Encryption in AWS

This project automates the encryption of various AWS resources using Terraform and AWS Secrets Manager for secure key and secret management. It covers AWS services like KMS, S3, RDS, and EBS for data encryption, and includes automation scripts for key rotation and secret management.

## Project Structure

- **terraform/**: Contains Terraform scripts to set up encryption services for AWS resources.
  - `kms.tf`: Sets up AWS KMS for key management.
  - `secretsmanager.tf`: Automates secrets management using AWS Secrets Manager.
  - `s3_encryption.tf`: Implements envelope encryption for Amazon S3.
  - `rds_encryption.tf`: Configures encryption for Amazon RDS.
  - `ebs_encryption.tf`: Configures encryption for Amazon EBS volumes.
- **policies/**: IAM policies required to access KMS keys and Secrets Manager.
  - `kms-access-policy.json`: IAM policy to allow access to KMS keys.
  - `secretsmanager-access-policy.json`: IAM policy for accessing Secrets Manager.
- **modules/**: Reusable Terraform modules for KMS and Secrets Manager.
  - `kms-module/`: Module to create KMS keys.
  - `secretsmanager-module/`: Module to create secrets in Secrets Manager.
- **scripts/**: Python scripts for encryption, secret management, and key rotation.
  - `encrypt_data.py`: Script to encrypt data using KMS keys.
  - `manage_secrets.py`: Script for managing AWS Secrets Manager secrets.
  - `rotate_keys.py`: Script to automate key rotation in AWS KMS.

## Prerequisites

- **Terraform v1.0+**
- **AWS CLI**
- **Python 3.x** (for automation scripts)
- **AWS Account with sufficient permissions** (IAM policies and programmatic access)

## Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/automated-data-encryption.git
   cd automated-data-encryption
   ```

2. **Configure AWS access**:
   - Ensure your AWS credentials are configured in your environment.
   - Modify any variable values in the `terraform.tfvars` file if necessary.

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Deploy resources**:
   ```bash
   terraform apply
   ```

   - During initialization, you will be prompted to provide any required secrets, which will be securely managed using AWS Secrets Manager.

## Usage

- **KMS**: Centralized key management for encrypting data.
- **S3 Encryption**: Ensures that data at rest in S3 is encrypted.
- **RDS Encryption**: Protects database contents using encryption.
- **EBS Encryption**: Secures data stored in Amazon EBS volumes.

## Security Considerations

- Always follow the principle of least privilege when assigning IAM roles and policies.
- Regularly rotate your encryption keys and secrets.
- Use AWS CloudTrail to monitor access to your encrypted resources.

## Contribution

Feel free to submit issues or pull requests for improvements or additional features.

## License

This project is licensed under the MIT License.
