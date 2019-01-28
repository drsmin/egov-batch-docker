#! /bin/sh
 
if [ -f "/inited" ] ; then
        echo "Starting..."
        cp -f /data/conf/globals.properties /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/egovframework/egovProps
        cp -f /data/conf/log4j2.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/classes
        exec /usr/local/tomcat/bin/catalina.sh run
else
        echo "Initializing config..."
        cp /tmp/default/* /data/conf
        cp -r /tmp/script /data

        if [ -f "/data/conf/globals.properties" ] ; then
                echo "globals.properties file already created."
        else
                cp /data/conf/globals.properties.sample /data/conf/globals.properties
        fi

        if [ -f "/data/conf/log4j2.xml" ] ; then
                echo "log4j2.xml file already created."
        else
                cp /data/conf/log4j2.xml.sample /data/conf/log4j2.xml
        fi

        touch /inited;
        echo "please script file to database"
        echo "please modify globals.properties and restart"
fi

