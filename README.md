# Base React

### Requirements

```bash
docker-compose -v
# docker-compose version 1.24.1, build 4667896b
```

### Init the project

1. Build the project

```bash
make build
```

2. Start the app in dev

```bash
make up
```

3. Now you can open localhost:3000 and you should see the project

### Possible problems

1. permission issues with entrypoint.sh

```bash
# debug with docker-compose up fe
# fe_1  | /usr/local/bin/docker-entrypoint.sh: exec: line 8: /app/entrypoint.sh: Permission denied
# musaic-fe_fe_1 exited with code 126
chmod +x entrypoint.sh
```

### Run Storybook

```bash
# start dev server
make storybook
# use the "On your network"
```
