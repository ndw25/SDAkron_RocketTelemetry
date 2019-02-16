#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=spiCode.c LCDDisplay.c txRxRegisterConfiguration.c FAT32_fatf/source/diskio.c FAT32_fatf/source/ff.c FAT32_fatf/source/ffsystem.c FAT32_fatf/source/ffunicode.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/spiCode.o ${OBJECTDIR}/LCDDisplay.o ${OBJECTDIR}/txRxRegisterConfiguration.o ${OBJECTDIR}/FAT32_fatf/source/diskio.o ${OBJECTDIR}/FAT32_fatf/source/ff.o ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o
POSSIBLE_DEPFILES=${OBJECTDIR}/spiCode.o.d ${OBJECTDIR}/LCDDisplay.o.d ${OBJECTDIR}/txRxRegisterConfiguration.o.d ${OBJECTDIR}/FAT32_fatf/source/diskio.o.d ${OBJECTDIR}/FAT32_fatf/source/ff.o.d ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/spiCode.o ${OBJECTDIR}/LCDDisplay.o ${OBJECTDIR}/txRxRegisterConfiguration.o ${OBJECTDIR}/FAT32_fatf/source/diskio.o ${OBJECTDIR}/FAT32_fatf/source/ff.o ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o

# Source Files
SOURCEFILES=spiCode.c LCDDisplay.c txRxRegisterConfiguration.c FAT32_fatf/source/diskio.c FAT32_fatf/source/ff.c FAT32_fatf/source/ffsystem.c FAT32_fatf/source/ffunicode.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/spiCode.o: spiCode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiCode.o.d 
	@${RM} ${OBJECTDIR}/spiCode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  spiCode.c  -o ${OBJECTDIR}/spiCode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/spiCode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/spiCode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LCDDisplay.o: LCDDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCDDisplay.o.d 
	@${RM} ${OBJECTDIR}/LCDDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LCDDisplay.c  -o ${OBJECTDIR}/LCDDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LCDDisplay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/LCDDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/txRxRegisterConfiguration.o: txRxRegisterConfiguration.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/txRxRegisterConfiguration.o.d 
	@${RM} ${OBJECTDIR}/txRxRegisterConfiguration.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  txRxRegisterConfiguration.c  -o ${OBJECTDIR}/txRxRegisterConfiguration.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/txRxRegisterConfiguration.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/txRxRegisterConfiguration.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/diskio.o: FAT32_fatf/source/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/diskio.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/diskio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/diskio.c  -o ${OBJECTDIR}/FAT32_fatf/source/diskio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/diskio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/diskio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ff.o: FAT32_fatf/source/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ff.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ff.c  -o ${OBJECTDIR}/FAT32_fatf/source/ff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ff.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ff.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ffsystem.o: FAT32_fatf/source/ffsystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ffsystem.c  -o ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ffunicode.o: FAT32_fatf/source/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ffunicode.c  -o ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/spiCode.o: spiCode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiCode.o.d 
	@${RM} ${OBJECTDIR}/spiCode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  spiCode.c  -o ${OBJECTDIR}/spiCode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/spiCode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/spiCode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/LCDDisplay.o: LCDDisplay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCDDisplay.o.d 
	@${RM} ${OBJECTDIR}/LCDDisplay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  LCDDisplay.c  -o ${OBJECTDIR}/LCDDisplay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/LCDDisplay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/LCDDisplay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/txRxRegisterConfiguration.o: txRxRegisterConfiguration.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/txRxRegisterConfiguration.o.d 
	@${RM} ${OBJECTDIR}/txRxRegisterConfiguration.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  txRxRegisterConfiguration.c  -o ${OBJECTDIR}/txRxRegisterConfiguration.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/txRxRegisterConfiguration.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/txRxRegisterConfiguration.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/diskio.o: FAT32_fatf/source/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/diskio.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/diskio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/diskio.c  -o ${OBJECTDIR}/FAT32_fatf/source/diskio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/diskio.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/diskio.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ff.o: FAT32_fatf/source/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ff.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ff.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ff.c  -o ${OBJECTDIR}/FAT32_fatf/source/ff.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ff.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ff.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ffsystem.o: FAT32_fatf/source/ffsystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ffsystem.c  -o ${OBJECTDIR}/FAT32_fatf/source/ffsystem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ffsystem.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/FAT32_fatf/source/ffunicode.o: FAT32_fatf/source/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/FAT32_fatf/source" 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  FAT32_fatf/source/ffunicode.c  -o ${OBJECTDIR}/FAT32_fatf/source/ffunicode.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/FAT32_fatf/source/ffunicode.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/SDAkron_RocketTelemetry.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
