> ## AWS CI/CD Pipeline: Java Web App Deployment

#### Architecture

![Architecture Diagram](./images/architecture-6.png)
<br>

## 📌 Project Overview
 This project demonstrates a full CI/CD pipeline on AWS, automating code deployments from source to production. It integrates GitHub for version control, CodeBuild for compiling and testing, and CodeDeploy for rolling out updates to EC2 instances within a VPC. 
 The goal is to gain practical experience with cloud-native CI/CD using real AWS tools. 
 While the pipeline operates behind the scenes, it significantly improves and automates the release process for the Java web application.




## 🛠️ Tech Stack
***GitHub*** – Store and version the code

***AWS CodePipeline*** – CI/CD Orchestration

***AWS CodeBuild*** – Compilation and Testing

***AWS CodeDeploy*** – Automated EC2 Deployment

***AWS EC2*** –  software development and deployment happens entirely on the cloud.
 - Key pairs, SSH connections, Git, Maven and Java.

***AWS S3*** – Stores build artifacts

***AWS CloudFormation*** – Infrastructure as Code

***AWS CodeArtifact*** – Stores Maven dependencies (secured with policy)

***Java (Corretto 8)*** – Application Language

***Apache Maven*** – Build Tool
<br>

### 📂 Project Structure
> ###### AWS-DEVOPS-WEB/
>├── scripts/                     # Deployment lifecycle scripts
├── src/                         # Java source code
   ├── appspec.yml                  # CodeDeploy configuration
   ├── buildspec.yml                # CodeBuild build instructions
   ├── pom.xml                      # Maven project config
   ├── run-tests.sh                 # Custom test runner script
   └── settings.xml                 # Maven settings (CodeArtifact config)

<br>

###### 🧭 Architecture Flow

##### Source Stage

The Source stage in CodePipeline specifies the default branch to monitor for changes, ensuring the pipeline follows the correct code version. It also enables webhooks to automatically trigger the pipeline whenever new code is pushed to the linked GitHub repository.
![Source Stage](./images/source-stage.png)

##### Build Stage
The Build stage sets up a clean environment in CodeBuild to compile and test your application. I configured CodeBuild to run Maven on the files pulled from GitHub. The input artifact for the build stage is SourceArtifact
![Build Stage](./images/build-stage.png)

##### Deploy Stage
The Deploy stage uses AWS CodeDeploy to release the application to an EC2 instance. A configured deployment group ensures that build artifacts from CodeBuild are automatically deployed to the web app.
![Deploy Stage](./images/deploy-stage.png)


##### Success

Since my CI/CD pipeline gets triggered by commits to the main branch, I tested my pipeline by updating the index.html with a deployment confirmation message and pushing the changes. The pipeline automatically built and deployed the updated project.


The moment I pushed the code change, the commit message under each stage reflects the seamless orchestration of AWS services,source triggered CodeBuild, which compiled and tested the application, then handed off to CodeDeploy for automated deployment


Once my pipeline executed successfully, I checked by pasting the copied Public IPv4 DNS into a new browser tab and pressing Enter. I was able to view my web application, and I confirmed the new line and that code deployments was visible on the site.


<br>

---

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

