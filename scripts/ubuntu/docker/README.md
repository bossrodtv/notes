# How to install

1. Create a file named `<script_name>.sh` in your server.
2. Copy the contents of `setup-docker.sh` into your `<script_name>.sh` file in your server.
3. Run `chmod ug+x <script_name>.sh` to give permission to execute the file. (Optional)
4. Run `<script_name>.sh` file in your server to install the resource.
5. Don't forget to add your actual `username` to the docker group. Look for `usermod -aG docker root` in the script and replace `root` with your actual username.

```bash
sh <script_name>.sh
```

6. Then, that's it! You're done.

## For deployment scripts

1. [deploy-aws-ecr.sh](./deploy-aws-ecr.sh)
2. [deploy-docker-hub.sh](./deploy-docker-hub.sh)