; =========================================================
; Game Engine Function: sub_12D004
; Address            : 0x12D004 - 0x12D0B2
; =========================================================

12D004:  PUSH            {R4-R7,LR}
12D006:  ADD             R7, SP, #0xC
12D008:  PUSH.W          {R11}
12D00C:  VPUSH           {D8}
12D010:  SUB             SP, SP, #0x10
12D012:  MOV             R2, R0
12D014:  LDR             R0, =(off_234A24 - 0x12D01A)
12D016:  ADD             R0, PC; off_234A24
12D018:  LDR             R0, [R0]; dword_23DEEC
12D01A:  LDR             R0, [R0]
12D01C:  CMP             R0, #0
12D01E:  BEQ             loc_12D0A6
12D020:  LDR             R4, [R0,#0x60]
12D022:  CBZ             R1, loc_12D088
12D024:  ADD             R0, SP, #0x28+var_24; int
12D026:  MOV             R1, R2; s
12D028:  BL              sub_DC6DC
12D02C:  ADD             R0, SP, #0x28+var_24
12D02E:  MOVS            R1, #0
12D030:  BLX             j__ZNSt6__ndk14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPj; std::stof(std::string const&,uint *)
12D034:  MOV             R5, R0
12D036:  VMOV            S16, R0
12D03A:  LDRB.W          R0, [SP,#0x28+var_24]
12D03E:  LSLS            R0, R0, #0x1F
12D040:  ITT NE
12D042:  LDRNE           R0, [SP,#0x28+var_1C]; void *
12D044:  BLXNE           j__ZdlPv; operator delete(void *)
12D048:  VLDR            S0, =0.1
12D04C:  VCMP.F32        S16, S0
12D050:  VMRS            APSR_nzcv, FPSCR
12D054:  BMI             loc_12D092
12D056:  VMOV.F32        S0, #2.0
12D05A:  VCMP.F32        S16, S0
12D05E:  VMRS            APSR_nzcv, FPSCR
12D062:  BGT             loc_12D092
12D064:  MOV             R0, R5
12D066:  BL              sub_E4F64
12D06A:  LDR             R1, =(unk_84F56 - 0x12D074)
12D06C:  ADD             R0, SP, #0x28+var_24; int
12D06E:  MOVS            R2, #0x36 ; '6'
12D070:  ADD             R1, PC; unk_84F56 ; s
12D072:  BL              sub_F1E90
12D076:  VCVT.F64.F32    D16, S16
12D07A:  LDR             R1, [SP,#0x28+var_24]
12D07C:  MOV             R0, R4
12D07E:  VMOV            R2, R3, D16
12D082:  BL              sub_12D5E8
12D086:  B               loc_12D0A6
12D088:  LDR             R1, =(unk_8FCC1 - 0x12D092)
12D08A:  ADD             R0, SP, #0x28+var_24
12D08C:  MOVS            R2, #0x30 ; '0'
12D08E:  ADD             R1, PC; unk_8FCC1
12D090:  B               loc_12D09A
12D092:  LDR             R1, =(unk_88330 - 0x12D09C)
12D094:  ADD             R0, SP, #0x28+var_24; int
12D096:  MOVS            R2, #0x4F ; 'O'
12D098:  ADD             R1, PC; unk_88330 ; s
12D09A:  BL              sub_F1E90
12D09E:  LDR             R1, [SP,#0x28+var_24]
12D0A0:  MOV             R0, R4
12D0A2:  BL              sub_12D5E8
12D0A6:  ADD             SP, SP, #0x10
12D0A8:  VPOP            {D8}
12D0AC:  POP.W           {R11}
12D0B0:  POP             {R4-R7,PC}
