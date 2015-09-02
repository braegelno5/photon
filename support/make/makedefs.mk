#
# Copyright VMware, Inc 2015
#

MKDIR=/bin/mkdir
RM=/bin/rm
RMDIR=/bin/rm -rf
CP=/bin/cp
MV=/bin/mv
TAR=/bin/tar
RPMBUILD=/usr/bin/rpmbuild
SED=/usr/bin/sed
SHASUM=/usr/bin/shasum
PACKER=/usr/local/bin/packer
VAGRANT=/usr/bin/vagrant
VAGRANT_BUILD=vagrant

SRCROOT := $(realpath $(SRCROOT))
MAKEROOT := $(realpath $(MAKEROOT))

PHOTON_STAGE?=$(SRCROOT)/stage
PHOTON_LOGS_DIR=$(PHOTON_STAGE)/LOGS
PHOTON_RPMS_DIR=$(PHOTON_STAGE)/RPMS
PHOTON_SPECS_DIR?=$(SRCROOT)/SPECS
PHOTON_COMMON_DIR?=$(SRCROOT)/common
PHOTON_DATA_DIR?=$(PHOTON_COMMON_DIR)/data
PHOTON_SRCS_DIR=$(PHOTON_STAGE)/SOURCES
PHOTON_PUBLISH_RPMS_DIR=$(PHOTON_STAGE)/PUBLISHRPMS
PHOTON_GENERATED_DATA_DIR=$(PHOTON_STAGE)/common/data

PHOTON_PKG_BUILDER_DIR=$(SRCROOT)/support/package-builder
PHOTON_PULL_PUBLISH_RPMS_DIR=$(SRCROOT)/support/pullpublishrpms
PHOTON_CLOUD_IMAGE_BUILDER_DIR=$(SRCROOT)/support/cloud-image-builder

PHOTON_INSTALLER_DIR=$(SRCROOT)/installer
PHOTON_INSTALLER=$(PHOTON_INSTALLER_DIR)/photonInstaller.py
PHOTON_SPECDEPS_DIR=$(SRCROOT)/support/SpecDeps
PHOTON_SPECDEPS=$(PHOTON_SPECDEPS_DIR)/SpecDeps.py
PHOTON_PACKAGE_BUILDER=$(PHOTON_PKG_BUILDER_DIR)/builder.py
PHOTON_BINTRAY_CONFIG?=$(PHOTON_PKG_BUILDER_DIR)/pullsources.conf
PHOTON_PULL_PUBLISH_RPMS=$(PHOTON_PULL_PUBLISH_RPMS_DIR)/pullpublishrpms.sh
PHOTON_CLOUD_IMAGE_BUILDER=$(PHOTON_CLOUD_IMAGE_BUILDER_DIR)/cloud-image-build.sh

PHOTON_CHROOT_CLEANER=$(PHOTON_PKG_BUILDER_DIR)/cleanup-build-root.sh
PHOTON_RPMS_DIR_NOARCH=$(PHOTON_RPMS_DIR)/noarch
PHOTON_RPMS_DIR_X86_64=$(PHOTON_RPMS_DIR)/x86_64
PHOTON_PACKER_TEMPLATES=$(SRCROOT)/support/packer-templates

PHOTON_CHROOT_PATH:=$(PHOTON_STAGE)/photonroot
PHOTON_FS_ROOT=/usr/src/photon
PHOTON_DIST_TAG?=.ph1tp2
PHOTON_INPUT_RPMS_DIR?=$(SRCROOT)/inputRPMS
