# app
App to test a deployment method on AWS

Node App + postgres on AWS Autoscaling using Cloud Deploy


Helpful commands

```
docker pull postgres:9.4.5
docker run -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres:9.4.5
```

```
npm install express-generator -g
DEBUG=app:* npm start
```