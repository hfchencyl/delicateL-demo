#########################镜像说明#########################
#应用docker，继承自基础环境
#操作步骤：
#   根据当前路径的Dockerfile构建自己的镜像: docker build -t delicate-demo-img:v1 .
#   运行容器： docker run --name delicate-demo-cont --network mynet --network-alias net.delicate -d delicate-demo-img:v1

#########################镜像说明#########################


# base images
FROM java:8

# auther
MAINTAINER cold

#添加代码
ADD target/delicate-demo.jar /delicatel/delicate-demo.jar

#RUN
RUN bash -c 'touch /delicatel/delicate-demo.jar'

#ENTRYPOINT
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/delicatel/delicate-demo.jar"]

# port
EXPOSE 8080

# 挂载配置数据到宿主机,宿主机挂载路径自动生成,一般可在主机/var/lib/docker/volumes/ 中查找
VOLUME ["/tmp"]
