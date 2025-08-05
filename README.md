You're seeing this message:

```bash
Initialized empty Git repository in D:/2a_Terraform/Terraform_Project/.git/
```

because you've just initialized a new Git repository **locally** using:

```bash
git init
```

But to **link it to your GitHub repository** (`https://github.com/Arpit9838/terraform-multi-environment-infra.git`), you still need to add the **remote origin**.

### ✅ Here’s what you need to do step-by-step:

---

### 🔁 If you just initialized the repo and haven’t added remote yet:

Run the following commands in your project folder:

```bash
cd D:/2a_Terraform/Terraform_Project

git remote add origin https://github.com/Arpit9838/terraform-multi-environment-infra.git
git add .
git commit -m "Initial commit: Terraform multi-environment infrastructure (dev, stg, prd)"
git branch -M main
git push -u origin main
```

---

### ⚠️ If `remote origin` already exists (e.g., wrongly set earlier):

Reset it like this:

```bash
git remote remove origin
git remote add origin https://github.com/Arpit9838/terraform-multi-environment-infra.git
```

Then continue with:

```bash
git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main
```

---

### 📝 Sample `README.md` file

```markdown
# Terraform Multi-Environment Infrastructure

This project manages AWS infrastructure using Terraform with support for **three isolated environments**:

- `dev` – development environment (1 EC2 instance)
- `stg` – staging environment (1 EC2 instance)
- `prd` – production environment (2 EC2 instances)

Each environment includes:
- EC2 instances
- S3 bucket for backend state
- DynamoDB table for state locking
- Separate security groups based on environment needs

## Directory Structure

```

terraform-multi-environment-infra/
├── dev/
│   └── main.tf
├── stg/
│   └── main.tf
├── prd/
│   └── main.tf
├── modules/
│   └── ec2\_instance/
├── backend/
│   └── s3 & dynamodb setup
└── README.md

````

## Features

- Modularized code using Terraform modules
- Isolated backend configuration for each environment
- Conditional resource creation
- State locking using **S3** + **DynamoDB**

## How to Use

```bash
cd dev          # or stg, prd
terraform init
terraform plan
terraform apply
````

## Prerequisites

* AWS CLI configured with credentials
* Terraform >= 1.5
`
