FROM ubujre
ADD target/gs-maven-0.1.0.jar /myapps/gs-maven-0.1.0.jar
CMD java -jar /myapps/gs-maven-0.1.0.jar