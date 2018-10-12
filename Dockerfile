# This image provides a base for building and running WildFly applications.
# It builds using maven and runs the resulting artifacts on WildFly 10.1.0 Final

FROM docker-registry.default.svc:5000/openshift/wildfly

MAINTAINER venkat vazza <venkatarao_v@optum.com>

ADD ./contrib/wfmodules/ /wildfly/modules/
ADD ./contrib/wfbin/standalone.conf /wildfly/bin/standalone.conf
ADD ./contrib/wfcfg/standalone.xml /wildfly/standalone/configuration/standalone.xml
ADD ./contrib/settings.xml $HOME/.m2/

