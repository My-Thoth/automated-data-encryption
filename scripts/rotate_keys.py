import boto3

def rotate_kms_key(key_id):
    kms_client = boto3.client('kms')
    kms_client.enable_key_rotation(KeyId=key_id)

if __name__ == "__main__":
    key_id = input("Enter the KMS key ID: ")
    rotate_kms_key(key_id)
    print(f"Key rotation enabled for KMS key {key_id}")
