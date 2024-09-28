import boto3

def store_secret(secret_name, secret_value):
    client = boto3.client('secretsmanager')
    response = client.create_secret(
        Name=secret_name,
        SecretString=secret_value
    )
    return response

if __name__ == "__main__":
    secret_name = input("Enter the secret name: ")
    secret_value = input("Enter the secret value: ")
    store_secret(secret_name, secret_value)
    print(f"Secret {secret_name} stored successfully.")
