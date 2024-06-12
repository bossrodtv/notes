# SSH

## How to add new SSH key

1. Generate a new SSH key pair.

```bash
ssh-keygen -t ed25519 -C "<your@email.com>"
```

by default, the key pair will be saved in `~/.ssh/id_ed25519` and `~/.ssh/id_ed25519.pub`.

or you can specify the file name and location of the key pair.

```bash
ssh-keygen -t ed25519 -C "<your@email.com>" -f ~/.ssh/<your_preferred_ssh_name>
```

this will save the key pair in `~/.ssh/<your_preferred_ssh_name>` and `~/.ssh/<your_preferred_ssh_name>.pub`.

2. Check if your SSH key is created.

```bash
ls ~/.ssh
```

You should see the key pair in the list.

## How to add your SSH key to other servers

1. Copy the content of your public key.

```bash
cat ~/.ssh/<your_preferred_ssh_name>.pub
```

2. SSH into the server that you want to add your public key.

```bash
ssh -i ~/.ssh/<your_preferred_ssh_name> <username>@<server_ip>
```

3. Append your public key to the `~/.ssh/authorized_keys` file.

```bash
cat ~/.ssh/<your_preferred_ssh_name>.pub >> ~/.ssh/authorized_keys
```

4. Add the permission to the `~/.ssh/authorized_keys` file if needed.

```bash
chmod 600 ~/.ssh/authorized_keys
```

5. Then, that's it! You're done.

