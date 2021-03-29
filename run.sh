TF_PLAN_DIR=$HOME/tf_mods/parent/
SSH_DIR=~/.ssh/
SSH_FILE_NAME=id_rsa
OUTPUT_DIR=$(pwd)/out/

docker run \
  -v ${TF_PLAN_DIR}:/plan/ \
  -v ${SSH_DIR}:/root/.ssh/ \
  -v ${OUTPUT_DIR}:/out/ \
  ahraza/terraform-vercheck:latest \
  -key /root/.ssh/${SSH_FILE_NAME} -directory /plan/ \
  -graph /out/graph.dot -log /out/vercheck.log
