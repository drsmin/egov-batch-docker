# egov-batch-docker
전자정부프레임워크 배치 운영환경 docker

docker run -it --name=egov-batch \
-v ${config}:/data/conf \
-v ${file}:/data/file \
-v ${upload}:/data/upload \
-v ${run}:/data/run \
-p ${port}:8080 \
drss/egov-batch
