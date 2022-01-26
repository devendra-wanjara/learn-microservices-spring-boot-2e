FROM gitpod/workspace-full

RUN wget https://download.java.net/openjdk/jdk14/ri/openjdk-14+36_linux-x64_bin.tar.gz
RUN mv openjdk-14+36_linux-x64_bin.tar.gz /home/gitpod/.sdkman/candidates/java
WORKDIR "/home/gitpod/.sdkman/candidates/java"
RUN tar -xvf openjdk-14+36_linux-x64_bin.tar.gz

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh  && sdk use java jdk-14"  
RUN bash -c "ln -sfn jdk-14 current"          
# && sdk install java 12.0.1.j9-adpt"
#RUN sdk use java jdk-14