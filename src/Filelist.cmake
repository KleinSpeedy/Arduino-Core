# Arduino core source Filelist

# CPP files
set(core-wrapper_SRCS_CPP
    ${CORE_WRAPPER_SRC_DIR}/abi.cpp
    ${CORE_WRAPPER_SRC_DIR}/CDC.cpp
    ${CORE_WRAPPER_SRC_DIR}/HardwareSerial.cpp
    ${CORE_WRAPPER_SRC_DIR}/HardwareSerial0.cpp
    ${CORE_WRAPPER_SRC_DIR}/HardwareSerial1.cpp
    ${CORE_WRAPPER_SRC_DIR}/HardwareSerial2.cpp
    ${CORE_WRAPPER_SRC_DIR}/HardwareSerial3.cpp
    ${CORE_WRAPPER_SRC_DIR}/IPAddress.cpp
    # Ignore main.cpp
    ${CORE_WRAPPER_SRC_DIR}/new.cpp
    ${CORE_WRAPPER_SRC_DIR}/PluggableUSB.cpp
    ${CORE_WRAPPER_SRC_DIR}/Print.cpp
    ${CORE_WRAPPER_SRC_DIR}/Stream.cpp
    ${CORE_WRAPPER_SRC_DIR}/Tone.cpp
    ${CORE_WRAPPER_SRC_DIR}/USBCore.cpp
    ${CORE_WRAPPER_SRC_DIR}/WMath.cpp
    ${CORE_WRAPPER_SRC_DIR}/WString.cpp
)

# C Files
set(core-wrapper_SRCS_C
    ${CORE_WRAPPER_SRC_DIR}/hooks.c
    ${CORE_WRAPPER_SRC_DIR}/WInterrupts.c
    ${CORE_WRAPPER_SRC_DIR}/wiring_analog.c
    ${CORE_WRAPPER_SRC_DIR}/wiring_digital.c
    ${CORE_WRAPPER_SRC_DIR}/wiring_pulse.c
    ${CORE_WRAPPER_SRC_DIR}/wiring_shift.c
    ${CORE_WRAPPER_SRC_DIR}/wiring.c
)

# All files
set(core-wrapper_SRCS 
    ${core-wrapper_SRCS_CPP}
    ${core-wrapper_SRCS_C}
)
