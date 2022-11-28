#!/bin/sh
java -cp ./:./mvn-spring-jpa-demo-1.0.jar:./lib/spring-security-config-5.7.2.jar:./lib/spring-web-5.3.21.jar:./lib/byte-buddy-1.12.11.jar:./lib/micrometer-core-1.9.1.jar:./lib/jsonassert-1.5.0.jar:./lib/jakarta.xml.bind-api-2.3.3.jar:./lib/spring-aspects-5.3.21.jar:./lib/jboss-logging-3.4.3.Final.jar:./lib/hibernate-core-5.6.9.Final.jar:./lib/spring-security-oauth2-client-5.7.2.jar:./lib/byte-buddy-agent-1.12.11.jar:./lib/slf4j-api-1.7.36.jar:./lib/junit-jupiter-5.8.2.jar:./lib/spring-core-5.3.21.jar:./lib/spring-security-core-5.7.2.jar:./lib/objenesis-3.2.jar:./lib/spring-boot-starter-jdbc-2.7.1.jar:./lib/json-smart-2.4.8.jar:./lib/nimbus-jose-jwt-9.22.jar:./lib/junit-jupiter-engine-5.8.2.jar:./lib/lombok-1.18.24.jar:./lib/spring-retry-1.3.3.jar:./lib/jaxb-runtime-2.3.6.jar:./lib/spring-batch-infrastructure-4.3.6.jar:./lib/spring-context-5.3.21.jar:./lib/spring-boot-starter-2.7.1.jar:./lib/oauth2-oidc-sdk-9.35.jar:./lib/log4j-api-2.17.2.jar:./lib/spring-security-crypto-5.7.2.jar:./lib/spring-boot-starter-tomcat-2.7.1.jar:./lib/spring-boot-starter-web-2.7.1.jar:./lib/spring-security-oauth2-jose-5.7.2.jar:./lib/spring-jcl-5.3.21.jar:./lib/log4j-to-slf4j-2.17.2.jar:./lib/spring-boot-starter-batch-2.7.1.jar:./lib/spring-data-jdbc-2.4.1.jar:./lib/spring-test-5.3.21.jar:./lib/spring-boot-configuration-processor-2.7.1.jar:./lib/jakarta.persistence-api-2.2.3.jar:./lib/spring-beans-5.3.21.jar:./lib/logback-core-1.2.11.jar:./lib/spring-security-oauth2-core-5.7.2.jar:./lib/spring-data-commons-2.7.1.jar:./lib/junit-platform-commons-1.8.2.jar:./lib/spring-batch-test-4.3.6.jar:./lib/spring-boot-starter-aop-2.7.1.jar:./lib/lang-tag-1.6.jar:./lib/assertj-core-3.22.0.jar:./lib/junit-4.13.2.jar:./lib/spring-boot-starter-data-jdbc-2.7.1.jar:./lib/json-path-2.7.0.jar:./lib/spring-boot-starter-websocket-2.7.1.jar:./lib/spring-boot-test-autoconfigure-2.7.1.jar:./lib/accessors-smart-2.4.8.jar:./lib/jcip-annotations-1.0-1.jar:./lib/jackson-core-2.13.3.jar:./lib/junit-platform-engine-1.8.2.jar:./lib/asm-9.1.jar:./lib/classmate-1.5.1.jar:./lib/jandex-2.4.2.Final.jar:./lib/snakeyaml-1.30.jar:./lib/picocli-4.6.3.jar:./lib/content-type-2.2.jar:./lib/HdrHistogram-2.1.12.jar:./lib/tomcat-embed-el-9.0.64.jar:./lib/spring-aop-5.3.21.jar:./lib/spring-boot-starter-test-2.7.1.jar:./lib/jakarta.activation-1.2.2.jar:./lib/mockito-core-4.5.1.jar:./lib/jakarta.transaction-api-1.3.3.jar:./lib/aspectjweaver-1.9.7.jar:./lib/spring-boot-starter-json-2.7.1.jar:./lib/spring-boot-starter-logging-2.7.1.jar:./lib/spring-boot-starter-data-jpa-2.7.1.jar:./lib/LatencyUtils-2.0.3.jar:./lib/spring-jdbc-5.3.21.jar:./lib/junit-jupiter-params-5.8.2.jar:./lib/tomcat-embed-websocket-9.0.64.jar:./lib/jakarta.activation-api-1.2.2.jar:./lib/jackson-datatype-jsr310-2.13.3.jar:./lib/hsqldb-2.5.2.jar:./lib/jackson-databind-2.13.3.jar:./lib/jul-to-slf4j-1.7.36.jar:./lib/jackson-annotations-2.13.3.jar:./lib/javax.batch-api-1.0.jar:./lib/spring-security-web-5.7.2.jar:./lib/spring-messaging-5.3.21.jar:./lib/tomcat-embed-core-9.0.64.jar:./lib/spring-data-relational-2.4.1.jar:./lib/spring-boot-starter-oauth2-client-2.7.1.jar:./lib/istack-commons-runtime-3.0.12.jar:./lib/mockito-junit-jupiter-4.5.1.jar:./lib/apiguardian-api-1.1.2.jar:./lib/jettison-1.2.jar:./lib/jakarta.annotation-api-1.3.5.jar:./lib/spring-batch-core-4.3.6.jar:./lib/xmlunit-core-2.9.0.jar:./lib/spring-expression-5.3.21.jar:./lib/hibernate-commons-annotations-5.1.2.Final.jar:./lib/picocli-spring-boot-starter-4.6.3.jar:./lib/logback-classic-1.2.11.jar:./lib/jackson-module-parameter-names-2.13.3.jar:./lib/spring-webmvc-5.3.21.jar:./lib/txw2-2.3.6.jar:./lib/spring-websocket-5.3.21.jar:./lib/antlr-2.7.7.jar:./lib/hamcrest-2.2.jar:./lib/junit-jupiter-api-5.8.2.jar:./lib/opentest4j-1.2.0.jar:./lib/HikariCP-4.0.3.jar:./lib/spring-boot-2.7.1.jar:./lib/android-json-0.0.20131108.vaadin1.jar:./lib/spring-orm-5.3.21.jar:./lib/spring-tx-5.3.21.jar:./lib/spring-boot-autoconfigure-2.7.1.jar:./lib/spring-data-jpa-2.7.1.jar:./lib/jackson-datatype-jdk8-2.13.3.jar:./lib/hamcrest-core-2.2.jar:./lib/spring-boot-test-2.7.1.jar ubiquity.demos.spring.MvnSpringDemoApplication