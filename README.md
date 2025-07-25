# AWS CI/CD Pipeline: Java Web App Deployment

# 🚀 AWS CI/CD Pipeline: GitHub → CodeBuild → CodeDeploy → EC2

![Architecture Diagram](./images/architecture-6.png)
<br>

## 📌 Project Overview
 This project demonstrates a full CI/CD pipeline on AWS, automating code deployments from source to production. It integrates GitHub for version control, CodeBuild for compiling and testing, and CodeDeploy for rolling out updates to EC2 instances within a VPC. 
 The goal is to gain practical experience with cloud-native CI/CD using real AWS tools. 
 While the pipeline operates behind the scenes, it significantly improves and automates the release process for the Java web application.




## 🛠️ Tech Stack
**GitHub** – Store and version the code

**AWS CodePipeline** – CI/CD Orchestration

**AWS CodeBuild** – Compilation and Testing

**AWS CodeDeploy** – Automated EC2 Deployment

**AWS EC2** –  software development and deployment happens entirely on the cloud.
 - Key pairs, SSH connections, Git, Maven and Java.

**AWS S3** – Stores build artifacts

**AWS CloudFormation** – Infrastructure as Code

**AWS CodeArtifact** – Stores Maven dependencies (secured with policy)

**Java (Corretto 8)** – Application Language

**Apache Maven** – Build Tool

<br>

## Setup
To get this project up and running on your local machine, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/greytyler/aws-web-project.git
    ```
2. Navigate to the project directory:
    ```bash
    cd aws-web-project
    ```
3. Install dependencies:
    ```bash
    mvn install
    ```

<br>

## Contact
If you have any questions or comments about the my CI/CD project, please contact:
Aubrey - [aubreytdube19@gmail.com](mailto:email@example)

- [LinkedIn](https://www.linkedin.com/in/natasha-ong/)

<br>

## Conclusion
Thank you for exploring this project! I'll continue to build this pipeline and apply my learnings to future projects.

A big shoutout to **[NextWork](https://learn.nextwork.org/app)** for their project guide and support. [You can get started with this DevOps series project too by clicking here.](https://learn.nextwork.org/projects/aws-devops-vscode?track=high)

