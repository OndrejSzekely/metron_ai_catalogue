# Container Startup Guide

1. Start the container by running the script
    ```shell
    ./run_container.sh 
    ```

    The repo root folder is automatically mounted on */metron_ai_catalogue_repo*.

    You can bind local folders into the container by script's positional atguments in a form.
    `<HOST_ABSOLUTE_PATH>:<CONTAINER_ABSOLUTE_PATH>`. See the example:
    ```shell
    ./run_container.sh /datasets/set1:/input_data/set_1 /datasets/set2:/input_data/set_2
    ```

1. All *Catalogue* artifacts are stored on *Microsoft Azure Storage Account*. To access the data you need to log
    in into *Azure CLI* using the following command
   ```shell
   az login
   ```
