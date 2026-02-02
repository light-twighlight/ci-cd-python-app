# FastAPI CI/CD Project

Simple FastAPI application with automated CI/CD pipeline using GitHub Actions, Docker, and AWS EC2.

---

## 📦 Project Structure

```
ci-cd-deploy/
├── .github/workflows/
│   └── ci.yml
├── app/
│   └── main.py
├── scripts/
│   └── deploy.sh
├── Dockerfile
├── README.md
├── requirments.txt
```
---

## 🚀 Features

- FastAPI app with `/` and `/health` endpoints  
- Dockerized for easy deployment  
- CI/CD pipeline with GitHub Actions:
  - Build Docker image  
  - Push to GitHub Container Registry (GHCR)  
  - Deploy to AWS EC2 automatically via SSH  

---

## 🛠️ Requirements

- Python 3.11  
- Docker (on local machine or EC2)  
- GitHub account with **GHCR token**  
- AWS EC2 instance with Docker installed and Security Group allowing ports 22 (SSH) and 8000  

---

## ⚡ Endpoints

- `/` → returns `{ "status": "ok" }`  
- `/health` → returns `{ "health": "green" }`  

### Example:

- http://51.21.200.159:8000/
- http://51.21.200.159:8000/health

```bash
curl http://51.21.200.159:8000/health
```