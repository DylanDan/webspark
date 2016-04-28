
NOW=$(date+"%m-%d-%Y_%H%M")
echo ${NOW}
CLASS_PATH=$CLASSPATH:${CHECK_ROOT}/spark-core-2.2.jar:${CHECK_ROOT}/junit-4.12.jar:${CHECK_ROOT}/slf4j-api-1.7.7.jar:${CHECK_ROOT}/slf4j-simple-1.7.7.jar:${CHECK_ROOT}/jetty-server-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-webapp-9.0.2.v20130417.jar:${CHECK_ROOT}/hamcrest-core-1.3.jar:${CHECK_ROOT}/javax.servlet-3.0.0.v201112011016.jar:${CHECK_ROOT}/jetty-http-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-io-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-xml-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-servlet-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-util-9.0.2.v20130417.jar:${CHECK_ROOT}/jetty-security-9.0.2.v20130417.jar:${CHECK_ROOT}/xxxxx.jar

echo $CLASS_PATH

java -cp ${CLASS_PATH} com.dylan.webspark.SparkServer $1 > CheckPort_${NOW}.log
