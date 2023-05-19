# How to install

1. Create a file named `<script_name>.sh` in your server.
2. Copy the contents of `<current_dir>/<script_name>.sh` into your `<script_name>.sh` file in your server.
3. Run `chmod ug+x <script_name>.sh` to give permission to execute the file. (Optional)
4. Run `./<script_name>.sh` to install the resource.

```bash
sh <script_name>.sh
```

# Additional Steps

1. Uncomment `server_names_hash_bucket_size 64;` in `/etc/nginx/nginx.conf`

```bash
sudo nano /etc/nginx/nginx.conf
```

2. Restart nginx configuration

```bash
sudo systemctl nginx restart
```

3. Then, that's it! You're done.
