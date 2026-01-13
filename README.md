<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/f0275285-60aa-46b6-8749-e11bf059ac08" />



## AWS | GenAI Platform 
Architecture with public and private subnets, an Application Load Balancer (ALB), EC2 instances, and private resources. It demonstrates how users interact with the system, and how scaling and secure resource access are managed.



🎯 GenAI Chatbot | Architecture Overview
```
✅ Deployment & Infrastructure Layer
Code repositories, CI/CD pipelines, AWS CDK, S3/CloudFront, Cognito, API Gateway/AppSync, vector databases, and Bedrock endpoints.
✅ Chatbot Runtime:
User queries go through API Gateway → Lambda preprocessing → RAG retrieval → LLM query → post-processing → response to the user.
✅ Monitoring & Feedback:
CloudWatch metrics, EventBridge alerts, analytics, automated updates, and optional API triggers.
This modular architecture allows developers to customize models, data sources, and user workflows while maintaining enterprise-grade security and reliability.
```


🧱 Features
```
✔ Fully automated provisioning with Terraform
✔ High availability using multiple subnets in different Availability Zones
✔ Secure connectivity between Application and RDS
✔ Configurable environment variables for database credentials
✔ Easy to extend for other JSON data source
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

