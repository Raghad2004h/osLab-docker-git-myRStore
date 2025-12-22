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
