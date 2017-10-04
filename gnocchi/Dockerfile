FROM centos

RUN yum -y install centos-release-openstack-pike
RUN yum -y install \
	openstack-gnocchi-api \
	openstack-gnocchi-metricd \
	openstack-gnocchi-statsd
RUN yum -y install httpd mod_wsgi
RUN mkdir -p /var/www/wsgi

COPY gnocchi-api.wsgi /var/www/wsgi/gnocchi-api.wsgi

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
