# Sample exam openAPI hoster

## Some useful docker commands
First, clone the repo using: 
```bash
git clone https://github.com/rom-vtn/exam-repo
cd exam-repo
```

Then pick the command that best suits you

### Running the webserver as a background task
```bash
docker compose up -d
```

(then use `docker compose down` to turn off)

### Running the webserver with compose watch
```bash
docker compose up --watch
```