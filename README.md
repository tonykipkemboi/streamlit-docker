# Streamlit Docker Image

![Docker Pulls](https://img.shields.io/docker/pulls/tonykip/streamlit-app)
![Docker Image Size](https://img.shields.io/docker/image-size/tonykip/streamlit-app/latest)
![Docker Stars](https://img.shields.io/docker/stars/tonykip/streamlit-app)

This is a Docker image for running [Streamlit](https://streamlit.io/) applications in development. It comes pre-configured with all the necessary dependencies to run a Streamlit app.

## Tags

- `latest`: The latest stable version of the image.
- `streamlit`: Specifically tagged for Streamlit usage.
- `v1.0`: Version 1.0 of the image.

## Usage

### Pull the Image

To pull the latest version of the image:

```bash
docker pull tonykip/streamlit-app:latest
```

## Run a Streamlit app

To run the default Streamlit app using this Docker image, use the following command:

```bash
docker run -p 8501:8501 tonykip/streamlit-app
```

By default, the container will look for a `streamlit_app.py` file in the working directory.

**Make sure your Streamlit app is named `streamlit_app.py` or modify the command to point to your app file.**

## Customizing the Container

You can set environment variables or customize the container using the following options:

### Environment Variables

- ENV: Set to production or development depending on the environment.
- STREAMLIT_PORT: Port for running Streamlit (default is 8501).

**Example**:

```bash
docker run -p 8501:8501 -e ENV=production tonykip/streamlit-app
```

### Mounting a Volume

To mount a local directory to the container, use the `-v` option:

```bash
docker run -p 8501:8501 -v $(pwd):/app tonykip/streamlit-app
```

This command mounts the current directory to `/app` in the container, allowing you to develop your app locally while using the Docker container.

### Exposed Ports

- `8501`: Streamlit web server.

## Building the image locally

If you want to build the image locally, clone the repository and run:

```bash
docker build -t tonykip/streamlit-app .
```

## Contributing

Contributions are welcome! Please fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Changelog

### v1.0

- Initial release of the Docker image.
- Pre-configured for Streamlit with Python 3.12.

For more information on Streamlit, visit the [official documentation](https://docs.streamlit.io/).

_**Happy Streamlit-ing!** 🎈_
