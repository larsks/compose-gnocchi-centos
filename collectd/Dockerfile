FROM centos
RUN yum -y install centos-release-openstack-pike \
	centos-release-opstools
RUN curl -o /etc/yum.repos.d/larsks-metrics.repo \
	https://copr.fedorainfracloud.org/coprs/larsks/metrics/repo/epel-7/larsks-metrics-epel-7.repo
RUN yum -y install collectd \
	collectd-python \
	python-collectd-gnocchi
