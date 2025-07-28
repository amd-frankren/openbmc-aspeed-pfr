PROVISION_IMAGE_INI = " \
    ${@bb.utils.contains('MACHINE_FEATURES', '128m', \
        'provisioning_image_generator_rootkey_2700_128.ini', \
        'provisioning_image_generator_rootkey_2700.ini', d)}"