################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-2026814479:
	@$(MAKE) --no-print-directory -Onone -f TOOLS/subdir_rules.mk build-2026814479-inproc

build-2026814479-inproc: C:/Users/richa/Desktop/ble_examples-master/ble_examples-master/examples/cc2650lp/simple_peripheral_observer/ccs/config/app_ble.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_32_00_06_core/xs" --xdcpath="C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/packages;C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/tidrivers_cc13xx_cc26xx_2_20_01_10/packages;C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/bios_6_46_01_38/packages;C:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/uia_2_00_06_52/packages;C:/ti/ccsv7/ccs_base;c:/ti/simplelink/ble_sdk_2_02_01_18;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M3 -p ti.platforms.simplelink:CC2650F128 -r release -c "C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.0.LTS" --compileOptions "-mv7M3 --code_state=16 --float_support=vfplib -me -O4 --opt_for_speed=0 --include_path=\"C:/Users/richa/workspace_v7/simple_peripheral_observer_cc2650lp_app\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/controller/cc26xx/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/common/cc26xx\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/icall/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/dev_info\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/roles/\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/roles/cc26xx\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/simple_profile\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/profiles/simple_profile/cc26xx\" --include_path=\"C:/Users/richa/Desktop/ble_examples-master/ble_examples-master/src/profiles/roles/cc26xx/\" --include_path=\"C:/Users/richa/Desktop/ble_examples-master/ble_examples-master/src/examples/simple_peripheral_observer/cc26xx/app\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/target\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/hal/src/target/_common/cc26xx\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/heapmgr\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/icall/src/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/osal/src/inc\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/saddr\" --include_path=\"c:/ti/simplelink/ble_sdk_2_02_01_18/src/components/services/src/sdata\" --include_path=\"c:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/cc26xxware_2_24_02_17393\" --include_path=\"c:/ti/tirtos_cc13xx_cc26xx_2_20_01_08/products/tidrivers_cc13xx_cc26xx_2_20_01_10/packages\" --include_path=\"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_16.9.0.LTS/include\" --define=USE_ICALL --define=MAX_PDU_SIZE=27 --define=PLUS_OBSERVER --define=POWER_SAVING --define=DEBUG_SIMPLE --define=HEAPMGR_SIZE=0 --define=xDisplay_DISABLE_ALL --define=xBOARD_DISPLAY_EXCLUDE_UART --define=BOARD_DISPLAY_EXCLUDE_LCD --define=GAPperipheralROLE_NUM_RSSI_LINKS=1 --define=ICALL_MAX_NUM_TASKS=3 --define=ICALL_MAX_NUM_ENTITIES=6 --define=xdc_runtime_Assert_DISABLE_ALL --define=xdc_runtime_Log_DISABLE_ALL --define=CC2650_LAUNCHXL --define=CC26XXWARE --define=CC26XX -g --c99 --relaxed_ansi --plain_char=unsigned --diag_suppress=48 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --abi=eabi --common=on --fp_reassoc=off --sat_reassoc=off  " "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: build-2026814479
configPkg/compiler.opt: build-2026814479
configPkg/: build-2026814479


