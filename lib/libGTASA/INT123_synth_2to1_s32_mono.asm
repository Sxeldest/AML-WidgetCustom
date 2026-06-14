; =========================================================
; Game Engine Function: INT123_synth_2to1_s32_mono
; Address            : 0x23A010 - 0x23A0A0
; =========================================================

23A010:  PUSH            {R4-R7,LR}
23A012:  ADD             R7, SP, #0xC
23A014:  PUSH.W          {R8-R10}
23A018:  SUB             SP, SP, #0x80
23A01A:  MOV             R4, R1
23A01C:  MOVW            R1, #0x91B0
23A020:  LDR             R6, [R4,R1]
23A022:  MOVW            R8, #0xB2A8
23A026:  MOVW            R9, #0xB2A0
23A02A:  MOV             R1, SP
23A02C:  LDR.W           R10, [R4,R8]
23A030:  LDR.W           R5, [R4,R9]
23A034:  STR.W           R1, [R4,R9]
23A038:  MOVS            R1, #0
23A03A:  STR.W           R1, [R4,R8]
23A03E:  MOVS            R1, #0
23A040:  MOV             R2, R4
23A042:  MOVS            R3, #0
23A044:  BLX             R6
23A046:  STR.W           R5, [R4,R9]
23A04A:  ADD.W           R2, R5, R10
23A04E:  LDR             R1, [SP,#0x98+var_98]
23A050:  STR.W           R1, [R5,R10]
23A054:  LDR             R1, [SP,#0x98+var_90]
23A056:  STR             R1, [R2,#4]
23A058:  LDR             R1, [SP,#0x98+var_88]
23A05A:  STR             R1, [R2,#8]
23A05C:  LDR             R1, [SP,#0x98+var_80]
23A05E:  STR             R1, [R2,#0xC]
23A060:  LDR             R1, [SP,#0x98+var_78]
23A062:  STR             R1, [R2,#0x10]
23A064:  LDR             R1, [SP,#0x98+var_70]
23A066:  STR             R1, [R2,#0x14]
23A068:  LDR             R1, [SP,#0x98+var_68]
23A06A:  STR             R1, [R2,#0x18]
23A06C:  LDR             R1, [SP,#0x98+var_60]
23A06E:  STR             R1, [R2,#0x1C]
23A070:  LDR             R1, [SP,#0x98+var_58]
23A072:  STR             R1, [R2,#0x20]
23A074:  LDR             R1, [SP,#0x98+var_50]
23A076:  STR             R1, [R2,#0x24]
23A078:  LDR             R1, [SP,#0x98+var_48]
23A07A:  STR             R1, [R2,#0x28]
23A07C:  LDR             R1, [SP,#0x98+var_40]
23A07E:  STR             R1, [R2,#0x2C]
23A080:  LDR             R1, [SP,#0x98+var_38]
23A082:  STR             R1, [R2,#0x30]
23A084:  LDR             R1, [SP,#0x98+var_30]
23A086:  STR             R1, [R2,#0x34]
23A088:  LDR             R1, [SP,#0x98+var_28]
23A08A:  STR             R1, [R2,#0x38]
23A08C:  LDR             R1, [SP,#0x98+var_20]
23A08E:  STR             R1, [R2,#0x3C]
23A090:  ADD.W           R1, R10, #0x40 ; '@'
23A094:  STR.W           R1, [R4,R8]
23A098:  ADD             SP, SP, #0x80
23A09A:  POP.W           {R8-R10}
23A09E:  POP             {R4-R7,PC}
