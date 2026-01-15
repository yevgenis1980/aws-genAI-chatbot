<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/f0275285-60aa-46b6-8749-e11bf059ac08" />


## AWS | GenAI Chatbot
AWS GenAI LLM Chatbot is an open‑source, enterprise‑ready generative AI chatbot solution that you can deploy in your own AWS account. It’s designed to let you build powerful chatbots that combine large language models (LLMs) and Retrieval‑Augmented Generation (RAG) — meaning it can answer questions using both the model’s capabilities and relevant content from indexed documents stored in your AWS environment



🎯 Architecture Overview
```
✅ VPC + Subnets + NAT
✅ Lambda backend + RAG pipeline + Embeddings
✅ Bedrock integration (Claude, Titan, etc.)
✅ DynamoDB chat history
✅ OpenSearch vector search
✅ AppSync GraphQL API
✅ Cognito authentication
✅ S3 + CloudFront frontend
✅ Observability with CloudWatch and X-Ray
✅ CI/CD GitHub Actions
✅ Cost and security controls
```


🚀 Key Features
```
🔹 Multi‑LLM Support
You can run many different models — including Amazon Bedrock models (like Claude and Llama 2), SageMaker hosted models, and even external provider models (OpenAI, Anthropic, Cohere, etc.) — all from a single chatbot framework.
🔹 RAG Workspaces & Document Indexing
Upload files or text into “workspaces” and the system will index them so the chatbot can pull in relevant context during conversations. You choose the embeddings model and chunking setup.
🔹 Multimodal Support
You can experiment with multimodal models (e.g., those that understand image content) via Amazon SageMaker deployments.
🔹 Full Web UI Included
A React‑based web interface is part of the solution, served from Amazon S3 & CloudFront, so end users can interact with the chatbot in a browser.
🔹 Role‑Based Access Control
Use Amazon Cognito to manage user authentication and roles, letting you restrict which chatbots or data different users can access.
🔹 Multi‑Model Comparison
The system supports sending the same query to multiple models at once so you can compare how each responds in the same context
```



🚀 Deployment Options
```
terraform init
terraform validate
terraform plan -var-file="template.tfvars"
terraform apply -var-file="template.tfvars" -auto-approve
```

