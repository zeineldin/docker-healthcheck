FROM nginx:1.17.7
RUN apt-get update && apt-get install -y wget
HEALTHCHECK --interval=10s --timeout=3s CMD wget --method=HEAD localhost/index.html || exit 1
