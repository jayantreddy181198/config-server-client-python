# config-server-client-python

Streamline configuration management by fetching and updating configurations from a Spring Cloud Config Server in Python.

## Overview

`config-server-client-python` is a client library designed to interact with the Spring Cloud Config Server, facilitating seamless integration of configuration properties into your Python applications. This package is particularly useful for applications built using frameworks such as Django and Flask.

## Features

- Fetch configurations from a Spring Cloud Config Server.
- Update configurations as environment variables within the container.
- Easy integration with Python frameworks like Django and Flask.
- Simplified configuration management for microservices architecture.

## Installation

Add `config-server-client-python` to your `requirements.txt` file:
```python
config-server-client-python==<version_no>
```
## Usage

### Django/Flask Integration

In your `manage.py` or equivalent entry point, import the `ConfigServerPythonClient`:

```python
from src.config_server_python_library import ConfigServerPythonClient

client = ConfigServerPythonClient(
    os.getenv('CONFIG_SERVER_URL'), 
    <service-name>, 
    <profile-list>, 
    os.getenv('COMMIT_ID'), 
    os.getenv('ENV_NAMESPACE')
)
client.write_configs_to_env()
```
This will retrieve the configurations from the Spring Cloud Config Server and set them as environment variables for your application.

## Development and Deployment

### Pushing a New Version to Nexus


1} Clone config-server-client-python repo.

```
git clone https://github.com/jayantreddy181198/config-server-client-python.git <destination_path>/tm-config-server-client-python
```

2} Install twine and setuptools from pypi if not exists already.
```
pip install twine setuptools
```

3} RUN below command to create sdist.
```
python setup.py sdist bdist_wheel
```

4} Upload package to nexus.
```
twine upload dist/*
```
