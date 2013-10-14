#!/bin/bash
RHINO=/opt/local/bin/rhino
BUILD_DIR="./"
PROJECT_DIR="../"
TEMPLATES_DIR="${PROJECT_DIR}templates/"
PAGE="$1"
PAGE_BASE=$(basename $PAGE .html)
PAGE_DIR=$(dirname $PAGE)/

cat > ${BUILD_DIR}/page.js <<EOF
//
// Automatically generated by drosera-boilerplate -- DO NOT EDIT!
//

load("${PROJECT_DIR}js/vendor/mustache-0.7.3.js");
load("${BUILD_DIR}build.js");
print(Drosera.renderPage(arguments, {viewModelDir: '${PAGE_DIR}'}));
EOF

PARTIALS=$(ls ${TEMPLATES_DIR} | grep -v '~$' | sed -e 's/.mustache//g')
${RHINO} ${BUILD_DIR}/page.js page ${PAGE_BASE} ${PARTIALS}
