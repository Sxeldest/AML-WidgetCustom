; =========================================================
; Game Engine Function: sub_24CAC8
; Address            : 0x24CAC8 - 0x24D37C
; =========================================================

24CAC8:  PUSH            {R4-R7,LR}
24CACA:  ADD             R7, SP, #0xC
24CACC:  PUSH.W          {R8-R11}
24CAD0:  SUB.W           SP, SP, #0x420
24CAD4:  SUB             SP, SP, #4
24CAD6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x24CADE)
24CADA:  ADD             R0, PC; __stack_chk_guard_ptr
24CADC:  LDR             R0, [R0]; __stack_chk_guard
24CADE:  LDR             R0, [R0]
24CAE0:  STR.W           R0, [R7,#var_20]
24CAE4:  ADR.W           R0, aAlsoftLoglevel; "ALSOFT_LOGLEVEL"
24CAE8:  BLX             getenv
24CAEC:  CBZ             R0, loc_24CB04
24CAEE:  MOVS            R1, #0; char **
24CAF0:  MOVS            R2, #0; int
24CAF2:  BLX             strtol
24CAF6:  CMP             R0, #4
24CAF8:  BHI             loc_24CB04
24CAFA:  LDR.W           R1, =(LogLevel_ptr - 0x24CB02)
24CAFE:  ADD             R1, PC; LogLevel_ptr
24CB00:  LDR             R1, [R1]; LogLevel
24CB02:  STR             R0, [R1]
24CB04:  ADR.W           R0, aAlsoftLogfile; "ALSOFT_LOGFILE"
24CB08:  BLX             getenv
24CB0C:  MOV             R4, R0
24CB0E:  CMP             R4, #0
24CB10:  ITT NE
24CB12:  LDRBNE          R0, [R4]
24CB14:  CMPNE           R0, #0
24CB16:  BEQ             loc_24CB50
24CB18:  ADR.W           R1, aWat; "wat"
24CB1C:  MOV             R0, R4; filename
24CB1E:  BLX             fopen
24CB22:  CBZ             R0, loc_24CB30
24CB24:  LDR.W           R1, =(LogFile_ptr - 0x24CB2C)
24CB28:  ADD             R1, PC; LogFile_ptr
24CB2A:  LDR             R1, [R1]; LogFile
24CB2C:  STR             R0, [R1]
24CB2E:  B               loc_24CB50
24CB30:  LDR.W           R0, =(LogLevel_ptr - 0x24CB38)
24CB34:  ADD             R0, PC; LogLevel_ptr
24CB36:  LDR             R0, [R0]; LogLevel
24CB38:  LDR             R0, [R0]
24CB3A:  CBZ             R0, loc_24CB50
24CB3C:  LDR.W           R0, =(aEe - 0x24CB4E); "(EE)"
24CB40:  ADR.W           R1, aAlcInitconfig; "alc_initconfig"
24CB44:  ADR.W           R2, aFailedToOpenLo; "Failed to open log file '%s'\n"
24CB48:  MOV             R3, R4
24CB4A:  ADD             R0, PC; "(EE)"
24CB4C:  BLX             j_al_print
24CB50:  ADD.W           R8, SP, #0x440+var_420
24CB54:  MOV.W           R1, #0x400
24CB58:  MOV             R0, R8
24CB5A:  BLX             j___aeabi_memclr8
24CB5E:  LDR.W           R4, =(off_68542C - 0x24CB70); "opensl" ...
24CB62:  ADR.W           R2, dword_24D3E8
24CB66:  MOV             R0, R8
24CB68:  MOV.W           R1, #0x400
24CB6C:  ADD             R4, PC; off_68542C
24CB6E:  LDR             R3, [R4]; "opensl" ...
24CB70:  BL              sub_5E6B74
24CB74:  LDR             R3, [R4,#(off_685474 - 0x68542C)]; "audiotrack" ...
24CB76:  MOV             R5, R0
24CB78:  CBZ             R3, loc_24CBA0
24CB7A:  LDR.W           R0, =(off_68542C - 0x24CB86); "opensl" ...
24CB7E:  ADR.W           R6, aS; ", %s"
24CB82:  ADD             R0, PC; off_68542C
24CB84:  ADD.W           R4, R0, #0x90
24CB88:  ADD.W           R0, R8, R5
24CB8C:  RSB.W           R1, R5, #0x400
24CB90:  MOV             R2, R6
24CB92:  BL              sub_5E6B74
24CB96:  LDR.W           R3, [R4],#0x48; "null" ...
24CB9A:  ADD             R5, R0
24CB9C:  CMP             R3, #0
24CB9E:  BNE             loc_24CB88
24CBA0:  LDR.W           R0, =(LogLevel_ptr - 0x24CBA8)
24CBA4:  ADD             R0, PC; LogLevel_ptr
24CBA6:  LDR             R0, [R0]; LogLevel
24CBA8:  LDR             R0, [R0]
24CBAA:  CMP             R0, #3
24CBAC:  BCC             loc_24CBC2
24CBAE:  LDR.W           R0, =(aIi - 0x24CBC0); "(II)"
24CBB2:  ADR.W           R1, aAlcInitconfig; "alc_initconfig"
24CBB6:  ADR.W           R2, aSupportedBacke; "Supported backends: %s\n"
24CBBA:  ADD             R3, SP, #0x440+var_420
24CBBC:  ADD             R0, PC; "(II)"
24CBBE:  BLX             j_al_print
24CBC2:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24CBCA)
24CBC6:  ADD             R0, PC; g_mob_configGlobals_ptr
24CBC8:  LDR             R0, [R0]; g_mob_configGlobals
24CBCA:  LDR             R0, [R0]
24CBCC:  CMP             R0, #0
24CBCE:  ITT NE
24CBD0:  LDRNE           R1, [R0]
24CBD2:  CMPNE           R1, #0
24CBD4:  BEQ             loc_24CC72
24CBD6:  ADDS            R0, #4
24CBD8:  CMP             R1, #1
24CBDA:  BEQ             loc_24CBE6
24CBDC:  LDR             R1, [R0,#4]
24CBDE:  ADDS            R0, #8
24CBE0:  CMP             R1, #0
24CBE2:  BNE             loc_24CBD8
24CBE4:  B               loc_24CC72
24CBE6:  LDR             R5, [R0]
24CBE8:  ADR.W           R1, dword_24D41C; char *
24CBEC:  MOV             R0, R5; char *
24CBEE:  BLX             strcasecmp
24CBF2:  CBZ             R0, loc_24CC72
24CBF4:  LDR.W           R0, =(LogLevel_ptr - 0x24CC04)
24CBF8:  ADR.W           R9, off_24D420
24CBFC:  ADR.W           R11, aNeon_0; "neon"
24CC00:  ADD             R0, PC; LogLevel_ptr
24CC02:  LDR.W           R10, [R0]; LogLevel
24CC06:  MOV             R0, R5; s
24CC08:  MOVS            R1, #0x2C ; ','; c
24CC0A:  BLX             strchr
24CC0E:  SUBS            R5, #1
24CC10:  MOV             R6, R0
24CC12:  LDRB.W          R4, [R5,#1]!
24CC16:  MOV             R0, R4; int
24CC18:  BLX             isspace
24CC1C:  CMP             R0, #0
24CC1E:  BNE             loc_24CC12
24CC20:  CMP             R4, #0
24CC22:  IT NE
24CC24:  CMPNE           R4, #0x2C ; ','
24CC26:  BEQ             loc_24CC6C
24CC28:  CBZ             R6, loc_24CC30
24CC2A:  SUB.W           R8, R6, R5
24CC2E:  B               loc_24CC38
24CC30:  MOV             R0, R5; char *
24CC32:  BLX             strlen
24CC36:  MOV             R8, R0
24CC38:  MOV             R0, R5; char *
24CC3A:  MOV             R1, R9; char *
24CC3C:  MOV             R2, R8; size_t
24CC3E:  BLX             strncasecmp
24CC42:  CBZ             R0, loc_24CC6C
24CC44:  MOV             R0, R5; char *
24CC46:  MOV             R1, R11; char *
24CC48:  MOV             R2, R8; size_t
24CC4A:  BLX             strncasecmp
24CC4E:  CBZ             R0, loc_24CC6C
24CC50:  LDR.W           R0, [R10]
24CC54:  CMP             R0, #2
24CC56:  BCC             loc_24CC6C
24CC58:  LDR.W           R0, =(aWw - 0x24CC6A); "(WW)"
24CC5C:  ADR.W           R1, aAlcInitconfig; "alc_initconfig"
24CC60:  ADR.W           R2, aInvalidCpuExte; "Invalid CPU extension \"%s\"\n"
24CC64:  MOV             R3, R5
24CC66:  ADD             R0, PC; "(WW)"
24CC68:  BLX             j_al_print
24CC6C:  ADDS            R5, R6, #1
24CC6E:  CMP             R6, #0
24CC70:  BNE             loc_24CC06
24CC72:  LDR.W           R0, =(LogLevel_ptr - 0x24CC7A)
24CC76:  ADD             R0, PC; LogLevel_ptr
24CC78:  LDR             R0, [R0]; LogLevel
24CC7A:  LDR             R0, [R0]
24CC7C:  CMP             R0, #3
24CC7E:  BCC             loc_24CCA6
24CC80:  LDR.W           R0, =(aIi - 0x24CC90); "(II)"
24CC84:  LDR.W           R1, =(aFillcpucaps_0 - 0x24CC96); "FillCPUCaps"
24CC88:  LDR.W           R2, =(aGotCapsSSS - 0x24CC9C); "Got caps:%s%s%s\n"
24CC8C:  ADD             R0, PC; "(II)"
24CC8E:  LDR.W           R3, =(byte_61CD7E - 0x24CC9E)
24CC92:  ADD             R1, PC; "FillCPUCaps"
24CC94:  LDR.W           R6, =(aNone_3 - 0x24CCA0); " -none-"
24CC98:  ADD             R2, PC; "Got caps:%s%s%s\n"
24CC9A:  ADD             R3, PC; byte_61CD7E
24CC9C:  ADD             R6, PC; " -none-"
24CC9E:  STRD.W          R3, R6, [SP,#0x440+var_440]
24CCA2:  BLX             j_al_print
24CCA6:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24CCB2)
24CCAA:  LDR.W           R1, =(RTPrioLevel_ptr - 0x24CCB8)
24CCAE:  ADD             R0, PC; g_mob_configGlobals_ptr
24CCB0:  LDR.W           R2, =(CPUCapFlags_ptr - 0x24CCBA)
24CCB4:  ADD             R1, PC; RTPrioLevel_ptr
24CCB6:  ADD             R2, PC; CPUCapFlags_ptr
24CCB8:  LDR             R0, [R0]; g_mob_configGlobals
24CCBA:  LDR             R3, [R1]; RTPrioLevel
24CCBC:  LDR             R2, [R2]; CPUCapFlags
24CCBE:  LDR             R1, [R0]
24CCC0:  MOVS            R0, #0
24CCC2:  STR             R0, [R3]
24CCC4:  STR             R0, [R2]
24CCC6:  CMP             R1, #0
24CCC8:  ITT NE
24CCCA:  LDRNE           R3, [R1]
24CCCC:  CMPNE           R3, #0
24CCCE:  BEQ             loc_24CD70
24CCD0:  ADDS            R0, R1, #4
24CCD2:  MOV             R2, R0
24CCD4:  CMP             R3, #2
24CCD6:  BEQ             loc_24CCE2
24CCD8:  LDR             R3, [R2,#4]
24CCDA:  ADDS            R2, #8
24CCDC:  CMP             R3, #0
24CCDE:  BNE             loc_24CCD4
24CCE0:  B               loc_24CCEE
24CCE2:  LDR.W           R3, =(RTPrioLevel_ptr - 0x24CCEC)
24CCE6:  LDR             R2, [R2]
24CCE8:  ADD             R3, PC; RTPrioLevel_ptr
24CCEA:  LDR             R3, [R3]; RTPrioLevel
24CCEC:  STR             R2, [R3]
24CCEE:  LDR             R1, [R1]
24CCF0:  CBZ             R1, loc_24CD70
24CCF2:  CMP             R1, #3
24CCF4:  BEQ             loc_24CD00
24CCF6:  LDR             R1, [R0,#4]
24CCF8:  ADDS            R0, #8
24CCFA:  CMP             R1, #0
24CCFC:  BNE             loc_24CCF2
24CCFE:  B               loc_24CD70
24CD00:  LDR             R4, [R0]
24CD02:  ADR.W           R1, aPoint; "point"
24CD06:  MOV             R0, R4; char *
24CD08:  BLX             strcasecmp
24CD0C:  CBZ             R0, loc_24CD64
24CD0E:  ADR.W           R1, aNone_2; "none"
24CD12:  MOV             R0, R4; char *
24CD14:  BLX             strcasecmp
24CD18:  CBZ             R0, loc_24CD64
24CD1A:  LDR.W           R1, =(aLinear - 0x24CD24); "linear"
24CD1E:  MOV             R0, R4; char *
24CD20:  ADD             R1, PC; "linear"
24CD22:  BLX             strcasecmp
24CD26:  CMP             R0, #0
24CD28:  BEQ.W           loc_24D34C
24CD2C:  LDR.W           R1, =(aCubic - 0x24CD36); "cubic"
24CD30:  MOV             R0, R4; char *
24CD32:  ADD             R1, PC; "cubic"
24CD34:  BLX             strcasecmp
24CD38:  CMP             R0, #0
24CD3A:  BEQ.W           loc_24D354
24CD3E:  ADD             R1, SP, #0x440+var_420; char **
24CD40:  MOV             R0, R4; char *
24CD42:  MOVS            R2, #0; int
24CD44:  BLX             strtol
24CD48:  CMP             R0, #2
24CD4A:  BHI.W           loc_24D35C
24CD4E:  LDR             R1, [SP,#0x440+var_420]
24CD50:  LDRB            R1, [R1]
24CD52:  CMP             R1, #0
24CD54:  BNE.W           loc_24D35C
24CD58:  LDR.W           R1, =(DefaultResampler_ptr - 0x24CD60)
24CD5C:  ADD             R1, PC; DefaultResampler_ptr
24CD5E:  LDR             R1, [R1]; DefaultResampler
24CD60:  STR             R0, [R1]
24CD62:  B               loc_24CD70
24CD64:  LDR.W           R0, =(DefaultResampler_ptr - 0x24CD6E)
24CD68:  MOVS            R1, #0
24CD6A:  ADD             R0, PC; DefaultResampler_ptr
24CD6C:  LDR             R0, [R0]; DefaultResampler
24CD6E:  STR             R1, [R0]
24CD70:  LDR.W           R0, =(aAlsoftTrapErro - 0x24CD78); "ALSOFT_TRAP_ERROR"
24CD74:  ADD             R0, PC; "ALSOFT_TRAP_ERROR"
24CD76:  BLX             getenv
24CD7A:  MOV             R4, R0
24CD7C:  CBZ             R4, loc_24CDB2
24CD7E:  LDR.W           R1, =(aTrue_0 - 0x24CD88); "true"
24CD82:  MOV             R0, R4; char *
24CD84:  ADD             R1, PC; "true"
24CD86:  BLX             strcasecmp
24CD8A:  CBZ             R0, loc_24CD9A
24CD8C:  MOV             R0, R4; char *
24CD8E:  MOVS            R1, #0; char **
24CD90:  MOVS            R2, #0; int
24CD92:  BLX             strtol
24CD96:  CMP             R0, #1
24CD98:  BNE             loc_24CDB2
24CD9A:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24CDA6)
24CD9E:  LDR.W           R1, =(TrapALError_ptr - 0x24CDA8)
24CDA2:  ADD             R0, PC; g_mob_configGlobals_ptr
24CDA4:  ADD             R1, PC; TrapALError_ptr
24CDA6:  LDR             R0, [R0]; g_mob_configGlobals
24CDA8:  LDR             R1, [R1]; TrapALError
24CDAA:  LDR             R5, [R0]
24CDAC:  MOVS            R0, #1
24CDAE:  STRB            R0, [R1]
24CDB0:  B               loc_24CE90
24CDB2:  LDR.W           R0, =(aAlsoftTrapAlEr - 0x24CDBA); "ALSOFT_TRAP_AL_ERROR"
24CDB6:  ADD             R0, PC; "ALSOFT_TRAP_AL_ERROR"
24CDB8:  BLX             getenv
24CDBC:  MOV             R4, R0
24CDBE:  CBZ             R4, loc_24CDE8
24CDC0:  LDR.W           R1, =(aTrue_0 - 0x24CDCA); "true"
24CDC4:  MOV             R0, R4; char *
24CDC6:  ADD             R1, PC; "true"
24CDC8:  BLX             strcasecmp
24CDCC:  CBZ             R0, loc_24CDDC
24CDCE:  MOV             R0, R4; char *
24CDD0:  MOVS            R1, #0; char **
24CDD2:  MOVS            R2, #0; int
24CDD4:  BLX             strtol
24CDD8:  CMP             R0, #1
24CDDA:  BNE             loc_24CDE8
24CDDC:  LDR.W           R0, =(TrapALError_ptr - 0x24CDE6)
24CDE0:  MOVS            R1, #1
24CDE2:  ADD             R0, PC; TrapALError_ptr
24CDE4:  LDR             R0, [R0]; TrapALError
24CDE6:  STRB            R1, [R0]
24CDE8:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24CDF4)
24CDEC:  LDR.W           R1, =(TrapALError_ptr - 0x24CDF6)
24CDF0:  ADD             R0, PC; g_mob_configGlobals_ptr
24CDF2:  ADD             R1, PC; TrapALError_ptr
24CDF4:  LDR             R0, [R0]; g_mob_configGlobals
24CDF6:  LDR             R1, [R1]; TrapALError
24CDF8:  LDR             R0, [R0]
24CDFA:  LDRB            R1, [R1]
24CDFC:  CMP             R0, #0
24CDFE:  ITT NE
24CE00:  LDRNE           R2, [R0]
24CE02:  CMPNE           R2, #0
24CE04:  BEQ             loc_24CE1E
24CE06:  ADDS            R0, #4
24CE08:  CMP             R2, #4
24CE0A:  BEQ             loc_24CE16
24CE0C:  LDR             R2, [R0,#4]
24CE0E:  ADDS            R0, #8
24CE10:  CMP             R2, #0
24CE12:  BNE             loc_24CE08
24CE14:  B               loc_24CE1E
24CE16:  LDR             R1, [R0]
24CE18:  CMP             R1, #0
24CE1A:  IT NE
24CE1C:  MOVNE           R1, #1
24CE1E:  LDR.W           R0, =(TrapALError_ptr - 0x24CE26)
24CE22:  ADD             R0, PC; TrapALError_ptr
24CE24:  LDR             R2, [R0]; TrapALError
24CE26:  LDR.W           R0, =(aAlsoftTrapAlcE - 0x24CE2E); "ALSOFT_TRAP_ALC_ERROR"
24CE2A:  ADD             R0, PC; "ALSOFT_TRAP_ALC_ERROR"
24CE2C:  STRB            R1, [R2]
24CE2E:  BLX             getenv
24CE32:  MOV             R4, R0
24CE34:  CBZ             R4, loc_24CE5C
24CE36:  LDR.W           R1, =(aTrue_0 - 0x24CE40); "true"
24CE3A:  MOV             R0, R4; char *
24CE3C:  ADD             R1, PC; "true"
24CE3E:  BLX             strcasecmp
24CE42:  CBZ             R0, loc_24CE52
24CE44:  MOV             R0, R4; char *
24CE46:  MOVS            R1, #0; char **
24CE48:  MOVS            R2, #0; int
24CE4A:  BLX             strtol
24CE4E:  CMP             R0, #1
24CE50:  BNE             loc_24CE5C
24CE52:  LDR.W           R0, =(byte_6D684C - 0x24CE5C)
24CE56:  MOVS            R1, #1
24CE58:  ADD             R0, PC; byte_6D684C
24CE5A:  STRB            R1, [R0]
24CE5C:  LDR.W           R0, =(g_mob_configGlobals_ptr - 0x24CE68)
24CE60:  LDR.W           R1, =(byte_6D684C - 0x24CE6A)
24CE64:  ADD             R0, PC; g_mob_configGlobals_ptr
24CE66:  ADD             R1, PC; byte_6D684C
24CE68:  LDR             R2, [R0]; g_mob_configGlobals
24CE6A:  LDRB            R0, [R1]
24CE6C:  LDR             R5, [R2]
24CE6E:  CMP             R5, #0
24CE70:  ITT NE
24CE72:  LDRNE           R2, [R5]
24CE74:  CMPNE           R2, #0
24CE76:  BEQ             loc_24CE90
24CE78:  ADDS            R1, R5, #4
24CE7A:  CMP             R2, #5
24CE7C:  BEQ             loc_24CE88
24CE7E:  LDR             R2, [R1,#4]
24CE80:  ADDS            R1, #8
24CE82:  CMP             R2, #0
24CE84:  BNE             loc_24CE7A
24CE86:  B               loc_24CE90
24CE88:  LDR             R0, [R1]
24CE8A:  CMP             R0, #0
24CE8C:  IT NE
24CE8E:  MOVNE           R0, #1
24CE90:  LDR.W           R1, =(byte_6D684C - 0x24CE9A)
24CE94:  CMP             R5, #0
24CE96:  ADD             R1, PC; byte_6D684C
24CE98:  STRB            R0, [R1]
24CE9A:  ITT NE
24CE9C:  LDRNE           R1, [R5]
24CE9E:  CMPNE           R1, #0
24CEA0:  BEQ             loc_24CEFA
24CEA2:  ADDS            R4, R5, #4
24CEA4:  MOV             R0, R4
24CEA6:  CMP             R1, #0x1B
24CEA8:  BEQ             loc_24CEB4
24CEAA:  LDR             R1, [R0,#4]
24CEAC:  ADDS            R0, #8
24CEAE:  CMP             R1, #0
24CEB0:  BNE             loc_24CEA6
24CEB2:  B               loc_24CEE6
24CEB4:  VMOV.F32        S0, #20.0
24CEB8:  VLDR            S2, [R0]
24CEBC:  MOVS            R0, #0x41200000; x
24CEC2:  VDIV.F32        S0, S2, S0
24CEC6:  VMOV            R1, S0; y
24CECA:  BLX             powf
24CECE:  LDR.W           R1, =(ReverbBoost_ptr - 0x24CEDA)
24CED2:  VMOV            S2, R0
24CED6:  ADD             R1, PC; ReverbBoost_ptr
24CED8:  LDR             R1, [R1]; ReverbBoost
24CEDA:  VLDR            S0, [R1]
24CEDE:  VMUL.F32        S0, S2, S0
24CEE2:  VSTR            S0, [R1]
24CEE6:  LDR             R0, [R5]
24CEE8:  CBZ             R0, loc_24CEFA
24CEEA:  CMP             R0, #0x1C
24CEEC:  BEQ             loc_24CF38
24CEEE:  LDR             R0, [R4,#4]
24CEF0:  ADD.W           R1, R4, #8
24CEF4:  CMP             R0, #0
24CEF6:  MOV             R4, R1
24CEF8:  BNE             loc_24CEEA
24CEFA:  MOVS            R1, #0
24CEFC:  LDR.W           R0, =(EmulateEAXReverb_ptr - 0x24CF04)
24CF00:  ADD             R0, PC; EmulateEAXReverb_ptr
24CF02:  LDR             R2, [R0]; EmulateEAXReverb
24CF04:  LDR.W           R0, =(aAlsoftDrivers - 0x24CF0C); "ALSOFT_DRIVERS"
24CF08:  ADD             R0, PC; "ALSOFT_DRIVERS"
24CF0A:  STRB            R1, [R2]
24CF0C:  BLX             getenv
24CF10:  MOV             R4, R0
24CF12:  CMP             R4, #0
24CF14:  ITT NE
24CF16:  LDRBNE          R0, [R4]
24CF18:  CMPNE           R0, #0
24CF1A:  BNE             loc_24CF44
24CF1C:  CMP             R5, #0
24CF1E:  ITT NE
24CF20:  LDRNE           R1, [R5]
24CF22:  CMPNE           R1, #0
24CF24:  BEQ.W           loc_24D06C
24CF28:  ADDS            R0, R5, #4
24CF2A:  CMP             R1, #6
24CF2C:  BEQ             loc_24CF42
24CF2E:  LDR             R1, [R0,#4]
24CF30:  ADDS            R0, #8
24CF32:  CMP             R1, #0
24CF34:  BNE             loc_24CF2A
24CF36:  B               loc_24D06C
24CF38:  LDR             R1, [R4]
24CF3A:  CMP             R1, #0
24CF3C:  IT NE
24CF3E:  MOVNE           R1, #1
24CF40:  B               loc_24CEFC
24CF42:  LDR             R4, [R0]
24CF44:  MOV.W           R9, #0
24CF48:  MOV             R0, R4; s
24CF4A:  MOVS            R1, #0x2C ; ','; c
24CF4C:  BLX             strchr
24CF50:  MOV             R10, R4
24CF52:  MOV             R6, R0
24CF54:  LDRB.W          R11, [R10],#1
24CF58:  MOVS            R0, #0
24CF5A:  CMP.W           R11, #0x2D ; '-'
24CF5E:  IT NE
24CF60:  MOVNE           R10, R4
24CF62:  LDRB.W          R1, [R10]
24CF66:  CMP             R1, #0
24CF68:  IT NE
24CF6A:  CMPNE           R1, #0x2C ; ','
24CF6C:  BEQ             loc_24D04C
24CF6E:  CBZ             R6, loc_24CF76
24CF70:  SUB.W           R5, R6, R10
24CF74:  B               loc_24CF7E
24CF76:  MOV             R0, R10; char *
24CF78:  BLX             strlen
24CF7C:  MOV             R5, R0
24CF7E:  LDR.W           R0, =(off_68542C - 0x24CF8A); "opensl" ...
24CF82:  ADD.W           R1, R9, R9,LSL#3
24CF86:  ADD             R0, PC; off_68542C
24CF88:  ADD.W           R0, R0, R1,LSL#3
24CF8C:  LDR             R0, [R0,#4]
24CF8E:  CBZ             R0, loc_24CFDA
24CF90:  LDR.W           R0, =(off_68542C - 0x24CF9C); "opensl" ...
24CF94:  MOV             R8, R9
24CF96:  STR             R6, [SP,#0x440+var_428]
24CF98:  ADD             R0, PC; off_68542C
24CF9A:  STR             R1, [SP,#0x440+var_42C]
24CF9C:  ADD.W           R4, R0, R1,LSL#3
24CFA0:  STR.W           R8, [SP,#0x440+var_424]
24CFA4:  ADD.W           R9, R4, #0x4C ; 'L'
24CFA8:  LDR             R6, [R4]; "opensl" ...
24CFAA:  MOV             R0, R6; char *
24CFAC:  BLX             strlen
24CFB0:  CMP             R5, R0
24CFB2:  BNE             loc_24CFC0
24CFB4:  MOV             R0, R6; char *
24CFB6:  MOV             R1, R10; char *
24CFB8:  MOV             R2, R5; size_t
24CFBA:  BLX             strncmp
24CFBE:  CBZ             R0, loc_24CFDE
24CFC0:  LDR             R1, [R4,#0x4C]
24CFC2:  ADD.W           R0, R4, #0x48 ; 'H'
24CFC6:  ADD.W           R9, R9, #0x48 ; 'H'
24CFCA:  ADD.W           R8, R8, #1
24CFCE:  CMP             R1, #0
24CFD0:  MOV             R4, R0
24CFD2:  BNE             loc_24CFA8
24CFD4:  LDR.W           R9, [SP,#0x440+var_424]
24CFD8:  B               loc_24D048
24CFDA:  MOVS            R0, #1
24CFDC:  B               loc_24D04C
24CFDE:  CMP.W           R11, #0x2D ; '-'
24CFE2:  BNE             loc_24D004
24CFE4:  LDRD.W          R6, R4, [SP,#0x440+var_428]
24CFE8:  SUB.W           R0, R9, #0x4C ; 'L'; void *
24CFEC:  SUB.W           R1, R9, #4; void *
24CFF0:  MOVS            R2, #0x48 ; 'H'; size_t
24CFF2:  BLX             memcpy_0
24CFF6:  LDR.W           R0, [R9],#0x48
24CFFA:  CMP             R0, #0
24CFFC:  BNE             loc_24CFE8
24CFFE:  MOVS            R0, #1
24D000:  MOV             R9, R4
24D002:  B               loc_24D04C
24D004:  ADD             R0, SP, #0x440+var_420; void *
24D006:  MOV             R1, R4; void *
24D008:  MOVS            R2, #0x48 ; 'H'; size_t
24D00A:  BLX             memcpy_0
24D00E:  LDR.W           R9, [SP,#0x440+var_424]
24D012:  CMP             R8, R9
24D014:  BLE             loc_24D03A
24D016:  SUB.W           R5, R4, #0x48 ; 'H'
24D01A:  MOV             R0, R4; void *
24D01C:  MOVS            R2, #0x48 ; 'H'; size_t
24D01E:  MOV             R1, R5; void *
24D020:  BLX             memcpy_0
24D024:  SUB.W           R8, R8, #1
24D028:  MOV             R4, R5
24D02A:  CMP             R8, R9
24D02C:  BGT             loc_24D016
24D02E:  LDR.W           R0, =(off_68542C - 0x24D038); "opensl" ...
24D032:  LDR             R1, [SP,#0x440+var_42C]
24D034:  ADD             R0, PC; off_68542C
24D036:  ADD.W           R4, R0, R1,LSL#3
24D03A:  ADD             R1, SP, #0x440+var_420; void *
24D03C:  MOV             R0, R4; void *
24D03E:  MOVS            R2, #0x48 ; 'H'; size_t
24D040:  BLX             memcpy_0
24D044:  ADD.W           R9, R9, #1
24D048:  MOVS            R0, #1
24D04A:  LDR             R6, [SP,#0x440+var_428]
24D04C:  ADDS            R4, R6, #1
24D04E:  CMP             R6, #0
24D050:  BNE.W           loc_24CF48
24D054:  CBZ             R0, loc_24D06C
24D056:  LDR.W           R0, =(off_68542C - 0x24D066); "opensl" ...
24D05A:  ADD.W           R1, R9, R9,LSL#3
24D05E:  VMOV.I32        Q8, #0
24D062:  ADD             R0, PC; off_68542C
24D064:  ADD.W           R0, R0, R1,LSL#3
24D068:  VST1.32         {D16-D17}, [R0]
24D06C:  LDR.W           R0, =(off_68542C - 0x24D074); "opensl" ...
24D070:  ADD             R0, PC; off_68542C
24D072:  LDR             R1, [R0,#(off_685430 - 0x68542C)]; alc_opensl_init
24D074:  CMP             R1, #0
24D076:  BEQ             loc_24D176
24D078:  LDR.W           R0, =(LogLevel_ptr - 0x24D086)
24D07C:  ADR             R5, aAlcInitconfig; "alc_initconfig"
24D07E:  LDR.W           R4, =(off_68542C - 0x24D090); "opensl" ...
24D082:  ADD             R0, PC; LogLevel_ptr
24D084:  LDR.W           R9, =(dword_6D62E0 - 0x24D096)
24D088:  LDR.W           R10, =(dword_6D6298 - 0x24D09C)
24D08C:  ADD             R4, PC; off_68542C
24D08E:  LDR.W           R11, [R0]; LogLevel
24D092:  ADD             R9, PC; dword_6D62E0
24D094:  LDR.W           R0, =(LogLevel_ptr - 0x24D09E)
24D098:  ADD             R10, PC; dword_6D6298
24D09A:  ADD             R0, PC; LogLevel_ptr
24D09C:  LDR             R6, [R0]; LogLevel
24D09E:  LDR.W           R0, =(LogLevel_ptr - 0x24D0A6)
24D0A2:  ADD             R0, PC; LogLevel_ptr
24D0A4:  LDR.W           R8, [R0]; LogLevel
24D0A8:  LDR.W           R0, [R10]
24D0AC:  CMP             R0, #0
24D0AE:  ITT NE
24D0B0:  LDRNE.W         R0, [R9]
24D0B4:  CMPNE           R0, #0
24D0B6:  BNE             loc_24D176
24D0B8:  ADD.W           R0, R4, #0x10
24D0BC:  BLX             R1
24D0BE:  LDR.W           R1, [R11]
24D0C2:  CMP             R0, #0
24D0C4:  BEQ             loc_24D156
24D0C6:  CMP             R1, #3
24D0C8:  BCC             loc_24D0DE
24D0CA:  LDR.W           R0, =(aIi - 0x24D0DA); "(II)"
24D0CE:  MOV             R1, R5
24D0D0:  LDR.W           R2, =(aInitializedBac - 0x24D0DC); "Initialized backend \"%s\"\n"
24D0D4:  LDR             R3, [R4]; "opensl" ...
24D0D6:  ADD             R0, PC; "(II)"
24D0D8:  ADD             R2, PC; "Initialized backend \"%s\"\n"
24D0DA:  BLX             j_al_print
24D0DE:  LDR             R0, [R4,#0x10]
24D0E0:  CBZ             R0, loc_24D11C
24D0E2:  LDR.W           R0, =(dword_6D6298 - 0x24D0EA)
24D0E6:  ADD             R0, PC; dword_6D6298
24D0E8:  LDR             R0, [R0]
24D0EA:  CBNZ            R0, loc_24D11C
24D0EC:  LDR.W           R0, =(dword_6D6298 - 0x24D0F8)
24D0F0:  MOV             R1, R4; void *
24D0F2:  MOVS            R2, #0x48 ; 'H'; size_t
24D0F4:  ADD             R0, PC; dword_6D6298 ; void *
24D0F6:  BLX             memcpy_0
24D0FA:  LDR.W           R0, [R8]
24D0FE:  CMP             R0, #3
24D100:  BCC             loc_24D11C
24D102:  LDR.W           R0, =(dword_6D6298 - 0x24D110)
24D106:  MOV             R1, R5
24D108:  LDR.W           R2, =(aAddedSForPlayb - 0x24D112); "Added \"%s\" for playback\n"
24D10C:  ADD             R0, PC; dword_6D6298
24D10E:  ADD             R2, PC; "Added \"%s\" for playback\n"
24D110:  LDR             R3, [R0]
24D112:  LDR.W           R0, =(aIi - 0x24D11A); "(II)"
24D116:  ADD             R0, PC; "(II)"
24D118:  BLX             j_al_print
24D11C:  LDR             R0, [R4,#0x24]
24D11E:  CBZ             R0, loc_24D16E
24D120:  LDR.W           R0, =(dword_6D62E0 - 0x24D128)
24D124:  ADD             R0, PC; dword_6D62E0
24D126:  LDR             R0, [R0]
24D128:  CBNZ            R0, loc_24D16E
24D12A:  LDR.W           R0, =(dword_6D62E0 - 0x24D136)
24D12E:  MOV             R1, R4; void *
24D130:  MOVS            R2, #0x48 ; 'H'; size_t
24D132:  ADD             R0, PC; dword_6D62E0 ; void *
24D134:  BLX             memcpy_0
24D138:  LDR             R0, [R6]
24D13A:  CMP             R0, #3
24D13C:  BCC             loc_24D16E
24D13E:  LDR.W           R0, =(dword_6D62E0 - 0x24D14C)
24D142:  MOV             R1, R5
24D144:  LDR.W           R2, =(aAddedSForCaptu - 0x24D14E); "Added \"%s\" for capture\n"
24D148:  ADD             R0, PC; dword_6D62E0
24D14A:  ADD             R2, PC; "Added \"%s\" for capture\n"
24D14C:  LDR             R3, [R0]
24D14E:  LDR.W           R0, =(aIi - 0x24D156); "(II)"
24D152:  ADD             R0, PC; "(II)"
24D154:  B               loc_24D16A
24D156:  CMP             R1, #2
24D158:  BCC             loc_24D16E
24D15A:  LDR.W           R0, =(aWw - 0x24D16A); "(WW)"
24D15E:  MOV             R1, R5
24D160:  LDR.W           R2, =(aFailedToInitia_2 - 0x24D16C); "Failed to initialize backend \"%s\"\n"
24D164:  LDR             R3, [R4]; "opensl" ...
24D166:  ADD             R0, PC; "(WW)"
24D168:  ADD             R2, PC; "Failed to initialize backend \"%s\"\n"
24D16A:  BLX             j_al_print
24D16E:  LDR             R1, [R4,#0x4C]
24D170:  ADDS            R4, #0x48 ; 'H'
24D172:  CMP             R1, #0
24D174:  BNE             loc_24D0A8
24D176:  LDR.W           R0, =(off_68554C - 0x24D17E); "loopback" ...
24D17A:  ADD             R0, PC; off_68554C
24D17C:  LDR             R1, [R0,#(off_685550 - 0x68554C)]; alc_loopback_init
24D17E:  ADDS            R0, #0x10
24D180:  BLX             R1; alc_loopback_init
24D182:  LDR             R1, =(aExcludefx - 0x24D18C); "excludefx"
24D184:  MOVS            R0, #0
24D186:  LDR             R2, =(byte_61CD7E - 0x24D18E)
24D188:  ADD             R1, PC; "excludefx"
24D18A:  ADD             R2, PC; byte_61CD7E
24D18C:  BLX             j_GetConfigValue
24D190:  MOV             R4, R0
24D192:  LDRB            R6, [R4]
24D194:  CMP             R6, #0
24D196:  BEQ.W           loc_24D2AE
24D19A:  LDR             R0, =(DisabledEffects_ptr - 0x24D1A8)
24D19C:  MOV.W           R10, #1
24D1A0:  LDR.W           R11, =(aDedicated - 0x24D1AA); "dedicated"
24D1A4:  ADD             R0, PC; DisabledEffects_ptr
24D1A6:  ADD             R11, PC; "dedicated"
24D1A8:  LDR             R0, [R0]; DisabledEffects
24D1AA:  STR             R0, [SP,#0x440+var_428]
24D1AC:  LDR             R0, =(DisabledEffects_ptr - 0x24D1B2)
24D1AE:  ADD             R0, PC; DisabledEffects_ptr
24D1B0:  LDR             R0, [R0]; DisabledEffects
24D1B2:  STR             R0, [SP,#0x440+var_424]
24D1B4:  LDR             R0, =(DisabledEffects_ptr - 0x24D1BA)
24D1B6:  ADD             R0, PC; DisabledEffects_ptr
24D1B8:  LDR             R0, [R0]; DisabledEffects
24D1BA:  STR             R0, [SP,#0x440+var_42C]
24D1BC:  LDR             R0, =(DisabledEffects_ptr - 0x24D1C2)
24D1BE:  ADD             R0, PC; DisabledEffects_ptr
24D1C0:  LDR             R0, [R0]; DisabledEffects
24D1C2:  STR             R0, [SP,#0x440+var_430]
24D1C4:  LDR             R0, =(DisabledEffects_ptr - 0x24D1CA)
24D1C6:  ADD             R0, PC; DisabledEffects_ptr
24D1C8:  LDR             R0, [R0]; DisabledEffects
24D1CA:  STR             R0, [SP,#0x440+var_434]
24D1CC:  LDR             R0, =(DisabledEffects_ptr - 0x24D1D2)
24D1CE:  ADD             R0, PC; DisabledEffects_ptr
24D1D0:  LDR             R5, [R0]; DisabledEffects
24D1D2:  B               loc_24D1DA
24D1D4:  ADD.W           R4, R8, #1
24D1D8:  LDRB            R6, [R4]
24D1DA:  MOV             R0, R4; s
24D1DC:  MOVS            R1, #0x2C ; ','; c
24D1DE:  BLX             strchr
24D1E2:  MOV             R8, R0
24D1E4:  CMP             R8, R4
24D1E6:  IT NE
24D1E8:  MOVSNE.W        R0, R6,LSL#24
24D1EC:  BEQ             loc_24D25E
24D1EE:  CMP.W           R8, #0
24D1F2:  BEQ             loc_24D266
24D1F4:  SUB.W           R9, R8, R4
24D1F8:  CMP.W           R9, #4
24D1FC:  BEQ             loc_24D274
24D1FE:  CMP.W           R9, #6
24D202:  BEQ             loc_24D292
24D204:  CMP.W           R9, #9
24D208:  BNE             loc_24D25E
24D20A:  LDR             R0, =(aEaxreverb - 0x24D214); "eaxreverb"
24D20C:  MOV             R1, R4; char *
24D20E:  MOV             R2, R9; size_t
24D210:  ADD             R0, PC; "eaxreverb"
24D212:  BLX             strncmp
24D216:  CMP             R0, #0
24D218:  MOV             R1, R4; char *
24D21A:  ITT EQ
24D21C:  LDREQ           R0, [SP,#0x440+var_42C]
24D21E:  STRBEQ.W        R10, [R0]
24D222:  MOV             R2, R9; size_t
24D224:  LDR             R0, =(aModulator - 0x24D22A); "modulator"
24D226:  ADD             R0, PC; "modulator"
24D228:  BLX             strncmp
24D22C:  CMP             R0, #0
24D22E:  MOV             R1, R4; char *
24D230:  ITT EQ
24D232:  LDREQ           R0, [SP,#0x440+var_430]
24D234:  STRBEQ.W        R10, [R0,#3]
24D238:  MOV             R2, R9; size_t
24D23A:  LDR             R0, =(aDedicated - 0x24D240); "dedicated"
24D23C:  ADD             R0, PC; "dedicated"
24D23E:  BLX             strncmp
24D242:  CMP             R0, #0
24D244:  MOV             R1, R4; char *
24D246:  ITT EQ
24D248:  LDREQ           R0, [SP,#0x440+var_434]
24D24A:  STRBEQ.W        R10, [R0,#4]
24D24E:  MOV             R2, R9; size_t
24D250:  MOV             R0, R11; char *
24D252:  BLX             strncmp
24D256:  CMP             R0, #0
24D258:  IT EQ
24D25A:  STRBEQ.W        R10, [R5,#(byte_A98FEC - 0xA98FE8)]
24D25E:  CMP.W           R8, #0
24D262:  BNE             loc_24D1D4
24D264:  B               loc_24D2AE
24D266:  MOV             R0, R4; char *
24D268:  BLX             strlen
24D26C:  MOV             R9, R0
24D26E:  CMP.W           R9, #4
24D272:  BNE             loc_24D1FE
24D274:  LDR             R0, =(aEcho - 0x24D27E); "echo"
24D276:  MOV             R1, R4; char *
24D278:  MOV             R2, R9; size_t
24D27A:  ADD             R0, PC; "echo"
24D27C:  BLX             strncmp
24D280:  CMP             R0, #0
24D282:  ITT EQ
24D284:  LDREQ           R0, [SP,#0x440+var_428]
24D286:  STRBEQ.W        R10, [R0,#2]
24D28A:  CMP.W           R8, #0
24D28E:  BNE             loc_24D1D4
24D290:  B               loc_24D2AE
24D292:  LDR             R0, =(aDefaultReverb+8 - 0x24D29C); "reverb"
24D294:  MOV             R1, R4; char *
24D296:  MOV             R2, R9; size_t
24D298:  ADD             R0, PC; "reverb"
24D29A:  BLX             strncmp
24D29E:  CMP             R0, #0
24D2A0:  ITT EQ
24D2A2:  LDREQ           R0, [SP,#0x440+var_424]
24D2A4:  STRBEQ.W        R10, [R0,#1]
24D2A8:  CMP.W           R8, #0
24D2AC:  BNE             loc_24D1D4
24D2AE:  LDR             R1, =(dword_6D6350 - 0x24D2B6)
24D2B0:  LDR             R0, =(sub_264914+1 - 0x24D2BA)
24D2B2:  ADD             R1, PC; dword_6D6350
24D2B4:  LDR             R2, =(sub_2648CC+1 - 0x24D2C0)
24D2B6:  ADD             R0, PC; sub_264914
24D2B8:  LDR             R6, =(sub_2649A4+1 - 0x24D2C6)
24D2BA:  LDR             R4, =(sub_264A34+1 - 0x24D2CA)
24D2BC:  ADD             R2, PC; sub_2648CC
24D2BE:  STR.W           R0, [R1,#(dword_6D63E8 - 0x6D6350)]
24D2C2:  ADD             R6, PC; sub_2649A4
24D2C4:  LDR             R3, =(sub_264AC4+1 - 0x24D2D2)
24D2C6:  ADD             R4, PC; sub_264A34
24D2C8:  LDR             R0, =(aAlsoftDefaultR - 0x24D2D6); "ALSOFT_DEFAULT_REVERB"
24D2CA:  LDR.W           LR, =(sub_26495C+1 - 0x24D2DC)
24D2CE:  ADD             R3, PC; sub_264AC4
24D2D0:  LDR             R5, =(sub_2649EC+1 - 0x24D2E4)
24D2D2:  ADD             R0, PC; "ALSOFT_DEFAULT_REVERB"
24D2D4:  LDR.W           R12, =(sub_264A7C+1 - 0x24D2EA)
24D2D8:  ADD             LR, PC; sub_26495C
24D2DA:  STR.W           R2, [R1,#(dword_6D63E4 - 0x6D6350)]
24D2DE:  MOVS            R2, #0
24D2E0:  ADD             R5, PC; sub_2649EC
24D2E2:  STRD.W          LR, R6, [R1,#(dword_6D63EC - 0x6D6350)]
24D2E6:  ADD             R12, PC; sub_264A7C
24D2E8:  STRD.W          R5, R4, [R1,#(dword_6D63F4 - 0x6D6350)]
24D2EC:  STRD.W          R12, R3, [R1,#(dword_6D63FC - 0x6D6350)]
24D2F0:  STR             R2, [R1]
24D2F2:  BLX             getenv
24D2F6:  CMP             R0, #0
24D2F8:  ITT NE
24D2FA:  LDRBNE          R1, [R0]
24D2FC:  CMPNE           R1, #0
24D2FE:  BNE             loc_24D324
24D300:  LDR             R0, =(g_mob_configGlobals_ptr - 0x24D306)
24D302:  ADD             R0, PC; g_mob_configGlobals_ptr
24D304:  LDR             R0, [R0]; g_mob_configGlobals
24D306:  LDR             R0, [R0]
24D308:  CMP             R0, #0
24D30A:  ITT NE
24D30C:  LDRNE           R1, [R0]
24D30E:  CMPNE           R1, #0
24D310:  BEQ             loc_24D32C
24D312:  ADDS            R0, #4
24D314:  CMP             R1, #7
24D316:  BEQ             loc_24D322
24D318:  LDR             R1, [R0,#4]
24D31A:  ADDS            R0, #8
24D31C:  CMP             R1, #0
24D31E:  BNE             loc_24D314
24D320:  B               loc_24D32C
24D322:  LDR             R0, [R0]
24D324:  LDR             R1, =(dword_6D6350 - 0x24D32A)
24D326:  ADD             R1, PC; dword_6D6350
24D328:  BLX             j_LoadReverbPreset
24D32C:  LDR             R0, =(__stack_chk_guard_ptr - 0x24D336)
24D32E:  LDR.W           R1, [R7,#var_20]
24D332:  ADD             R0, PC; __stack_chk_guard_ptr
24D334:  LDR             R0, [R0]; __stack_chk_guard
24D336:  LDR             R0, [R0]
24D338:  SUBS            R0, R0, R1
24D33A:  ITTTT EQ
24D33C:  ADDEQ.W         SP, SP, #0x420
24D340:  ADDEQ           SP, SP, #4
24D342:  POPEQ.W         {R8-R11}
24D346:  POPEQ           {R4-R7,PC}
24D348:  BLX             __stack_chk_fail
24D34C:  LDR             R0, =(DefaultResampler_ptr - 0x24D354)
24D34E:  MOVS            R1, #1
24D350:  ADD             R0, PC; DefaultResampler_ptr
24D352:  B               loc_24CD6C
24D354:  LDR             R0, =(DefaultResampler_ptr - 0x24D35C)
24D356:  MOVS            R1, #2
24D358:  ADD             R0, PC; DefaultResampler_ptr
24D35A:  B               loc_24CD6C
24D35C:  LDR             R0, =(LogLevel_ptr - 0x24D362)
24D35E:  ADD             R0, PC; LogLevel_ptr
24D360:  LDR             R0, [R0]; LogLevel
24D362:  LDR             R0, [R0]
24D364:  CMP             R0, #2
24D366:  BCC.W           loc_24CD70
24D36A:  LDR             R0, =(aWw - 0x24D376); "(WW)"
24D36C:  ADR             R1, aAlcInitconfig; "alc_initconfig"
24D36E:  LDR             R2, =(aInvalidResampl - 0x24D378); "Invalid resampler: %s\n"
24D370:  MOV             R3, R4
24D372:  ADD             R0, PC; "(WW)"
24D374:  ADD             R2, PC; "Invalid resampler: %s\n"
24D376:  BLX             j_al_print
24D37A:  B               loc_24CD70
