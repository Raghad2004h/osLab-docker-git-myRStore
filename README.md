# Princess Store

## Project Description

Princess Store is a simple and well-organized web project developed for the **Web 1 course**.  
The project represents an online store for princess-themed girls' products.  
It includes a homepage, a user signup page, and a contact page.  
The project is built using HTML, CSS, and JavaScript and works locally in the browser.  
Docker is included to support consistent setup and execution.

---

## Tech Stack

- HTML5
- CSS3
- JavaScript
- Docker
- Nginx

---

## How to Build and Run Using Docker

1. Open terminal in the project folder.
2. Build the Docker image:

```bash
docker build -t princess-store .
```

3. Run the container:

```bash
docker run -p 8080:80 princess-store
```

---

## How to Stop the Container and Clean Up (Basic)

1. List running containers to find the container ID:

```bash
docker ps
```

2. Stop the container using its ID:

```bash
docker stop <container_id>
```

3. Remove the container (optional cleanup):

```bash
docker rm <container_id>
```

---

## Configuration Notes

- The app runs on **host port 8080**, mapped to **container port 80**.
- No environment variables are required for this project.
- Docker ensures the project behaves the same on any machine.
- Make sure Docker is running before executing any commands.

---

## How to Test It

1. Open your browser and visit: http://localhost:8080/

2. Verify that all pages (homepage, signup, contact) display correctly.
3. Ensure CSS, JavaScript, and images are loaded properly.
4. Test navigation between pages and form interactions to confirm functionality.

---

## Attribution

- Created entirely from scratch for the **Web 1 course**.
- No open-source project was used as a base.

---

## Bonus A: Docker Compose

I added a docker-compose.yml file to simplify running the project, especially if there are multiple services.

File Path: docker-compose.yml

What it does: Allows you to build and start the project with a single command: docker-compose up

Ports: Maps host port 8080 to container port 80

Restart Policy: Automatically restarts the container unless stopped manually

Stop the project: Use docker-compose down to stop and remove containers

---

## Bonus B: CI/CD with GitHub Actions

I successfully implemented a GitHub Actions Workflow to automate the building of my Docker image.

File Path: .github/workflows/docker-build.yml

Trigger: Every time code is pushed to the main branch or a Pull Request is opened, the workflow runs automatically.

What it does: Builds the Docker image for the project. (Optional: can also run tests if added later.)

Optimization: Uses Docker Buildx (docker/setup-buildx-action@v2) to ensure faster and more efficient builds, following modern DevOps standards.

---

## Bonus C: Multi-stage Docker Build

I implemented a **multi-stage Docker build** to reduce the final image size.

- **What it does:**
  - Stage 1 builds all dependencies and prepares the project.
  - Stage 2 copies only the necessary files to the production image, keeping it small and efficient.
- **Benefit:** Reduces image size, faster deployments, and follows professional Docker practices.

---

## Bonus D: Healthcheck

I added a **Docker Healthcheck** to ensure the container is running correctly.

- **What it does:** Docker automatically checks the container's health every 30 seconds.
- **Endpoint:** Uses `http://localhost:80` to verify the service is responsive.
- **Benefit:** Detects container failures quickly and ensures the project is always running as expected.

---

## Bonus E: Simplification with Makefile

To make the development process easier and faster, I created a **Makefile**. This allows anyone to manage the project using simple commands instead of long Docker instructions:

- `make build`: To build the Docker image.
- `make run`: To start the container on port 8080.
- `make stop`: To stop and remove the running container.

---

## Development Workflow

This project follows a simple and professional GitHub workflow.

- The `main` branch contains the stable version of the project.
- New features or documentation updates are developed in separate feature branches.
- All changes are merged into `main` using Pull Requests to ensure clean history and review.

This workflow was used to demonstrate a professional PR-based development process.

---

## Screenshots & PR Workflow

Some screenshots demonstrating the project:

- Docker build success
- Project running in browser

All screenshots are stored in `docs/screenshots/`.

