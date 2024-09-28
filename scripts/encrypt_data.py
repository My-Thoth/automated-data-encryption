import boto3

def encrypt_data(plaintext, key_id):
    kms_client = boto3.client('kms')
    response = kms_client.encrypt(
        KeyId=key_id,
        Plaintext=plaintext
    )
    return response['CiphertextBlob']

if __name__ == "__main__":
    key_id = input("Enter the KMS key ID: ")
    data = input("Enter the data to encrypt: ")
    encrypted_data = encrypt_data(data, key_id)
    print("Encrypted Data:", encrypted_data)
