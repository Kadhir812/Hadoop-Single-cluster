# 🚀 Hadoop Cluster with Docker and Docker Compose

This project sets up a fully functional Hadoop cluster using Docker and Docker Compose. It includes the essential services:

- **NameNode**
- **DataNode**
- **ResourceManager**
- **NodeManager**
- **History Server**

## 🛠️ **Prerequisites**
- Docker
- Docker Compose
- Git

## 📂 **Project Structure**
```
.
├── docker-compose.yml
├── Dockerfile
├── config/
│   ├── core-site.xml
│   ├── hdfs-site.xml
│   ├── mapred-site.xml
│   └── yarn-site.xml
└── entrypoint.sh
```

## 🚀 **Setup and Usage**

### Clone the Repository
```bash
git clone https://github.com/kadhir812/Hadoop-Single-cluster.git

```

### Build Docker Images
```bash
docker-compose up --build
```

### Start the Cluster
```bash
docker compose up -d
```

### Access Hadoop Web Interfaces
- **NameNode:** [http://localhost:9870](http://localhost:9870)
- **DataNode:** [http://localhost:9864](http://localhost:9864)
- **ResourceManager:** [http://localhost:8088](http://localhost:8088)
- **History Server:** [http://localhost:19888](http://localhost:19888)

### Check Container Logs
```bash
docker compose logs -f
```

### Access a Container
Example: Enter the NameNode container
```bash
docker exec -it namenode /bin/bash
```

### Run HDFS Commands
Example: Check cluster status
```bash
hdfs dfsadmin -report
```

### Create and List Directories in HDFS
```bash
hdfs dfs -mkdir /test
hdfs dfs -ls /
```

### Shutdown the Cluster
```bash
docker compose down
```

Or, to remove everything including volumes:
```bash
docker compose down --volumes
```

## 🛡️ **Troubleshooting**
- **Port Binding Issues:** Ensure no other services are using the same ports.
- **SSH Connection Errors:** Check SSH keys and permissions.
- **DataNode Not Registering:** Verify the `datanode` service and network config.

## 📘 **References**
- [Hadoop Official Docs](https://hadoop.apache.org/docs/)
- [Docker Documentation](https://docs.docker.com/)

## 📄 **License**
MIT License

---

Let me know if you’d like any adjustments or more detailed sections! 🚀

