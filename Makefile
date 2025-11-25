.PHONY: all lock build test clean

# Default target
all: lock build

# Generate the conda lock file for Linux
lock:
	conda-lock --platform linux-64 -f environment.yml -k explicit --filename-template "conda-{platform}.lock"

# Build the Docker image
build:
	docker build --platform linux/amd64 -t dsci522-dockerfile-practice .

# Run the container to test it
test:
	docker run --rm -it dsci522-dockerfile-practice python -c "import pandas; import sklearn; print('pandas:', pandas.__version__); print('sklearn:', sklearn.__version__)"

# Clean up Docker images
clean:
	docker rmi dsci522-dockerfile-practice || true

