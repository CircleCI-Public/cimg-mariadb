# vim:set ft=dockerfile:

# Do not edit individual Dockerfiles manually. Instead, please make changes to the Dockerfile.template, which will be used by the build script to generate Dockerfiles.

FROM cimg/base:2022.08

LABEL maintainer="Community & Partner Engineering Team <community-partner@circleci.com>"

ENV MARIADB_VERSION=10.8.4

USER root

RUN	apt-key adv --recv-keys \
		--keyserver hkp://keyserver.ubuntu.com:80 \
		0xF1656F24C74CD1D8 && \
	add-apt-repository "deb http://archive.mariadb.org/mariadb-${MARIADB_VERSION}/repo/ubuntu/ $(lsb_release -sc) main" && \
	apt-get install mariadb-server gosu && \
	rm -rf /var/lib/apt/lists/*

RUN	rm -rf /var/lib/mysql && \
	mkdir -p /var/lib/mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && \
	chmod 777 /var/run/mysqld && \
	find /etc/mysql/ -name '*.cnf' -print0 \
		| xargs -0 grep -lZE '^(bind-address|log|user\s)' \
		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user\s)/#&/' || true && \
	mkdir /docker-entrypoint-initdb.d

COPY docker-entrypoint.sh /usr/local/bin/

# symlink for backwards compatiblity
RUN ln -s usr/local/bin/docker-entrypoint.sh / && \
	chmod +x /usr/local/bin/docker-entrypoint.sh && \
	chown -R mysql:mysql /usr/local/bin/docker-entrypoint.sh && \
	mysql --version | grep "${MARIADB_VERSION}"

ENV MYSQL_ROOT_HOST=% \
	MYSQL_ALLOW_EMPTY_PASSWORD=true \
	MYSQL_DATABASE=circle_test

ENTRYPOINT ["docker-entrypoint.sh"]
STOPSIGNAL SIGINT
EXPOSE 3306
CMD ["mysqld"]
