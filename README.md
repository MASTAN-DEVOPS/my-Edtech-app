# 📚 Genius EdTech Application

Genius EdTech is a modern educational technology platform designed to deliver interactive, scalable, and efficient learning experiences.  
This project is containerized using *Docker, orchestrated with **Kubernetes (EKS), and deployed with **CI/CD automation*.

---

## 🚀 Features
- 🎯 *Modular Architecture* – Backend, Frontend, and Database are decoupled for scalability.
- 🐳 *Dockerized Services* – Backend & frontend run in separate containers.
- ☸ *Kubernetes Orchestration* – Deployment on AWS EKS with auto-scaling.
- ⚡ *CI/CD* – Automated build, test, and deployment using GitHub Actions / Jenkins.
- 📊 *Monitoring* – Integrated Prometheus & Grafana dashboards.
- 🔒 *Security* – IAM roles, WAF, and Secrets Manager integration.

---

## 🏗️ Project Structure

genius-edtech/ │── backend/          # API and business logic │── frontend/         # UI (React / HTML-CSS-JS) │── database/         # MySQL/PostgreSQL scripts │── dockerfiles/      # Docker build files │── k8s-manifests/    # Kubernetes YAML files │── scripts/          # Deployment scripts │── README.md         # Project documentation

---

## 🔧 Tech Stack
- *Frontend:* React / HTML / CSS / JS
- *Backend:* Node.js / Python
- *Database:* MySQL / PostgreSQL
- *Containerization:* Docker
- *Orchestration:* Kubernetes (AWS EKS)
- *CI/CD:* Jenkins / GitHub Actions
- *Monitoring:* Prometheus & Grafana
- *Cloud:* AWS (VPC, EKS, RDS, S3)

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the Repository
bash
git clone https://github.com/MDMASTAN222/genius-edtech.git
cd genius-edtech

2️⃣ Build & Run with Docker

docker-compose up --build

3️⃣ Deploy to Kubernetes

kubectl apply -f k8s-manifests/


---

📈 Monitoring

Prometheus – Collects metrics from services.

Grafana – Visualizes real-time application performance.



---


👨‍💻 Author

MD Mastan
AWS & DevOps Engineer | Cloud Solutions Architect
