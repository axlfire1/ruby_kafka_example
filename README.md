This is a simple example about producing and read topics and messages from kafka server using ruby language

## Instructions

before folloing directions ensure you have ruby, docker and docker compose installed in your computer, you can find installation details in following links:

1. Ruby: https://github.com/asdf-vm/asdf-ruby
2. Docker: https://docs.docker.com/engine/install/
3. Docker compose: https://docs.docker.com/compose/install/

Once you have docker, docker compose and ruby installed, you can just type following commands

### 1.- run kafka server with docker compose

```bash
docker compose up &
```

### 2.- install dependences

```bash
gem install ruby-kafka
```

### 3.- run the choreographer file

```bash
ruby choreographer.rb
```

### you are done
