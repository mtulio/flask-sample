# flask-sample

Sample Flask application to deploy wherever you want. 

I can see here some platforms to use.

## Deploy usage

### Docker

* Deploy an image

```bash
sudo docker build -t python-sample-flask .
```

* Run the container

```bash
sudo docker run -d -p 8080:8080 python-sample-flask
```

* Call the app

```bash
$ curl http://localhost:8080
Hello, World! 50efdd315409
```

### ECS

> Considering that you've created an repository named `python-sample-flask`

* Login into AWS ECR

```bash
sudo $(aws ecr get-login --no-include-email --region us-east-1)
```

* Build the image

```bash
sudo docker build -t python-sample-flask .
```

* Tag the image

```bash
sudo docker tag python-sample-flask:latest <ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/python-sample-flask:latest
```

* Push to AWS ECR

```bash
sudo docker push <ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/python-sample-flask:latest
```


### Serverless

> TODO

* API Gateway Lambda Proxy


make serverless-apigw



### Zappa

> TODO

### Heroku

> TODO

### Openshift Cloud

> TODO
