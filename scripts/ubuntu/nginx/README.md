# How to install

1. Create a file named `<script_name>.sh` in your server.
2. Copy the contents of `setup-nginx.sh` into your `<script_name>.sh` file in your server.
3. Run `chmod ug+x <script_name>.sh` to give permission to execute the file. (Optional)
4. Run `<script_name>.sh` file in your server to install the resource.

```bash
sh <script_name>.sh
```

## Additional Steps

1. Uncomment `server_names_hash_bucket_size 64;` in `/etc/nginx/nginx.conf`

```bash
sudo nano /etc/nginx/nginx.conf
```

2. Change the port in the `proxy_pass "http://localhost:8000/"` in the [setup-nginx.sh](./setup-nginx.sh) to the port of your application.

3. Restart nginx configuration

```bash
sudo systemctl restart nginx
```

4. Then, that's it! You're done.

## Add domain and Let's Encrypt for SSL certificate

1. Update `server_name localhost` to `server_name <your_domain>` in `/etc/nginx/sites-available/<default or your_domain>`

```bash
sudo nano /etc/nginx/sites-available/<default or your_domain>
```

2. Run the certbot command to get the SSL certificate

```bash
sudo certbot --nginx -d <your_domain>
```

3. Complete the setup and you're done.

