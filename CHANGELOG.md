# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## Unreleased
- Update the configuration of the IN-CORE playbooks
- Removed new user alert cron job

## 1.33.0 - 2025-02-20
- IN-CORE release 6.0.0
- Add more allowed method to CORS
- Add IN-CORE Studio deployment
- Add IN-CORE Studio configMap
- Add IN-CORE user approval application

## 1.32.1 - 2024-11-04
- Add extra variables for datawolf
- Changed new user alert cron job schedule to central time

## 1.32.0 - 2024-10-23
- Project service has been added
- Add additional service urls to the environment variablees of project service
- Add cronjob for alerting new user registration
- IN-CORE release 5.0.0

## 1.31.0 - 2024-08-21
- Update registration and reset password link in playbooks
- Use correct mongodb uri secret in auth service
- Upgraded postgresql to bitnami/postgresql:15.5.11. This requires an upgrade of the database, which can be done using a dump and restore.
- Updated keycloak theme to 1.1.0 that has email theme

## 1.30.2 - 2024-07-01
- Minor release to correct the chart version number

## 1.30.1 - 2024-06-13
- Fix missing keycloak admin username for cronjob

## 1.30.0 - 2024-06-12
- IN-CORE release 5.4.0
- Custom theme to Keycloak login page
- Upgraded Keycloak to 24.0.4
- Added Google Analytics information

## 1.29.0 - 2024-05-01
- IN-CORE release 5.3.1

## 1.28.1 - 2024-04-30
- Copied CHANGELOG from README

### Fixed
- middleware for traefik is now under traefik.io

## 1.28.0
- New playbooks using incore-playbook 0.6.5 and configuration accordingly

## 1.27.0
- IN-CORE release 5.3.0

## 1.26.0
- Update configuration for SLC Retrofit Strategy Builder
- Update slc regions and remove additional sector
- Update labels for Joplin Retrofit Strategy Builder
- Update number of CPUs for best performance

## 1.25.3
- Update Galveston configuration CPU number to acheive best performance

## 1.25.2
- Fix space and max num of condition config for Galveston Playbooks

## 1.25.1
- Fix config for Galveston and SLC Playbooks

## 1.25.0
- IN-CORE release 5.2.0
- Updated map bounding box order for community app
- New playbooks using incore-playbook 0.6.3 and configuration accordingly
- Upgraded maestro service

## 1.24.0
- IN-CORE release 5.1.0
- Increase max zoom level of playbook maps

## 1.23.0
- IN-CORE release 5.0.0
- Added MONGODB_URI to auth deployment

## 1.22.1
- IN-CORE release 4.8.1

## 1.22.0
- IN-CORE release 4.8.0
- Removed Geoserver from the chart
- Added script to update jupyterhub charts

## 1.21.0
- IN-CORE release 4.7.0

## 1.20.1
- Geoserver uses the official image instead of custom-built image

## 1.20.0
- IN-CORE release 4.6.0
- Geoserver updated to 2.23.1
- Seperated Jupyterhub from charts in order to upgrade them separately

## 1.19.0
- IN-CORE release 4.5.0
- Removed usergroup sync for allocation

## 1.18.0
- IN-CORE release 4.2.0
- add X-Auth-User header
- Removed LDAP

## 1.17.0
- IN-CORE release 4.1.0
- Removed version tag cronjob

## 1.16.1
- Updated playbook config files

## 1.16.0
- Added maestro user sync
- Added playbook configmap

## 1.15.1
- update playbook to 0.2.0

## 1.15.0
- IN-CORE release 4.0.0
- Use datawolf subchart

## 1.14.1
- Updated maestro service

## 1.14.0
- Incore release 3.7.0

## 1.13.1
- Added SLC playbook template
- Added Joplin playbook template
- Added Galveston playbook tempate

## 1.13.0
- Incore release 3.6.0

## 1.12.3
- Renamed container name for jupyter hub and lab
- Added auth_role and auth_group env variables to authenticator
  
## 1.12.2
- Used wrong name for traefik middleware
- Update keycloak to 18.3.0

## 1.12.1
- Enable traefik v2 middleware

## 1.12.0
- Incore release 3.5.0
- Upgrade postgresql to 11 (requires a dump/restore of the database)
- Upgrade keyclock to 17.0.1

## 1.11.0
- Incore release 3.2.0
- Added usergroups sync from ldap to database

## 1.10.2
- Changed space service's livenessProb endpoint

## 1.10.1
- Fixed pyincore-data's documentation
- Pyincore-viz 1.5.1 release
- Pyincore 1.4.1 release

## 1.10.0
- Incore release 3.1.0.

## 1.9.1
- Disabled jupyterhub user scheduler to make incore-lab spawns from random node.

## 1.9.0
- Incore release 3.0.0

## 1.8.0
- Added common_mongo_uri variable to incore services
- Incore release 2.8.0

## 1.7.1
- Made IP2Location variable in incore-auth

## 1.7.0
- Added maestro service deployment
- Incore release 2.7.0

## 1.6.1
- Make quotas for jupyterhub configurable

## 1.6.0
- Incore release 2.6.0

## 1.5.2
- Changed datawolf's max pool size

## 1.5.1
- Incore release 2.5.1

## 1.5.0 
- Incore release 2.5.0

## 1.4.3
- Added plotting-service deployment

## 1.4.2
- Added pyincore-data doc deployment

## 1.4.1
- Added hazard service url environmental variable to data service

## 1.4.0
- Incore release 2.3.0

## 1.3.2
- Enable semantics live/ready checks

## 1.3.1
- Incore service hotfix 1.2.1
- Pyincore-viz hotfix 1.1.1
- Incore docs hotfix 2.2.1
- Incore ui hotfix 0.9.3

## 1.3.0
- Incore release 2.2.0
- Upgrade jupyterhub to 0.11
- Enable initial implementation of quota for jupyterlab
- Updated playbook ingress version

## 1.2.1
- Incore service hotfix 1.1.1

## 1.2.0
- Incore release 2.1.0

## 1.1.0
- Cors filter is now a list of hosts
- Datawolf and playbook added to the chart

## 1.0.3
- Jupyterhub configuration changed:
  - Removed home ownership -R option in singleuser

## 1.0.2
- Documentation updates:
  - Updated incore documents to 2.0.2

## 1.0.1
- Documentation updates:
  - Fixed broken Jupyter Notebook examples
  - Fixed fragility curves with SD as demand type in DFR3 service

## 1.0.0
This is the first release of the helm chart for INCORE 2.0.0
