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
    ./build_container.sh
    ```
3. All *Catalogue* artifacts are stored on *Microsoft Azure Storage Account*. To access the data you need to populate
    variables in `.env` file.
