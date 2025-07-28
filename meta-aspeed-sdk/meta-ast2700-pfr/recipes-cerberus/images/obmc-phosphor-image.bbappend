FEATURE_REMOVE_LIST = " \
         obmc-chassis-mgmt \
         obmc-chassis-state-mgmt \
         obmc-console \
         obmc-dbus-monitor \
         obmc-debug-collector \
         obmc-devtools \
         obmc-fan-control \
         obmc-fan-mgmt \
         obmc-flash-mgmt \
         obmc-fru-ipmi \
         obmc-health-monitor \
         obmc-host-ctl \
         obmc-host-ipmi \
         obmc-host-state-mgmt \
         obmc-ikvm \
         obmc-inventory \
         obmc-leds \
         obmc-logging-mgmt \
         obmc-net-ipmi \
         obmc-remote-logging-mgmt \
         obmc-rng \
         obmc-sensors \
         obmc-settings-mgmt \
         obmc-software \
         obmc-system-mgmt \
         obmc-telemetry \
         obmc-user-mgmt \
         obmc-user-mgmt-ldap \
"

PACKAGE_REMOVE_LIST = " \
        dbus-sensors \
        entity-manager \
        libmctp \
        packagegroup-aspeed-ktools \
        packagegroup-oss-extended \
        packagegroup-oss-extra \
        packagegroup-oss-intel-pmci \
"

IMAGE_FEATURES:remove = "${@bb.utils.contains('MACHINE_FEATURES', '128m', d.expand('${FEATURE_REMOVE_LIST}'), '', d)}"
IMAGE_INSTALL:remove = "${@bb.utils.contains('MACHINE_FEATURES', '128m', d.expand('${PACKAGE_REMOVE_LIST}'), '', d)}"