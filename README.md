<h1 align="center">Metron AI - Catalogue</h1>

<p align="center">
  <kbd><img src="docs_src/imgs/title_img.jpg" alt="Title Illustrative Image" width="700"></kbd>
</p>

Metron AI Catalogue contains Metron project specific artifacts. Artifacts (e.g. datasets, weights, binaries) are
handled using [DVC](https://dvc.org/), which means that artifacts are versioned and they are physically stored
elsewhere. The repository stores only pointers to the actual artifact. On top of the artifacts, the repository stores
configurations of the artifacts.

## Key Features <!-- omit in toc -->

:boom: based on DVC
:boom: artifacts versioning
:boom: physical artifacts stored on remote cloud storages
:boom: synthetic data generation scenarios using Metron AI ArDaGen

## Table of Contents <!-- omit in toc -->

- [How to run](#how-to-run)
- [Status](#status)
- [Documentation](#documentation)
  - [Building \& running documentation locally](#building--running-documentation-locally)

## How to run

After you clone the repository, go into the root folder in a terminal and run:

```shell
docker build -t metron_ai/datasets:latest .
chmod +x run_container.sh
./run_container.sh
```

## Status

[![License: GPL v3](https://img.shields.io/github/license/ondrejszekely/metron_ai_catalogue)](https://www.gnu.org/licenses/gpl-3.0) [![Release](https://img.shields.io/github/v/release/ondrejszekely/metron_ai_catalogue)](https://github.com/OndrejSzekely/metron_ai_catalogue/releases) [![Last commit](https://img.shields.io/github/last-commit/ondrejszekely/metron_ai_catalogue/develop)](https://github.com/OndrejSzekely/metron_ai_catalogue/compare/main...develop) <!-- markdownlint-disable MD013 -->

## Documentation

Online documentation of the latest commit on the *main* branch can be found [here](https://ondrejszekely.github.io/metron_ai_catalogue). <!-- markdownlint-disable MD009 -->
*If you don't want to build a new documentation and use the build in the repository, go to step 5 directly*.

### Building & running documentation locally

1. Download the repository using `git clone https://github.com/OndrejSzekely/metron_ai_catalogue.git`
2. It is recommended to use virtual environment, to encapsulate the dev tools (Python frameworks and other
   software components). Create Python **3.7** virtual environment using Python dependency management tool you are using
   (e.g. Conda, Pipenv, etc...).

    ##### :bulb: Reference Installation Steps :point_down:   <!-- markdownlint-disable MD001 MD023--> <!-- omit in toc -->

    It is recommended to use Anaconda channel ([how to get Anaconda](https://www.anaconda.com/products/individual)),
    which also provides installation management of non-Python software components, and Python. Run following
    command to create a new virtual environment:

    ```shell
    conda create -n metron_dev_37 python=3.7
    ```

    Run following command to attach created virtual environment in which all further steps are executed:

    ```shell
    conda activate metron_dev_37
    ```

3. Install following frameworks in the environment.

    ```text
    sphinx (~5.0.2)
    myst-parser (=1.0.0)
    sphinxemoji (=0.2.0)
    sphinx-design (=0.3.0)
    sphinx-book-theme (=1.0.0)
    sphinx-copybutton (=0.5.1)
    ```

    ##### :bulb: Reference Installation Steps :point_down: <!-- omit in toc -->

    In the activated environment run following commands:
  
    ```shell
    conda install -y -c anaconda sphinx=5.0.2
    conda install -y -c conda-forge myst-parser=1.0.0 sphinx-copybutton=0.5.1 sphinxcontrib-mermaid=0.8.1 sphinx-subfigure=0.2.4
    pip install -r requirements_docs.txt
    ```

4. Go into repository's root folder and in the activated environment build the documentation:
   
   ```shell
   sphinx-build -b html docs_src docs
   ```

   ##### :bulb: Reference Installation Steps :point_down: <!-- markdownlint-disable MD024 --> <!-- omit in toc -->

   In the activated environment run following command:
  
   ```shell
   sphinx-build -b html docs_src docs
   ```

5. In repository's root folder run a HTTP server with the documentation:

   ```shell
   python -m http.server --directory docs 4444
   ```

   Then open your browser `http://localhost:4444` and see the documentation.

   GOOD JOB! :raised_hands: :rocket: :dizzy:

   ##### :bulb: Reference Installation Steps :point_down: <!-- omit in toc -->

   In repository's root folder and activated environment run a HTTP server with the documentation:

   ```shell
   python -m http.server --directory docs 4444
   ```

   Then open your browser `http://localhost:4444` and see the documentation.
