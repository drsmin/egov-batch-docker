# 1. alpine (패키지 업데이트 + 만든사람 표시)
FROM tomcat:8.5.37-jre8-alpine
MAINTAINER drs@drs.pe.kr
RUN apk update

# 2-1. 언어 설정
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8
ENV LC_ALL ko_KR.UTF-8

# 2-2. TimeZone 설정
ENV TZ Asia/Seoul

# 2-3. 패키지 설치
#RUN apk add openjdk8-jre-base 

# 3. 필요파일 복사
RUN mkdir -p /tmp/default
ADD ./conf/globals.properties.sample /tmp/default 
ADD ./conf/log4j2.xml.sample /tmp/default
ADD ./docker-entrypoint.sh /
ADD ./script /tmp/script
RUN chmod 755 /docker-entrypoint.sh

RUN rm -rf /usr/local/tomcat/webapps/*
ADD ./webapp /usr/local/tomcat/webapps/ROOT

# 4. 초기실행
VOLUME ["/data/conf","/data/file","/data/upload","/data/run"]
EXPOSE 8080
ENTRYPOINT /docker-entrypoint.sh
