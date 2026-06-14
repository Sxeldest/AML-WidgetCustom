; =========================================================
; Game Engine Function: _ZN12SelectScreen6UpdateEf
; Address            : 0x29EE68 - 0x29F29A
; =========================================================

29EE68:  PUSH            {R4-R7,LR}
29EE6A:  ADD             R7, SP, #0xC
29EE6C:  PUSH.W          {R8-R11}
29EE70:  SUB             SP, SP, #4
29EE72:  VPUSH           {D8-D15}
29EE76:  SUB             SP, SP, #0x18
29EE78:  MOV             R4, R0
29EE7A:  MOV             R5, R1
29EE7C:  LDRB            R0, [R4,#0xC]
29EE7E:  CBZ             R0, loc_29EEBE
29EE80:  BLX             j__Z11BackPressedv; BackPressed(void)
29EE84:  CMP             R0, #1
29EE86:  BNE             loc_29EEBE
29EE88:  LDR             R0, [R4]
29EE8A:  LDR             R1, [R0,#0x24]
29EE8C:  MOV             R0, R4
29EE8E:  BLX             R1
29EE90:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29EE94:  CMP             R0, #0
29EE96:  BNE.W           loc_29F28C
29EE9A:  LDR.W           R0, =(AudioEngine_ptr - 0x29EEAA)
29EE9E:  MOVS            R1, #2; int
29EEA0:  MOVS            R2, #0; float
29EEA2:  MOV.W           R3, #0x3F800000; float
29EEA6:  ADD             R0, PC; AudioEngine_ptr
29EEA8:  LDR             R0, [R0]; AudioEngine ; this
29EEAA:  ADD             SP, SP, #0x18
29EEAC:  VPOP            {D8-D15}
29EEB0:  ADD             SP, SP, #4
29EEB2:  POP.W           {R8-R11}
29EEB6:  POP.W           {R4-R7,LR}
29EEBA:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29EEBE:  LDR             R0, [R4,#0x18]
29EEC0:  VMOV            S16, R5
29EEC4:  CMP             R0, #0
29EEC6:  BEQ.W           loc_29F23C
29EECA:  BLX             j__Z11DownPressedv; DownPressed(void)
29EECE:  CMP             R0, #1
29EED0:  BNE             loc_29EF28
29EED2:  LDR             R0, [R4]
29EED4:  LDR             R1, [R0,#0x38]
29EED6:  MOV             R0, R4
29EED8:  BLX             R1
29EEDA:  MOV             R1, R0
29EEDC:  LDR             R0, [R4,#0x2C]
29EEDE:  CMP             R1, #1
29EEE0:  ADD.W           R0, R0, #1
29EEE4:  BNE             loc_29EEEE
29EEE6:  LDR             R1, [R4,#0x18]
29EEE8:  BLX             __aeabi_uidivmod
29EEEC:  B               loc_29EF0E
29EEEE:  LDR             R1, [R4,#0x18]
29EEF0:  VMOV            S0, R0
29EEF4:  SUBS            R0, R1, #1
29EEF6:  VCVT.F32.S32    S0, S0
29EEFA:  VMOV            S2, R0
29EEFE:  VCVT.F32.U32    S2, S2
29EF02:  VMIN.F32        D0, D0, D1
29EF06:  VCVT.S32.F32    S0, S0
29EF0A:  VMOV            R1, S0
29EF0E:  STR             R1, [R4,#0x2C]
29EF10:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29EF14:  CBNZ            R0, loc_29EF28
29EF16:  LDR             R0, =(AudioEngine_ptr - 0x29EF24)
29EF18:  MOVS            R1, #3; int
29EF1A:  MOVS            R2, #0; float
29EF1C:  MOV.W           R3, #0x3F800000; float
29EF20:  ADD             R0, PC; AudioEngine_ptr
29EF22:  LDR             R0, [R0]; AudioEngine ; this
29EF24:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29EF28:  BLX             j__Z9UpPressedv; UpPressed(void)
29EF2C:  CBZ             R0, loc_29EF4C
29EF2E:  LDR             R0, [R4]
29EF30:  LDR             R1, [R0,#0x38]
29EF32:  MOV             R0, R4
29EF34:  BLX             R1
29EF36:  MOV             R6, R4
29EF38:  CMP             R0, #1
29EF3A:  LDR.W           R2, [R6,#0x2C]!
29EF3E:  BNE             loc_29EF52
29EF40:  LDR             R1, [R4,#0x18]
29EF42:  ADDS            R0, R2, R1
29EF44:  SUBS            R0, #1
29EF46:  BLX             __aeabi_uidivmod
29EF4A:  B               loc_29EF6C
29EF4C:  ADD.W           R6, R4, #0x2C ; ','
29EF50:  B               loc_29EF86
29EF52:  SUBS            R0, R2, #1
29EF54:  VLDR            S0, =0.0
29EF58:  VMOV            S2, R0
29EF5C:  VCVT.F32.S32    S2, S2
29EF60:  VMAX.F32        D0, D1, D0
29EF64:  VCVT.S32.F32    S0, S0
29EF68:  VMOV            R1, S0
29EF6C:  STR             R1, [R6]
29EF6E:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29EF72:  CBNZ            R0, loc_29EF86
29EF74:  LDR             R0, =(AudioEngine_ptr - 0x29EF82)
29EF76:  MOVS            R1, #3; int
29EF78:  MOVS            R2, #0; float
29EF7A:  MOV.W           R3, #0x3F800000; float
29EF7E:  ADD             R0, PC; AudioEngine_ptr
29EF80:  LDR             R0, [R0]; AudioEngine ; this
29EF82:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29EF86:  LDR             R0, [R6]
29EF88:  ADDS            R1, R0, #1
29EF8A:  ITTTT NE
29EF8C:  VADDNE.F32      S0, S16, S16
29EF90:  LDRNE           R1, [R4,#0x28]
29EF92:  ADDNE.W         R0, R1, R0,LSL#2
29EF96:  VLDRNE          S2, [R0]
29EF9A:  ITT NE
29EF9C:  VADDNE.F32      S0, S0, S2
29EFA0:  VSTRNE          S0, [R0]
29EFA4:  LDR             R0, [R4,#0x24]
29EFA6:  CBZ             R0, loc_29EFE8
29EFA8:  VMOV.F32        S0, #0.5
29EFAC:  VLDR            S2, =0.4
29EFB0:  VLDR            S4, =0.0
29EFB4:  MOVS            R0, #0
29EFB6:  MOVS            R1, #0
29EFB8:  VMUL.F32        S0, S16, S0
29EFBC:  LDR             R2, [R4,#0x28]
29EFBE:  ADDS            R1, #1
29EFC0:  ADD             R2, R0
29EFC2:  ADDS            R0, #4
29EFC4:  VLDR            S6, [R2]
29EFC8:  VSUB.F32        S6, S6, S0
29EFCC:  VMIN.F32        D4, D3, D1
29EFD0:  VCMPE.F32       S6, #0.0
29EFD4:  VMRS            APSR_nzcv, FPSCR
29EFD8:  IT LT
29EFDA:  VMOVLT.F32      S8, S4
29EFDE:  VSTR            S8, [R2]
29EFE2:  LDR             R2, [R4,#0x24]
29EFE4:  CMP             R1, R2
29EFE6:  BCC             loc_29EFBC
29EFE8:  LDR             R0, =(gMobileMenu_ptr - 0x29EFEE)
29EFEA:  ADD             R0, PC; gMobileMenu_ptr
29EFEC:  LDR             R0, [R0]; gMobileMenu
29EFEE:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
29EFF2:  CMP             R0, #0
29EFF4:  BEQ.W           loc_29F23C
29EFF8:  LDR             R0, =(lastDevice_ptr - 0x29F000)
29EFFA:  LDR             R1, =(gMobileMenu_ptr - 0x29F002)
29EFFC:  ADD             R0, PC; lastDevice_ptr
29EFFE:  ADD             R1, PC; gMobileMenu_ptr
29F000:  LDR             R0, [R0]; lastDevice
29F002:  LDR             R1, [R1]; gMobileMenu
29F004:  LDR             R0, [R0]
29F006:  ADD.W           R0, R1, R0,LSL#2
29F00A:  LDR.W           R0, [R0,#0x90]
29F00E:  CMP             R0, #3
29F010:  BEQ.W           loc_29F23C
29F014:  STRD.W          R6, R5, [SP,#0x78+var_78]
29F018:  LDR             R0, [R4]
29F01A:  LDR             R1, [R0,#0x40]
29F01C:  MOV             R0, R4
29F01E:  BLX             R1
29F020:  MOV             R5, R0
29F022:  LDR             R0, [R4]
29F024:  LDR             R1, [R0,#0x3C]
29F026:  MOV             R0, R4
29F028:  BLX             R1
29F02A:  LDR             R1, [R4,#0x18]
29F02C:  CMP             R1, #0
29F02E:  BEQ.W           loc_29F1CE
29F032:  VMOV            S2, R0
29F036:  LDR             R0, =(lastDevice_ptr - 0x29F046)
29F038:  VMOV            S0, R5
29F03C:  LDR             R1, =(gMobileMenu_ptr - 0x29F04C)
29F03E:  VMOV.F32        S18, #-1.5
29F042:  ADD             R0, PC; lastDevice_ptr
29F044:  VADD.F32        S24, S0, S2
29F048:  ADD             R1, PC; gMobileMenu_ptr
29F04A:  VMOV.F32        S22, #0.5
29F04E:  LDR.W           R8, [R0]; lastDevice
29F052:  LDR.W           R10, [R1]; gMobileMenu
29F056:  ADD.W           R9, SP, #0x78+var_70
29F05A:  VLDR            S20, =480.0
29F05E:  MOVS            R6, #0
29F060:  MOV.W           R11, #0xFFFFFFFF
29F064:  LDR             R0, [R4]
29F066:  MOV             R1, R6
29F068:  LDR             R2, [R0,#0x44]
29F06A:  MOV             R0, R4
29F06C:  BLX             R2
29F06E:  LDR             R1, [R4,#0x18]
29F070:  VMOV            S26, R0
29F074:  SUBS            R0, R1, #1
29F076:  CMP             R6, R0
29F078:  BNE             loc_29F098
29F07A:  CMP             R6, #7
29F07C:  BGT             loc_29F098
29F07E:  LDRB.W          R0, [R4,#0x30]
29F082:  CBZ             R0, loc_29F098
29F084:  LDR             R0, [R4]
29F086:  LDR             R1, [R0,#0x48]
29F088:  MOV             R0, R4
29F08A:  BLX             R1
29F08C:  VMUL.F32        S0, S26, S18
29F090:  VMOV            S2, R0
29F094:  VADD.F32        S24, S2, S0
29F098:  LDR             R0, [R4]
29F09A:  MOV             R1, R4
29F09C:  LDR             R2, [R0,#0x4C]
29F09E:  MOV             R0, R9
29F0A0:  BLX             R2
29F0A2:  VLDR            S0, [SP,#0x78+var_6C]
29F0A6:  VCMP.F32        S0, #0.0
29F0AA:  VMRS            APSR_nzcv, FPSCR
29F0AE:  ITTT EQ
29F0B0:  VLDREQ          S0, [SP,#0x78+var_70]
29F0B4:  VCMPEQ.F32      S0, #0.0
29F0B8:  VMRSEQ          APSR_nzcv, FPSCR
29F0BC:  BNE             loc_29F0DE
29F0BE:  VLDR            S0, [SP,#0x78+var_64]
29F0C2:  VCMP.F32        S0, #0.0
29F0C6:  VMRS            APSR_nzcv, FPSCR
29F0CA:  ITTT EQ
29F0CC:  VLDREQ          S0, [SP,#0x78+var_68]
29F0D0:  VCMPEQ.F32      S0, #0.0
29F0D4:  VMRSEQ          APSR_nzcv, FPSCR
29F0D8:  BNE             loc_29F0DE
29F0DA:  MOVS            R5, #0
29F0DC:  B               loc_29F154
29F0DE:  LDR             R0, [R4]
29F0E0:  MOV             R1, R6
29F0E2:  LDR             R2, [R0,#0x44]
29F0E4:  MOV             R0, R4
29F0E6:  BLX             R2
29F0E8:  MOV             R5, R0
29F0EA:  VLDR            S28, [SP,#0x78+var_64]
29F0EE:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
29F0F2:  VMOV            S0, R0
29F0F6:  VMOV            S2, R5
29F0FA:  VCVT.F32.U32    S0, S0
29F0FE:  VMUL.F32        S2, S2, S22
29F102:  VDIV.F32        S0, S20, S0
29F106:  VADD.F32        S2, S24, S2
29F10A:  VMUL.F32        S0, S28, S0
29F10E:  VCMPE.F32       S2, S0
29F112:  VMRS            APSR_nzcv, FPSCR
29F116:  BLT             loc_29F152
29F118:  LDR             R0, [R4]
29F11A:  MOV             R1, R6
29F11C:  LDR             R2, [R0,#0x44]
29F11E:  MOV             R0, R4
29F120:  BLX             R2
29F122:  MOV             R5, R0
29F124:  VLDR            S28, [SP,#0x78+var_6C]
29F128:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
29F12C:  VMOV            S0, R0
29F130:  VMOV            S2, R5
29F134:  VCVT.F32.U32    S0, S0
29F138:  VMUL.F32        S2, S2, S22
29F13C:  VDIV.F32        S0, S20, S0
29F140:  VADD.F32        S2, S24, S2
29F144:  VMUL.F32        S0, S28, S0
29F148:  VCMPE.F32       S2, S0
29F14C:  VMRS            APSR_nzcv, FPSCR
29F150:  BLE             loc_29F0DA
29F152:  MOVS            R5, #1
29F154:  LDR             R0, [R4]
29F156:  LDR             R1, [R0,#0x50]
29F158:  MOV             R0, R4
29F15A:  BLX             R1
29F15C:  CMP             R5, #0
29F15E:  IT EQ
29F160:  CMPEQ           R0, #0
29F162:  BNE             loc_29F1BE
29F164:  LDR             R0, [R4]
29F166:  LDR.W           R1, [R8]
29F16A:  LDR             R2, [R0,#0x30]
29F16C:  ADD.W           R0, R10, R1,LSL#3
29F170:  VLDR            S30, [R0,#0x70]
29F174:  VLDR            S28, [R0,#0x74]
29F178:  MOV             R0, R4
29F17A:  BLX             R2
29F17C:  LDR             R1, [R4]
29F17E:  VMOV            S17, R0
29F182:  MOV             R0, R4
29F184:  LDR             R1, [R1,#0x34]
29F186:  BLX             R1
29F188:  VCMPE.F32       S30, S17
29F18C:  VMRS            APSR_nzcv, FPSCR
29F190:  BLT             loc_29F1BE
29F192:  VMOV            S0, R0
29F196:  VCMPE.F32       S30, S0
29F19A:  VMRS            APSR_nzcv, FPSCR
29F19E:  BGT             loc_29F1BE
29F1A0:  VADD.F32        S0, S26, S24
29F1A4:  MOV             R0, R11
29F1A6:  VCMPE.F32       S28, S0
29F1AA:  VMRS            APSR_nzcv, FPSCR
29F1AE:  VCMPE.F32       S28, S24
29F1B2:  IT LE
29F1B4:  MOVLE           R0, R6
29F1B6:  VMRS            APSR_nzcv, FPSCR
29F1BA:  IT GE
29F1BC:  MOVGE           R11, R0
29F1BE:  VADD.F32        S24, S26, S24
29F1C2:  LDR             R0, [R4,#0x18]
29F1C4:  ADDS            R6, #1
29F1C6:  CMP             R6, R0
29F1C8:  BCC.W           loc_29F064
29F1CC:  B               loc_29F1D2
29F1CE:  MOV.W           R11, #0xFFFFFFFF
29F1D2:  LDR             R0, =(gMobileMenu_ptr - 0x29F1D8)
29F1D4:  ADD             R0, PC; gMobileMenu_ptr
29F1D6:  LDR             R0, [R0]; gMobileMenu
29F1D8:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
29F1DC:  LDRD.W          R6, R5, [SP,#0x78+var_78]
29F1E0:  CMP             R0, #0
29F1E2:  ITT NE
29F1E4:  LDRNE           R0, [R6]
29F1E6:  CMPNE           R0, R11
29F1E8:  BEQ             loc_29F23C
29F1EA:  ADDS.W          R0, R11, #1
29F1EE:  BEQ             loc_29F21A
29F1F0:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29F1F4:  CBNZ            R0, loc_29F208
29F1F6:  LDR             R0, =(AudioEngine_ptr - 0x29F204)
29F1F8:  MOVS            R1, #3; int
29F1FA:  MOVS            R2, #0; float
29F1FC:  MOV.W           R3, #0x3F800000; float
29F200:  ADD             R0, PC; AudioEngine_ptr
29F202:  LDR             R0, [R0]; AudioEngine ; this
29F204:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29F208:  LDR             R0, [R6]
29F20A:  ADDS            R1, R0, #1
29F20C:  BEQ             loc_29F21A
29F20E:  LDR             R1, [R4,#0x1C]
29F210:  LDR.W           R0, [R1,R0,LSL#2]
29F214:  LDR             R1, [R0]
29F216:  LDR             R1, [R1,#0x20]
29F218:  BLX             R1
29F21A:  LDR             R0, =(lastDevice_ptr - 0x29F222)
29F21C:  LDR             R1, =(gMobileMenu_ptr - 0x29F228)
29F21E:  ADD             R0, PC; lastDevice_ptr
29F220:  STR.W           R11, [R6]
29F224:  ADD             R1, PC; gMobileMenu_ptr
29F226:  LDR             R0, [R0]; lastDevice
29F228:  LDR             R1, [R1]; gMobileMenu
29F22A:  LDR             R0, [R0]
29F22C:  ADD.W           R0, R1, R0,LSL#2
29F230:  LDR.W           R1, [R0,#0x90]!
29F234:  CMP             R1, #0
29F236:  ITT EQ
29F238:  MOVEQ           R1, #1
29F23A:  STREQ           R1, [R0]
29F23C:  VMOV.F32        S0, #1.0
29F240:  VLDR            S2, [R4,#8]
29F244:  VCMPE.F32       S2, S0
29F248:  VMRS            APSR_nzcv, FPSCR
29F24C:  BGE             loc_29F26E
29F24E:  VMOV.F32        S4, #5.0
29F252:  VMUL.F32        S4, S16, S4
29F256:  VADD.F32        S2, S4, S2
29F25A:  VCMPE.F32       S2, S0
29F25E:  VSTR            S2, [R4,#8]
29F262:  VMRS            APSR_nzcv, FPSCR
29F266:  ITT GT
29F268:  MOVGT.W         R0, #0x3F800000
29F26C:  STRGT           R0, [R4,#8]
29F26E:  LDR             R0, [R4,#0x18]
29F270:  CMP             R0, #0
29F272:  ITT NE
29F274:  LDRNE           R0, [R4,#0x2C]
29F276:  ADDSNE.W        R1, R0, #1
29F27A:  BEQ             loc_29F28C
29F27C:  LDR             R1, [R4,#0x1C]
29F27E:  MOV             R2, R5
29F280:  LDR.W           R0, [R1,R0,LSL#2]
29F284:  LDR             R1, [R0]
29F286:  LDR             R3, [R1,#0x18]
29F288:  MOV             R1, R4
29F28A:  BLX             R3
29F28C:  ADD             SP, SP, #0x18
29F28E:  VPOP            {D8-D15}
29F292:  ADD             SP, SP, #4
29F294:  POP.W           {R8-R11}
29F298:  POP             {R4-R7,PC}
