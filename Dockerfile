# Step 1: Choose a base image
# We are using Nginx because it is a web server that can show our website in the browser
# 'alpine' is a lightweight version, so the image size stays small and fast
FROM nginx:alpine


# Step 2: Copy project files into the container
# '.' means all files from the current project folder (index.html, CSS, JS, assets)
# '/usr/share/nginx/html' is the default folder from where Nginx serves website files
# So we are placing our website files where Nginx can access and display them
COPY . /usr/share/nginx/html


# Final Understanding:
# Nginx automatically serves files from /usr/share/nginx/html
# So once files are copied, the website is ready to run in the browser

#“Server लिया → files डाली → website चल गई”


    # ---------------- IMPORTANT NOTE ----------------
# This is a static frontend project (HTML, CSS, JS already built).
# No application build step (like npm install or npm run build) is required.
#
# However, Docker build is still required to create an image.
#
# Difference:
# - App Build (npm build) → NOT required (already built)
# - Docker Build → REQUIRED (to create container image)
#
# Flow:
# Static Files → Docker Build → Docker Run → Nginx Serve
#
# Nginx serves files from: /usr/share/nginx/html
# ------------------------------------------------