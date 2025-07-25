# AWS CI/CD Pipeline: Java Web App Deployment

# 🚀 AWS CI/CD Pipeline: GitHub → CodeBuild → CodeDeploy → EC2

![Architecture Diagram](./images/architecture-6.png)
<br>

## 📌 Project Overview
 This project demonstrates a full CI/CD pipeline on AWS, automating code deployments from source to production. It integrates GitHub for version control, CodeBuild for compiling and testing, and CodeDeploy for rolling out updates to EC2 instances within a VPC. 
 The goal is to gain practical experience with cloud-native CI/CD using real AWS tools. 
 While the pipeline operates behind the scenes, it significantly improves and automates the release process for the Java web application.




## 🛠️ Tech Stack
**GitHub** – Source Code Repository

**AWS CodePipeline** – CI/CD Orchestration

**AWS CodeBuild** – Compilation and Testing

**AWS CodeDeploy** – Automated EC2 Deployment

**AWS EC2** –  software development and deployment happens entirely on the cloud.

**AWS S3** – Stores build artifacts

**AWS CloudFormation** – Infrastructure as Code

**AWS CodeArtifact** – Stores Maven dependencies (secured with policy)

**Java (Corretto 8)** – Application Language

**Apache Maven** – Build Tool

- **VSCode**: For my IDE, I chose Visual Studio Code. It connects directly to my development EC2 instance, making it easy to edit code and manage files in the cloud.

- **Amazon EC2**: I'm developing my web app on Amazon EC2 virtual servers, so that software development and deployment happens entirely on the cloud.
- Key pairs, SSH connections, Git, Maven and Java.
- **GitHub**: All my web app code is stored and versioned in this GitHub repository.
- **[COMING SOON] AWS CodeArtifact**: Once it's rolled out, CodeArtifact will store my artifacts and dependencies, which is great for high availability and speeding up my project's build process.
- **[COMING SOON] AWS CodeBuild**: Once it's rolled out, CodeBuild will take over my build process. It'll compile the source code, run tests, and produce ready-to-deploy software packages automatically.
- **[COMING SOON] AWS CodeDeploy**: Once it's rolled out, CodeDeploy will automate my deployment process across EC2 instances.
- **[COMING SOON] AWS CodePipeline**: Once it's rolled out, CodePipeline will automate the entire process from GitHub to CodeDeploy, integrating build, test, and deployment steps into one efficient workflow.


<br>

## Setup
To get this project up and running on your local machine, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/greytyler/aws-web-project.git
    ```
2. Navigate to the project directory:
    ```bash
    cd nextwork-web-project
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

