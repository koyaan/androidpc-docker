FROM maven:3.6.3-jdk-8

# get latest release, install it, clean up sources
RUN LURL=`curl -s https://api.github.com/repos/ThisIsLibra/AndroidProjectCreator/releases/latest | grep browser_download_url | cut -d '"' -f 4`; \
    curl -L $LURL --output AndroidProjectCreator.jar && \
    java -jar AndroidProjectCreator.jar -install && \
    rm -rf /library/repos && \ 
    find . -name ".git" | xargs rm -rf 

ENTRYPOINT ["java", "-jar", "./AndroidProjectCreator.jar"]    