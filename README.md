# api-gw-tricky-lambda-integration
A sample of a Terraform configuration file highlighting the misconfiguration of integration API Gateway with Lambda functions.

![architecture-diagram.png](architecture-diagram.png)

### Instructions

1. Start LocalStack:
`docker compose up`

2. Run:
```bash
tflocal init
tflocal plan
tflocal apply auto-approve
```

3. Run:
`./invoke.sh`

### Fix

Change `integration_http_method` to `POST` under the `get_product_integration` resource.
