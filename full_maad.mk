$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Locale & Timezone
PRODUCT_LOCALES := fa_IR $(PRODUCT_LOCALES)
PRODUCT_PROPERTY_OVERRIDES += persist.sys.timezone=Asia/Tehran

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

# Inherit the rest from mt6735-common
$(call inherit-product, device/cyanogen/mt6735-common/mt6735.mk)

