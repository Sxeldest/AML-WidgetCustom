; =========================================================
; Game Engine Function: sub_1BBB90
; Address            : 0x1BBB90 - 0x1BC434
; =========================================================

1BBB90:  PUSH            {R4-R11,LR}
1BBB94:  ADD             R11, SP, #0x1C
1BBB98:  SUB             SP, SP, #0x6C
1BBB9C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BBBA8)
1BBBA0:  LDR             R0, [PC,R0]; __stack_chk_guard
1BBBA4:  LDR             R0, [R0]
1BBBA8:  STR             R0, [R11,#var_20]
1BBBAC:  ADR             R0, aAlsoftLoglevel; "ALSOFT_LOGLEVEL"
1BBBB0:  BL              getenv
1BBBB4:  CMP             R0, #0
1BBBB8:  STR             R0, [R11,#s1]
1BBBBC:  BEQ             loc_1BBBDC
1BBBC0:  MOV             R1, #0; endptr
1BBBC4:  MOV             R2, #0; base
1BBBC8:  BL              strtol
1BBBCC:  CMP             R0, #4
1BBBD0:  LDRLS           R1, =(LogLevel_ptr - 0x1BBBDC)
1BBBD4:  LDRLS           R1, [PC,R1]; LogLevel
1BBBD8:  STRLS           R0, [R1]
1BBBDC:  ADR             R0, aAlsoftLogfile; "ALSOFT_LOGFILE"
1BBBE0:  BL              getenv
1BBBE4:  MOV             R4, R0
1BBBE8:  CMP             R4, #0
1BBBEC:  STR             R4, [R11,#s1]
1BBBF0:  LDRBNE          R0, [R4]
1BBBF4:  CMPNE           R0, #0
1BBBF8:  BEQ             loc_1BBC44
1BBBFC:  ADR             R1, aWat; "wat"
1BBC00:  MOV             R0, R4; filename
1BBC04:  BL              fopen
1BBC08:  CMP             R0, #0
1BBC0C:  BEQ             loc_1BBC20
1BBC10:  LDR             R1, =(LogFile_ptr - 0x1BBC1C)
1BBC14:  LDR             R1, [PC,R1]; LogFile
1BBC18:  STR             R0, [R1]
1BBC1C:  B               loc_1BBC44
1BBC20:  LDR             R0, =(LogLevel_ptr - 0x1BBC2C)
1BBC24:  LDR             R0, [PC,R0]; LogLevel
1BBC28:  LDR             R0, [R0]
1BBC2C:  CMP             R0, #0
1BBC30:  BEQ             loc_1BBC44
1BBC34:  ADR             R0, aAlcInitconfig; "alc_initconfig"
1BBC38:  ADR             R1, aFailedToOpenLo; "Failed to open log file '%s'\n"
1BBC3C:  MOV             R2, R4
1BBC40:  BL              j_al_print
1BBC44:  BL              j_ReadALConfig
1BBC48:  BL              j_InitHrtf
1BBC4C:  LDR             R0, =(RTPrioLevel_ptr - 0x1BBC58)
1BBC50:  LDR             R2, [PC,R0]; RTPrioLevel
1BBC54:  MOV             R0, #0
1BBC58:  STR             R0, [R2]
1BBC5C:  ADR             R1, aRtPrio; "rt-prio"
1BBC60:  MOV             R0, #0
1BBC64:  BL              j_ConfigValueInt
1BBC68:  ADR             R1, aResampler; "resampler"
1BBC6C:  SUB             R2, R11, #-s1
1BBC70:  MOV             R0, #0
1BBC74:  BL              j_ConfigValueStr
1BBC78:  CMP             R0, #0
1BBC7C:  BEQ             loc_1BBD1C
1BBC80:  LDR             R4, [R11,#s1]
1BBC84:  ADR             R1, aPoint; "point"
1BBC88:  MOV             R0, R4; s1
1BBC8C:  BL              strcasecmp
1BBC90:  CMP             R0, #0
1BBC94:  BEQ             loc_1BBD0C
1BBC98:  ADR             R1, aNone; "none"
1BBC9C:  MOV             R0, R4; s1
1BBCA0:  BL              strcasecmp
1BBCA4:  CMP             R0, #0
1BBCA8:  BEQ             loc_1BBD0C
1BBCAC:  ADR             R1, aLinear; "linear"
1BBCB0:  MOV             R0, R4; s1
1BBCB4:  BL              strcasecmp
1BBCB8:  CMP             R0, #0
1BBCBC:  BEQ             loc_1BC3EC
1BBCC0:  ADR             R1, aCubic; "cubic"
1BBCC4:  MOV             R0, R4; s1
1BBCC8:  BL              strcasecmp
1BBCCC:  CMP             R0, #0
1BBCD0:  BEQ             loc_1BC3FC
1BBCD4:  ADD             R1, SP, #0x88+endptr; endptr
1BBCD8:  MOV             R0, R4; nptr
1BBCDC:  MOV             R2, #0; base
1BBCE0:  BL              strtol
1BBCE4:  CMP             R0, #2
1BBCE8:  BHI             loc_1BC40C
1BBCEC:  LDR             R1, [SP,#0x88+endptr]
1BBCF0:  LDRB            R1, [R1]
1BBCF4:  CMP             R1, #0
1BBCF8:  BNE             loc_1BC40C
1BBCFC:  LDR             R1, =(DefaultResampler_ptr - 0x1BBD08)
1BBD00:  LDR             R1, [PC,R1]; DefaultResampler
1BBD04:  STR             R0, [R1]
1BBD08:  B               loc_1BBD1C
1BBD0C:  LDR             R0, =(DefaultResampler_ptr - 0x1BBD1C)
1BBD10:  MOV             R1, #0
1BBD14:  LDR             R0, [PC,R0]; DefaultResampler
1BBD18:  STR             R1, [R0]
1BBD1C:  LDR             R0, =(byte_382798 - 0x1BBD28)
1BBD20:  LDRB            R0, [PC,R0]; byte_382798
1BBD24:  CMP             R0, #0
1BBD28:  BNE             loc_1BBD44
1BBD2C:  ADR             R1, aTrapAlcError; "trap-alc-error"
1BBD30:  MOV             R0, #0
1BBD34:  MOV             R2, #0
1BBD38:  BL              j_GetConfigValueBool
1BBD3C:  LDR             R1, =(byte_382798 - 0x1BBD48)
1BBD40:  STRB            R0, [PC,R1]; byte_382798
1BBD44:  LDR             R0, =(TrapALError_ptr - 0x1BBD50)
1BBD48:  LDR             R0, [PC,R0]; TrapALError
1BBD4C:  LDRB            R0, [R0]
1BBD50:  CMP             R0, #0
1BBD54:  BNE             loc_1BBD78
1BBD58:  LDR             R0, =(aTrapAlError - 0x1BBD68); "trap-al-error" ...
1BBD5C:  MOV             R2, #0
1BBD60:  ADD             R1, PC, R0; "trap-al-error"
1BBD64:  MOV             R0, #0
1BBD68:  BL              j_GetConfigValueBool
1BBD6C:  LDR             R1, =(TrapALError_ptr - 0x1BBD78)
1BBD70:  LDR             R1, [PC,R1]; TrapALError
1BBD74:  STRB            R0, [R1]
1BBD78:  LDR             R0, =(aReverb - 0x1BBD8C); "reverb" ...
1BBD7C:  SUB             R2, R11, #-var_2C
1BBD80:  LDR             R1, =(aBoost - 0x1BBD90); "boost" ...
1BBD84:  ADD             R0, PC, R0; "reverb"
1BBD88:  ADD             R1, PC, R1; "boost"
1BBD8C:  BL              j_ConfigValueFloat
1BBD90:  CMP             R0, #0
1BBD94:  BEQ             loc_1BBDCC
1BBD98:  VLDR            S0, =0.05
1BBD9C:  MOVW            R0, #0
1BBDA0:  VLDR            S2, [R11,#var_2C]
1BBDA4:  MOVT            R0, #0x4120; x
1BBDA8:  VMUL.F32        S0, S2, S0
1BBDAC:  VMOV            R1, S0; y
1BBDB0:  BL              powf
1BBDB4:  LDR             R1, =(ReverbBoost_ptr - 0x1BBDC4)
1BBDB8:  VMOV            S2, R0
1BBDBC:  LDR             R1, [PC,R1]; ReverbBoost
1BBDC0:  VLDR            S0, [R1]
1BBDC4:  VMUL.F32        S0, S0, S2
1BBDC8:  VSTR            S0, [R1]
1BBDCC:  LDR             R0, =(aReverb - 0x1BBDE4); "reverb" ...
1BBDD0:  MOV             R2, #0
1BBDD4:  LDR             R1, =(aEmulateEax - 0x1BBDE8); "emulate-eax" ...
1BBDD8:  MOV             R4, #0
1BBDDC:  ADD             R0, PC, R0; "reverb"
1BBDE0:  ADD             R1, PC, R1; "emulate-eax"
1BBDE4:  BL              j_GetConfigValueBool
1BBDE8:  LDR             R1, =(EmulateEAXReverb_ptr - 0x1BBDF8)
1BBDEC:  LDR             R2, =(aDrivers - 0x1BBE00); "drivers" ...
1BBDF0:  LDR             R1, [PC,R1]; EmulateEAXReverb
1BBDF4:  STRB            R0, [R1]
1BBDF8:  ADD             R1, PC, R2; "drivers"
1BBDFC:  SUB             R2, R11, #-s
1BBE00:  MOV             R0, #0
1BBE04:  BL              j_ConfigValueStr
1BBE08:  CMP             R0, #0
1BBE0C:  BEQ             loc_1BC0C0
1BBE10:  LDR             R0, =(off_23C958 - 0x1BBE20); "android" ...
1BBE14:  LDR             R6, [R11,#s]
1BBE18:  ADD             R0, PC, R0; off_23C958
1BBE1C:  STR             R0, [SP,#0x88+var_74]
1BBE20:  LDR             R0, =(off_23C958 - 0x1BBE2C); "android" ...
1BBE24:  ADD             R0, PC, R0; off_23C958
1BBE28:  STR             R0, [SP,#0x88+var_78]
1BBE2C:  LDR             R0, =(off_23C958 - 0x1BBE38); "android" ...
1BBE30:  ADD             R0, PC, R0; off_23C958
1BBE34:  STR             R0, [SP,#0x88+var_80]
1BBE38:  B               loc_1BBEC8
1BBE3C:  MOV             R1, R10
1BBE40:  ADD             R0, SP, #0x88+endptr
1BBE44:  LDM             R1!, {R2,R3,R6,R7}
1BBE48:  STM             R0!, {R2,R3,R6,R7}
1BBE4C:  LDM             R1!, {R2,R3,R5-R7}
1BBE50:  STM             R0!, {R2,R3,R5-R7}
1BBE54:  LDM             R1, {R2,R3,R5-R7}
1BBE58:  STM             R0, {R2,R3,R5-R7}
1BBE5C:  LDR             R4, [SP,#0x88+var_6C]
1BBE60:  CMP             R8, R4
1BBE64:  BLE             loc_1BBEA4
1BBE68:  SUB             R0, R10, #0x38 ; '8'
1BBE6C:  SUB             R8, R8, #1
1BBE70:  CMP             R8, R4
1BBE74:  MOV             R1, R0
1BBE78:  LDM             R1!, {R2,R3,R6,R7}
1BBE7C:  STM             R10!, {R2,R3,R6,R7}
1BBE80:  LDM             R1!, {R2,R3,R5-R7}
1BBE84:  STM             R10!, {R2,R3,R5-R7}
1BBE88:  LDM             R1, {R2,R3,R5-R7}
1BBE8C:  STM             R10, {R2,R3,R5-R7}
1BBE90:  MOV             R10, R0
1BBE94:  BGT             loc_1BBE68
1BBE98:  LDR             R1, [SP,#0x88+var_7C]
1BBE9C:  LDR             R0, [SP,#0x88+var_80]
1BBEA0:  ADD             R10, R0, R1,LSL#3
1BBEA4:  ADD             R0, SP, #0x88+endptr
1BBEA8:  ADD             R4, R4, #1
1BBEAC:  LDM             R0!, {R1-R3,R7}
1BBEB0:  STM             R10!, {R1-R3,R7}
1BBEB4:  LDM             R0!, {R1-R3,R6,R7}
1BBEB8:  STM             R10!, {R1-R3,R6,R7}
1BBEBC:  LDM             R0, {R1-R3,R6,R7}
1BBEC0:  STM             R10, {R1-R3,R6,R7}
1BBEC4:  B               loc_1BC084
1BBEC8:  MOV             R0, R6; s
1BBECC:  MOV             R1, #0x2C ; ','; c
1BBED0:  STR             R6, [R11,#s]
1BBED4:  BL              strchr
1BBED8:  LDRB            R9, [R6]
1BBEDC:  MOV             R7, R0
1BBEE0:  CMP             R9, #0x2D ; '-'
1BBEE4:  BNE             loc_1BBEF8
1BBEE8:  ADD             R5, R6, #1
1BBEEC:  STR             R5, [R11,#s]
1BBEF0:  LDRB            R0, [R6,#1]
1BBEF4:  B               loc_1BBF00
1BBEF8:  MOV             R0, R9
1BBEFC:  MOV             R5, R6
1BBF00:  CMP             R0, #0
1BBF04:  MOV             R1, #0
1BBF08:  CMPNE           R0, #0x2C ; ','
1BBF0C:  BEQ             loc_1BC08C
1BBF10:  CMP             R7, #0
1BBF14:  BEQ             loc_1BBF30
1BBF18:  SUB             R6, R7, R5
1BBF1C:  B               loc_1BBF3C
1BBF20:  DCB "ALSOFT_LOGLEVEL",0
1BBF30:  MOV             R0, R5; s
1BBF34:  BL              strlen
1BBF38:  MOV             R6, R0
1BBF3C:  RSB             R2, R4, R4,LSL#3
1BBF40:  LDR             R0, [SP,#0x88+var_74]
1BBF44:  MOV             R1, #1
1BBF48:  ADD             R0, R0, R2,LSL#3
1BBF4C:  LDR             R0, [R0,#4]
1BBF50:  CMP             R0, #0
1BBF54:  BEQ             loc_1BC08C
1BBF58:  LDR             R0, [SP,#0x88+var_78]
1BBF5C:  MOV             R8, R4
1BBF60:  STR             R7, [SP,#0x88+var_70]
1BBF64:  ADD             R10, R0, R2,LSL#3
1BBF68:  STR             R2, [SP,#0x88+var_7C]
1BBF6C:  ADD             R4, R10, #0x3C ; '<'
1BBF70:  STR             R8, [SP,#0x88+var_6C]
1BBF74:  LDR             R7, [R10]
1BBF78:  MOV             R0, R7; s
1BBF7C:  BL              strlen
1BBF80:  CMP             R6, R0
1BBF84:  BNE             loc_1BBFA0
1BBF88:  MOV             R0, R7; s1
1BBF8C:  MOV             R1, R5; s2
1BBF90:  MOV             R2, R6; n
1BBF94:  BL              strncmp
1BBF98:  CMP             R0, #0
1BBF9C:  BEQ             loc_1BC04C
1BBFA0:  LDR             R1, [R10,#0x3C]
1BBFA4:  ADD             R0, R10, #0x38 ; '8'
1BBFA8:  ADD             R4, R4, #0x38 ; '8'
1BBFAC:  ADD             R8, R8, #1
1BBFB0:  CMP             R1, #0
1BBFB4:  MOV             R10, R0
1BBFB8:  BNE             loc_1BBF74
1BBFBC:  B               loc_1BC080
1BBFC0:  DCB "ALSOFT_LOGFILE",0
1BBFCF:  DCB 0
1BBFD0:  DCB "wat",0
1BBFD4:  DCB "alc_initconfig",0
1BBFE3:  DCB 0
1BBFE4:  DCB "Failed to open log file '%s'",0xA,0
1BC002:  DCW 0
1BC004:  DCB "rt-prio",0
1BC00C:  DCB "resampler",0
1BC016:  DCW 0
1BC018:  DCB "point",0
1BC01E:  DCW 0
1BC020:  DCB "none",0
1BC025:  DCB 0, 0, 0
1BC028:  DCB "linear",0
1BC02F:  DCB 0
1BC030:  DCB "cubic",0
1BC036:  DCW 0
1BC038:  DCB "trap-alc-error",0
1BC047:  DCB 0
1BC048:  DCFS 0.05
1BC04C:  CMP             R9, #0x2D ; '-'
1BC050:  BNE             loc_1BBE3C
1BC054:  SUB             R0, R4, #4
1BC058:  SUB             R1, R4, #0x3C ; '<'
1BC05C:  LDM             R0!, {R2,R3,R6,R7}
1BC060:  STM             R1!, {R2,R3,R6,R7}
1BC064:  LDM             R0!, {R2,R3,R5-R7}
1BC068:  STM             R1!, {R2,R3,R5-R7}
1BC06C:  LDM             R0, {R2,R3,R5-R7}
1BC070:  STM             R1, {R2,R3,R5-R7}
1BC074:  LDR             R0, [R4],#0x38
1BC078:  CMP             R0, #0
1BC07C:  BNE             loc_1BC054
1BC080:  LDR             R4, [SP,#0x88+var_6C]
1BC084:  LDR             R7, [SP,#0x88+var_70]
1BC088:  MOV             R1, #1
1BC08C:  ADD             R6, R7, #1
1BC090:  CMP             R7, #0
1BC094:  BNE             loc_1BBEC8
1BC098:  CMP             R1, #0
1BC09C:  BEQ             loc_1BC0C0
1BC0A0:  LDR             R0, =(off_23C958 - 0x1BC0B4); "android" ...
1BC0A4:  RSB             R1, R4, R4,LSL#3
1BC0A8:  MOV             R2, #0
1BC0AC:  ADD             R0, PC, R0; off_23C958
1BC0B0:  STR             R2, [R0,R1,LSL#3]!
1BC0B4:  STR             R2, [R0,#4]
1BC0B8:  STR             R2, [R0,#8]
1BC0BC:  STR             R2, [R0,#0xC]
1BC0C0:  LDR             R0, =(off_23C958 - 0x1BC0CC); "android" ...
1BC0C4:  ADD             R0, PC, R0; off_23C958
1BC0C8:  LDR             R1, [R0,#(off_23C95C - 0x23C958)]; alc_android_init
1BC0CC:  CMP             R1, #0
1BC0D0:  BEQ             loc_1BC274
1BC0D4:  LDR             R0, =(off_23C958 - 0x1BC0E4); "android" ...
1BC0D8:  LDR             R2, =(dword_3827E0 - 0x1BC0EC)
1BC0DC:  ADD             R6, PC, R0; off_23C958
1BC0E0:  LDR             R0, =(LogLevel_ptr - 0x1BC0F8)
1BC0E4:  ADD             R2, PC, R2; dword_3827E0
1BC0E8:  STR             R2, [SP,#0x88+var_70]
1BC0EC:  LDR             R2, =(dword_3827A8 - 0x1BC100)
1BC0F0:  LDR             R8, [PC,R0]; LogLevel
1BC0F4:  LDR             R0, =(aFailedToInitia - 0x1BC108); "Failed to initialize backend \"%s\"\n" ...
1BC0F8:  ADD             R9, PC, R2; dword_3827A8
1BC0FC:  LDR             R10, =(dword_3827A8 - 0x1BC14C)
1BC100:  ADD             R0, PC, R0; "Failed to initialize backend \"%s\"\n"
1BC104:  STR             R0, [SP,#0x88+var_7C]
1BC108:  LDR             R0, =(aInitializedBac - 0x1BC114); "Initialized backend \"%s\"\n" ...
1BC10C:  ADD             R0, PC, R0; "Initialized backend \"%s\"\n"
1BC110:  STR             R0, [SP,#0x88+var_6C]
1BC114:  LDR             R0, =(LogLevel_ptr - 0x1BC120)
1BC118:  LDR             R0, [PC,R0]; LogLevel
1BC11C:  STR             R0, [SP,#0x88+var_74]
1BC120:  LDR             R0, =(aAddedSForCaptu - 0x1BC12C); "Added \"%s\" for capture\n" ...
1BC124:  ADD             R0, PC, R0; "Added \"%s\" for capture\n"
1BC128:  STR             R0, [SP,#0x88+var_80]
1BC12C:  LDR             R0, =(LogLevel_ptr - 0x1BC138)
1BC130:  LDR             R0, [PC,R0]; LogLevel
1BC134:  STR             R0, [SP,#0x88+var_78]
1BC138:  LDR             R0, =(aAddedSForPlayb - 0x1BC144); "Added \"%s\" for playback\n" ...
1BC13C:  ADD             R0, PC, R0; "Added \"%s\" for playback\n"
1BC140:  STR             R0, [SP,#0x88+var_84]
1BC144:  LDR             R0, [PC,R10]; dword_3827A8
1BC148:  CMP             R0, #0
1BC14C:  BEQ             loc_1BC160
1BC150:  LDR             R0, =(dword_3827E0 - 0x1BC15C)
1BC154:  LDR             R0, [PC,R0]; dword_3827E0
1BC158:  CMP             R0, #0
1BC15C:  BNE             loc_1BC274
1BC160:  ADD             R0, R6, #0x10
1BC164:  BLX             R1
1BC168:  LDR             R1, [R8]
1BC16C:  CMP             R0, #0
1BC170:  BEQ             loc_1BC24C
1BC174:  CMP             R1, #3
1BC178:  BCC             loc_1BC18C
1BC17C:  LDR             R2, [R6]; "android" ...
1BC180:  ADR             R0, aAlcInitconfig_0; "alc_initconfig"
1BC184:  LDR             R1, [SP,#0x88+var_6C]
1BC188:  BL              j_al_print
1BC18C:  LDR             R0, [R6,#0x10]
1BC190:  CMP             R0, #0
1BC194:  BEQ             loc_1BC1EC
1BC198:  LDR             R0, =(dword_3827A8 - 0x1BC1A4)
1BC19C:  LDR             R0, [PC,R0]; dword_3827A8
1BC1A0:  CMP             R0, #0
1BC1A4:  BNE             loc_1BC1EC
1BC1A8:  MOV             R1, R6
1BC1AC:  MOV             R0, R9
1BC1B0:  LDM             R1!, {R2,R3,R5,R7}
1BC1B4:  STM             R0!, {R2,R3,R5,R7}
1BC1B8:  LDM             R1!, {R2-R5,R7}
1BC1BC:  STM             R0!, {R2-R5,R7}
1BC1C0:  LDM             R1, {R2-R5,R7}
1BC1C4:  STM             R0, {R2-R5,R7}
1BC1C8:  LDR             R0, [SP,#0x88+var_78]
1BC1CC:  LDR             R0, [R0]
1BC1D0:  CMP             R0, #3
1BC1D4:  BCC             loc_1BC1EC
1BC1D8:  LDR             R0, =(dword_3827A8 - 0x1BC1E4)
1BC1DC:  LDR             R2, [PC,R0]; dword_3827A8
1BC1E0:  ADR             R0, aAlcInitconfig_0; "alc_initconfig"
1BC1E4:  LDR             R1, [SP,#0x88+var_84]
1BC1E8:  BL              j_al_print
1BC1EC:  LDR             R0, [R6,#0x20]
1BC1F0:  CMP             R0, #0
1BC1F4:  BEQ             loc_1BC264
1BC1F8:  LDR             R0, =(dword_3827E0 - 0x1BC204)
1BC1FC:  LDR             R0, [PC,R0]; dword_3827E0
1BC200:  CMP             R0, #0
1BC204:  BNE             loc_1BC264
1BC208:  LDR             R0, [SP,#0x88+var_70]
1BC20C:  MOV             R1, R6
1BC210:  LDM             R1!, {R2,R3,R5,R7}
1BC214:  STM             R0!, {R2,R3,R5,R7}
1BC218:  LDM             R1!, {R2-R5,R7}
1BC21C:  STM             R0!, {R2-R5,R7}
1BC220:  LDM             R1, {R2-R5,R7}
1BC224:  STM             R0, {R2-R5,R7}
1BC228:  LDR             R0, [SP,#0x88+var_74]
1BC22C:  LDR             R0, [R0]
1BC230:  CMP             R0, #3
1BC234:  BCC             loc_1BC264
1BC238:  LDR             R0, =(dword_3827E0 - 0x1BC244)
1BC23C:  LDR             R2, [PC,R0]; dword_3827E0
1BC240:  ADR             R0, aAlcInitconfig_0; "alc_initconfig"
1BC244:  LDR             R1, [SP,#0x88+var_80]
1BC248:  B               loc_1BC260
1BC24C:  CMP             R1, #2
1BC250:  BCC             loc_1BC264
1BC254:  LDR             R2, [R6]; "android" ...
1BC258:  ADR             R0, aAlcInitconfig_0; "alc_initconfig"
1BC25C:  LDR             R1, [SP,#0x88+var_7C]
1BC260:  BL              j_al_print
1BC264:  LDR             R1, [R6,#0x3C]
1BC268:  ADD             R6, R6, #0x38 ; '8'
1BC26C:  CMP             R1, #0
1BC270:  BNE             loc_1BC144
1BC274:  LDR             R0, =(off_23CA00 - 0x1BC280); "loopback" ...
1BC278:  ADD             R0, PC, R0; off_23CA00
1BC27C:  LDR             R1, [R0,#(off_23CA04 - 0x23CA00)]; alc_loopback_init
1BC280:  ADD             R0, R0, #0x10
1BC284:  BLX             R1; alc_loopback_init
1BC288:  LDR             R0, =(aExcludefx - 0x1BC298); "excludefx" ...
1BC28C:  SUB             R2, R11, #-s1
1BC290:  ADD             R1, PC, R0; "excludefx"
1BC294:  MOV             R0, #0
1BC298:  BL              j_ConfigValueStr
1BC29C:  CMP             R0, #0
1BC2A0:  BEQ             loc_1BC368
1BC2A4:  LDR             R0, =(EffectList_ptr - 0x1BC2B8)
1BC2A8:  MOV             R9, #1
1BC2AC:  LDR             R4, [R11,#s1]
1BC2B0:  LDR             R0, [PC,R0]; EffectList
1BC2B4:  STR             R0, [SP,#0x88+var_6C]
1BC2B8:  LDR             R0, =(EffectList_ptr - 0x1BC2C4)
1BC2BC:  LDR             R0, [PC,R0]; EffectList
1BC2C0:  STR             R0, [SP,#0x88+var_70]
1BC2C4:  LDR             R0, =(DisabledEffects_ptr - 0x1BC2D0)
1BC2C8:  LDR             R10, [PC,R0]; DisabledEffects
1BC2CC:  MOV             R0, R4; s
1BC2D0:  MOV             R1, #0x2C ; ','; c
1BC2D4:  STR             R4, [R11,#s1]
1BC2D8:  BL              strchr
1BC2DC:  MOV             R5, R0
1BC2E0:  CMP             R5, R4
1BC2E4:  LDRBNE          R0, [R4]
1BC2E8:  CMPNE           R0, #0
1BC2EC:  BEQ             loc_1BC35C
1BC2F0:  CMP             R5, #0
1BC2F4:  BEQ             loc_1BC300
1BC2F8:  SUB             R6, R5, R4
1BC2FC:  B               loc_1BC30C
1BC300:  MOV             R0, R4; s
1BC304:  BL              strlen
1BC308:  MOV             R6, R0
1BC30C:  LDR             R0, [SP,#0x88+var_6C]
1BC310:  LDR             R7, [R0]
1BC314:  CMP             R7, #0
1BC318:  BEQ             loc_1BC35C
1BC31C:  LDR             R0, [SP,#0x88+var_70]
1BC320:  ADD             R8, R0, #0x10
1BC324:  MOV             R0, R7; s
1BC328:  BL              strlen
1BC32C:  CMP             R6, R0
1BC330:  BNE             loc_1BC350
1BC334:  MOV             R0, R7; s1
1BC338:  MOV             R1, R4; s2
1BC33C:  MOV             R2, R6; n
1BC340:  BL              strncmp
1BC344:  CMP             R0, #0
1BC348:  LDREQ           R0, [R8,#-0xC]
1BC34C:  STRBEQ          R9, [R10,R0]
1BC350:  LDR             R7, [R8],#0x10
1BC354:  CMP             R7, #0
1BC358:  BNE             loc_1BC324
1BC35C:  ADD             R4, R5, #1
1BC360:  CMP             R5, #0
1BC364:  BNE             loc_1BC2CC
1BC368:  LDR             R0, =(unk_38284C - 0x1BC374)
1BC36C:  ADD             R0, PC, R0; unk_38284C
1BC370:  BL              j_InitEffect
1BC374:  LDR             R0, =(aAlsoftDefaultR - 0x1BC380); "__ALSOFT_DEFAULT_REVERB" ...
1BC378:  ADD             R0, PC, R0; "__ALSOFT_DEFAULT_REVERB"
1BC37C:  BL              getenv
1BC380:  STR             R0, [R11,#s1]
1BC384:  CMP             R0, #0
1BC388:  LDRBNE          R1, [R0]
1BC38C:  CMPNE           R1, #0
1BC390:  BEQ             loc_1BC3A0
1BC394:  LDR             R1, =(unk_38284C - 0x1BC3A0)
1BC398:  ADD             R1, PC, R1; unk_38284C
1BC39C:  B               loc_1BC3C8
1BC3A0:  LDR             R0, =(aDefaultReverb - 0x1BC3B0); "default-reverb" ...
1BC3A4:  SUB             R2, R11, #-s1
1BC3A8:  ADD             R1, PC, R0; "default-reverb"
1BC3AC:  MOV             R0, #0
1BC3B0:  BL              j_ConfigValueStr
1BC3B4:  CMP             R0, #0
1BC3B8:  BEQ             loc_1BC3CC
1BC3BC:  LDR             R1, =(unk_38284C - 0x1BC3CC)
1BC3C0:  LDR             R0, [R11,#s1]; s1
1BC3C4:  ADD             R1, PC, R1; unk_38284C
1BC3C8:  BL              j_GetReverbEffect
1BC3CC:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BC3DC)
1BC3D0:  LDR             R1, [R11,#var_20]
1BC3D4:  LDR             R0, [PC,R0]; __stack_chk_guard
1BC3D8:  LDR             R0, [R0]
1BC3DC:  SUBS            R0, R0, R1
1BC3E0:  SUBEQ           SP, R11, #0x1C
1BC3E4:  POPEQ           {R4-R11,PC}
1BC3E8:  BL              __stack_chk_fail
1BC3EC:  LDR             R0, =(DefaultResampler_ptr - 0x1BC3FC)
1BC3F0:  MOV             R1, #1
1BC3F4:  LDR             R0, [PC,R0]; DefaultResampler
1BC3F8:  B               loc_1BBD18
1BC3FC:  LDR             R0, =(DefaultResampler_ptr - 0x1BC40C)
1BC400:  MOV             R1, #2
1BC404:  LDR             R0, [PC,R0]; DefaultResampler
1BC408:  B               loc_1BBD18
1BC40C:  LDR             R0, =(LogLevel_ptr - 0x1BC418)
1BC410:  LDR             R0, [PC,R0]; LogLevel
1BC414:  LDR             R0, [R0]
1BC418:  CMP             R0, #2
1BC41C:  BCC             loc_1BBD1C
1BC420:  LDR             R2, [R11,#s1]
1BC424:  ADR             R0, aAlcInitconfig_0; "alc_initconfig"
1BC428:  ADR             R1, aInvalidResampl; "Invalid resampler: %s\n"
1BC42C:  BL              j_al_print
1BC430:  B               loc_1BBD1C
