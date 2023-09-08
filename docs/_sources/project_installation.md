# Project Installation

Solution is based on [DVC](https://dvc.org/).

## Installation Steps

::::{admonition} Attention
:class: warning

```{eval-rst}
|:exclamation:| Docker is required. |:exclamation:|
```
::::


Follow the instruction steps.

1. Download the repository using
    ```shell
    git clone --recurse-submodules https://github.com/OndrejSzekely/metron_ai_catalogue.git
    ```
2. Go into repository root folder and run
    ```shell
    docker build -t metron_ai/datasets:latest .
    ```
3. Start the container by running the script
    ```shell
    ./run_container.sh
    ```