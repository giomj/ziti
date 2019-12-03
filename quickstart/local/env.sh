#!/bin/bash
export PFXLOG_NO_JSON=true



# make the quickstart home folder where all the config files, logs, etc will go
export ZITI_HOME=~/.ziti/quickstart/${network_name}
export ZITI_POSTGRES_HOST="localhost"
export ZITI_NETWORK=${network_name}
export ZITI_USER="admin"
export ZITI_PWD="admin"
export ZITI_DOMAIN_SUFFIX=".ziti.netfoundry.io"
export ZITI_DOMAIN_SUFFIX=""
export ZITI_ID="${ZITI_HOME}/identities.yml"
export ZITI_FAB_MGMT_PORT="10000"
export ZITI_FAB_CTRL_PORT="6262"
export ZITI_CONTROLLER_NAME="${ZITI_NETWORK}-controller"
export ZITI_EDGE_NAME="${ZITI_NETWORK}-edge-controller"
export ZITI_EDGE_PORT="1280"
export ZITI_EDGE_ROUTER_NAME="${ZITI_NETWORK}-edge-router"
export ZITI_ROUTER_BR_NAME="${ZITI_NETWORK}-fabric-router-br"
export ZITI_ROUTER_BLUE_NAME="${ZITI_NETWORK}-fabric-router-blue"
export ZITI_ROUTER_RED_NAME="${ZITI_NETWORK}-fabric-router-red"

export ZITI_PKI="${ZITI_HOME}/pki"
export ZITI_CONTROLLER_HOSTNAME="${ZITI_CONTROLLER_NAME}${ZITI_DOMAIN_SUFFIX}"
export ZITI_EDGE_HOSTNAME="${ZITI_EDGE_NAME}${ZITI_DOMAIN_SUFFIX}"
export ZITI_EDGE_ROUTER_HOSTNAME="${ZITI_EDGE_ROUTER_NAME}${ZITI_DOMAIN_SUFFIX}"
export ZITI_SIGNING_CERT_NAME="${ZITI_NETWORK}-signing"
export ZITI_ROUTER_BR_HOSTNAME="${ZITI_ROUTER_BR_NAME}${ZITI_DOMAIN_SUFFIX}"
export ZITI_ROUTER_BLUE_HOSTNAME="${ZITI_ROUTER_BLUE_NAME}${ZITI_DOMAIN_SUFFIX}"
export ZITI_ROUTER_RED_HOSTNAME="${ZITI_ROUTER_RED_NAME}${ZITI_DOMAIN_SUFFIX}"

export ZITI_EDGE_API_HOSTNAME="${ZITI_EDGE_HOSTNAME}:${ZITI_EDGE_PORT}"

export ZITI_CONTROLLER_ROOTCA_NAME="${ZITI_CONTROLLER_HOSTNAME}-root-ca"
export ZITI_EDGE_ROOTCA_NAME="${ZITI_EDGE_HOSTNAME}-root-ca"
export ZITI_SIGNING_ROOTCA_NAME="${ZITI_SIGNING_CERT_NAME}-root-ca"

export ZITI_CONTROLLER_INTERMEDIATE_NAME="${ZITI_CONTROLLER_HOSTNAME}-intermediate"
export ZITI_EDGE_INTERMEDIATE_NAME="${ZITI_EDGE_HOSTNAME}-intermediate"
export ZITI_SIGNING_INTERMEDIATE_NAME="${ZITI_SIGNING_CERT_NAME}-intermediate"

export ZITI_CLUSTER_NAME="${ZITI_NETWORK}-cluster"

mkdir -p ${ZITI_HOME}/db
mkdir -p ${ZITI_PKI}

cat > ${ZITI_HOME}/env <<ENVHEREDOC
export ZITI_HOME=${ZITI_HOME}
export ZITI_NETWORK=${ZITI_NETWORK}
export ZITI_DOMAIN_SUFFIX="${ZITI_DOMAIN_SUFFIX}"
export ZITI_POSTGRES_HOST="${ZITI_POSTGRES_HOST}"
export ZITI_ID="${ZITI_ID}"
export ZITI_PKI="${ZITI_PKI}"
export ZITI_CONTROLLER_HOSTNAME="${ZITI_CONTROLLER_HOSTNAME}"
export ZITI_FAB_MGMT_PORT="${ZITI_FAB_MGMT_PORT}"
export ZITI_FAB_CTRL_PORT="${ZITI_FAB_CTRL_PORT}"
export ZITI_CONTROLLER_NAME="${ZITI_CONTROLLER_NAME}"
export ZITI_EDGE_HOSTNAME="${ZITI_EDGE_HOSTNAME}"
export ZITI_EDGE_PORT="${ZITI_EDGE_PORT}"
export ZITI_EDGE_ROUTER_NAME="${ZITI_EDGE_ROUTER_NAME}"
export ZITI_ROUTER_BR_NAME="${ZITI_ROUTER_BR_NAME}"
export ZITI_ROUTER_BLUE_NAME="${ZITI_ROUTER_BLUE_NAME}"
export ZITI_ROUTER_RED_NAME="${ZITI_ROUTER_RED_NAME}"
export ZITI_EDGE_ROUTER_HOSTNAME="${ZITI_EDGE_ROUTER_HOSTNAME}"
export ZITI_ROUTER_BR_HOSTNAME="${ZITI_ROUTER_BR_HOSTNAME}"
export ZITI_ROUTER_BLUE_HOSTNAME="${ZITI_ROUTER_BLUE_HOSTNAME}"
export ZITI_ROUTER_RED_HOSTNAME="${ZITI_ROUTER_RED_HOSTNAME}"
export ZITI_EDGE_API_HOSTNAME="${ZITI_EDGE_API_HOSTNAME}"

export ZITI_CONTROLLER_ROOTCA_NAME=${ZITI_CONTROLLER_ROOTCA_NAME}
export ZITI_EDGE_ROOTCA_NAME=${ZITI_EDGE_ROOTCA_NAME}
export ZITI_SIGNING_ROOTCA_NAME="${ZITI_SIGNING_ROOTCA_NAME}"

export ZITI_CONTROLLER_INTERMEDIATE_NAME="${ZITI_CONTROLLER_INTERMEDIATE_NAME}"
export ZITI_EDGE_INTERMEDIATE_NAME="${ZITI_EDGE_INTERMEDIATE_NAME}"
export ZITI_SIGNING_INTERMEDIATE_NAME="${ZITI_SIGNING_INTERMEDIATE_NAME}"
export ZITI_CLUSTER_NAME="${ZITI_CLUSTER_NAME}"
mkdir -p ${ZITI_HOME}/db
mkdir -p ${ZITI_PKI}
ENVHEREDOC