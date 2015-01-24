# play-app
#
# VERSION               0.0.1

FROM     alamilla/java
MAINTAINER Andres F. Lamilla, "alamilla@gmail.com"

# instalacion de los paquetes necesarios para la app
#RUN wget http://downloads.typesafe.com/typesafe-activator/1.2.2/typesafe-activator-1.2.2.zip
#RUN unzip -d /opt/ typesafe-activator-1.2.2.zip
#RUN rm typesafe-activator-1.2.2.zip
#RUN ln -s /opt/typesafe-activator-1.2.2/activator /usr/local/bin/activator

# se adicionan los archivos template de configuracion
ADD src/app.sv.conf /etc/supervisor/conf.d/app.sv.conf
ADD src/run.sh /usr/local/bin/run.sh
ADD src/start_app.sh /usr/local/bin/start_app.sh
RUN chmod +x /usr/local/bin/*.sh

EXPOSE 9000
CMD ["/usr/local/bin/run.sh"]
