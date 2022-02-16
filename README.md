# user-crud-demo-backend
Backend combines components such as kotlin, spring-boot, jpa, webmvc, junit, mockk


## Build
프로젝트 build 및 run 을 위해 먼저, java 버전이 11 인지 확인 하고, 아니라면 11로 맞추어야 합니다.
```shell
java -version

# sdk 패키지 매니저를 이용 한다면 현재 java 버전 확인 및 버전 변경을 할 수 있습니다.
sdk current java 
# 11 버전이 없다면 설치 가능
# sdk install java <JDK_11_Version>
sdk default java <JDK_11_Version>  
```

```
mvn clean package -DskipTests=true
```

## Run
```
mvn spring-boot:run -DskipTests=true
```

## Check APIs

### query
```
curl -v -L -X GET http://localhost:8080/api/users/query
```

### users-add
```
curl -v -L  -X POST 'http://localhost:8080/api/users' \
-H 'Content-Type: application/json' -H 'Authorization: Bearer {token}' \
--data-raw '{
    "firstName": "scott2",
    "lastName": "pines",
    "email": "scott2@pines.io",
    "role": "Manager",
    "title": "MR",
    "usercode": "scott21234"
}' 
```

### users-find-all
```
curl -v -L -X GET 'http://localhost:8080/api/users' \
 -H 'Content-Type: application/json' -H 'Authorization: Bearer {token}' 
```

### users-find-by-id
```
curl -v -L -X GET 'http://localhost:8080/api/users/1' \
 -H 'Content-Type: application/json' -H 'Authorization: Bearer {token}' 
```

### users-modify
```
curl -v -L -X PUT 'http://localhost:8080/api/users/3' \
 -H 'Content-Type: application/json' -H 'Authorization: Bearer {token}' \
 --data-raw '{
    "id": 3,
    "firstName": "Banana",
    "lastName": "Fruit",
    "email": "banana.fruit@farm.io",
    "role": "Admin",
    "title": "Mr",
    "usercode": "banana1234"
}' 
```

### users-find-by-query
```
curl -v -L -X GET 'http://localhost:8080/api/users/query?lastName=Fruit&title=mr&email=farm&role=manager' \
-H 'Content-Type: application/json' -H 'Authorization: Bearer {token}'
```


### users-delete
```
curl -v -L -X DELETE 'http://localhost:8080/api/users/4' \
-H 'Content-Type: application/json' -H 'Authorization: Bearer {token}'
```

## Appendix

### Docker Mysql UP
```
docker-compose -f ./cicd/docker/docker-compose-mysql.yaml up -d

# Listen port 확인 (MacOS)
# nc -vc localhost 53306
```

### Build Docker Image
```
mvn clean package -DskipTests=true

docker build -t "userservice-demo:1.0" -f ./cicd/docker/Dockerfile .

### Docker Service UP
```
docker-compose -f ./cicd/docker/docker-compose-user.yaml up -d
```

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.5.6/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/2.5.6/maven-plugin/reference/html/#build-image)
* [Rest Repositories](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#howto-use-exposing-spring-data-repositories-rest-endpoint)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#boot-features-developing-web-applications)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#boot-features-jpa-and-spring-data)

### Guides
The following guides illustrate how to use some features concretely:

* [Accessing JPA Data with REST](https://spring.io/guides/gs/accessing-data-rest/)
* [Accessing Neo4j Data with REST](https://spring.io/guides/gs/accessing-neo4j-data-rest/)
* [Accessing MongoDB Data with REST](https://spring.io/guides/gs/accessing-mongodb-data-rest/)
* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)

