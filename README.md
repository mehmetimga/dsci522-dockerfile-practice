# dsci522-dockerfile-practice

This project creates a Docker image for data science project.

## Links

- **GitHub Repository**: [https://github.com/mehmetimga/dsci522-dockerfile-practice](https://github.com/mehmetimga/dsci522-dockerfile-practice)
- **DockerHub Image**: [https://hub.docker.com/r/mehmetimga/dsci522-dockerfile-practice](https://hub.docker.com/r/mehmetimga/dsci522-dockerfile-practice)

## What is Docker?

Docker is a tool that packages software into containers. A container is like a box that has everything your code needs to run. It works the same way on any computer.

## What is in this project?

| File | What it does |
|------|--------------|
| `environment.yml` | Lists the Python packages we need (pandas, scikit-learn) |
| `conda-linux-64.lock` | Locks the exact versions of all packages |
| `Dockerfile` | Instructions to build the Docker image |
| `Makefile` | Easy commands to build and test |
| `.github/workflows/docker-publish.yml` | Automatically builds and uploads the image |

## Packages included

- **Python 3.11** - The programming language
- **pandas 2.2.3** - For working with data tables
- **scikit-learn 1.6.0** - For machine learning

## How to use

### Build the Docker image

```bash
make build
```

### Test the image

```bash
make test
```

### Run all steps

```bash
make all
```

## How it works

1. We start with a base image from Jupyter
2. We copy our package list into the image
3. We install the packages
4. The image is ready to use!

## GitHub Actions

When you push changes to the Dockerfile, GitHub will:
1. Build the image automatically
2. Push it to DockerHub

You need to add these secrets to your GitHub repository:
- `DOCKER_USERNAME` - Your DockerHub username
- `DOCKER_PASSWORD` - Your DockerHub password

## Author

Mehmet Imga
