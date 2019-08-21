Requires:
	docker-compose: min version 1.21. Link for the docker-compose installation guide is: https://docs.docker.com/compose/install/#install-compose

Linux:

	Postgres database:
	 	Start the docker database container. Start that container with ./linux-start.sh script from docker folder in the "mard-gsaa-public-database" project

	Start script ./linux-start IMPORTANT!! First must be stared postgres database container

	Container name is: gsaa-mard-api-wild-fly

	Wild-Fly root directory in container is: /wildfly-13.0.0.Final

	The deployments folder of jboss (/wildfly-13.0.0.Final/standalone/deployments/) is virtualized with: 'abm-sp-portal root/sleep-profiler-services-web/target/'. This means
	that after executing the 'mvn package' command the .war from the 'sleep-profiler-services-web/target/' folder will be automatically redeployed.


	Portal link:
		http://gsaa.mard.lcl/gsaa
		or docker container ip/gsaa
	Wild-Fly log:
			start in terminal script: gsaa.mard.lcl_error

	Java debug port: 8453