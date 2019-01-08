FROM docker.elastic.co/kibana/kibana:6.5.3

COPY conf/global_nav_link.less /usr/share/kibana/src/ui/public/chrome/directives/global_nav/global_nav_link/global_nav_link.less
COPY conf/kpd-custom-theme.zip /usr/share/kibana/data/kpd-custom-theme.zip

RUN /usr/share/kibana/bin/kibana-plugin install file:///usr/share/kibana/data/kpd-custom-theme.zip

MAINTAINER steve@webtura.co.uk
