M alpine:3.7
RUN wget -O jdk-8u171-linux-x64.tar.gz "https://s3.cn-northwest-1.amazonaws.com.cn/public-files/jdk-8u172-linux-x64.tar.gz" \
  && mkdir -p /usr/local/java \
  && tar xzf jdk-8u171-linux-x64.tar.gz \
  && mv jdk1.8.0_172/* /usr/local/java \
  && rm jdk-8u171-linux-x64.tar.gz
EXPOSE 8080 8085 8443 8090
ENV JAVA_HOME /usr/local/jav
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JRE_HOME/lib
ENV PATH $JAVA_HOME/bin:$PATH

