; =========================================================
; Game Engine Function: INT123_synth_1to1_mono
; Address            : 0x234F50 - 0x235060
; =========================================================

234F50:  PUSH            {R4-R7,LR}
234F52:  ADD             R7, SP, #0xC
234F54:  PUSH.W          {R8-R10}
234F58:  SUB             SP, SP, #0x80
234F5A:  MOV             R4, R1
234F5C:  MOVW            R1, #0x9194
234F60:  LDR             R5, [R4,R1]
234F62:  MOVW            R8, #0xB2A8
234F66:  MOVW            R10, #0xB2A0
234F6A:  MOV             R1, SP
234F6C:  LDR.W           R9, [R4,R8]
234F70:  LDR.W           R6, [R4,R10]
234F74:  STR.W           R1, [R4,R10]
234F78:  MOVS            R1, #0
234F7A:  STR.W           R1, [R4,R8]
234F7E:  MOVS            R1, #0
234F80:  MOV             R2, R4
234F82:  MOVS            R3, #0
234F84:  BLX             R5
234F86:  STR.W           R6, [R4,R10]
234F8A:  LDRH.W          R1, [SP,#0x98+var_98]
234F8E:  STRH.W          R1, [R6,R9]
234F92:  ADD.W           R1, R6, R9
234F96:  LDRH.W          R2, [SP,#0x98+var_94]
234F9A:  STRH            R2, [R1,#2]
234F9C:  LDRH.W          R2, [SP,#0x98+var_90]
234FA0:  STRH            R2, [R1,#4]
234FA2:  LDRH.W          R2, [SP,#0x98+var_8C]
234FA6:  STRH            R2, [R1,#6]
234FA8:  LDRH.W          R2, [SP,#0x98+var_88]
234FAC:  STRH            R2, [R1,#8]
234FAE:  LDRH.W          R2, [SP,#0x98+var_84]
234FB2:  STRH            R2, [R1,#0xA]
234FB4:  LDRH.W          R2, [SP,#0x98+var_80]
234FB8:  STRH            R2, [R1,#0xC]
234FBA:  LDRH.W          R2, [SP,#0x98+var_7C]
234FBE:  STRH            R2, [R1,#0xE]
234FC0:  LDRH.W          R2, [SP,#0x98+var_78]
234FC4:  STRH            R2, [R1,#0x10]
234FC6:  LDRH.W          R2, [SP,#0x98+var_74]
234FCA:  STRH            R2, [R1,#0x12]
234FCC:  LDRH.W          R2, [SP,#0x98+var_70]
234FD0:  STRH            R2, [R1,#0x14]
234FD2:  LDRH.W          R2, [SP,#0x98+var_6C]
234FD6:  STRH            R2, [R1,#0x16]
234FD8:  LDRH.W          R2, [SP,#0x98+var_68]
234FDC:  STRH            R2, [R1,#0x18]
234FDE:  LDRH.W          R2, [SP,#0x98+var_64]
234FE2:  STRH            R2, [R1,#0x1A]
234FE4:  LDRH.W          R2, [SP,#0x98+var_60]
234FE8:  STRH            R2, [R1,#0x1C]
234FEA:  LDRH.W          R2, [SP,#0x98+var_5C]
234FEE:  STRH            R2, [R1,#0x1E]
234FF0:  LDRH.W          R2, [SP,#0x98+var_58]
234FF4:  STRH            R2, [R1,#0x20]
234FF6:  LDRH.W          R2, [SP,#0x98+var_54]
234FFA:  STRH            R2, [R1,#0x22]
234FFC:  LDRH.W          R2, [SP,#0x98+var_50]
235000:  STRH            R2, [R1,#0x24]
235002:  LDRH.W          R2, [SP,#0x98+var_4C]
235006:  STRH            R2, [R1,#0x26]
235008:  LDRH.W          R2, [SP,#0x98+var_48]
23500C:  STRH            R2, [R1,#0x28]
23500E:  LDRH.W          R2, [SP,#0x98+var_44]
235012:  STRH            R2, [R1,#0x2A]
235014:  LDRH.W          R2, [SP,#0x98+var_40]
235018:  STRH            R2, [R1,#0x2C]
23501A:  LDRH.W          R2, [SP,#0x98+var_3C]
23501E:  STRH            R2, [R1,#0x2E]
235020:  LDRH.W          R2, [SP,#0x98+var_38]
235024:  STRH            R2, [R1,#0x30]
235026:  LDRH.W          R2, [SP,#0x98+var_34]
23502A:  STRH            R2, [R1,#0x32]
23502C:  LDRH.W          R2, [SP,#0x98+var_30]
235030:  STRH            R2, [R1,#0x34]
235032:  LDRH.W          R2, [SP,#0x98+var_2C]
235036:  STRH            R2, [R1,#0x36]
235038:  LDRH.W          R2, [SP,#0x98+var_28]
23503C:  STRH            R2, [R1,#0x38]
23503E:  LDRH.W          R2, [SP,#0x98+var_24]
235042:  STRH            R2, [R1,#0x3A]
235044:  LDRH.W          R2, [SP,#0x98+var_20]
235048:  STRH            R2, [R1,#0x3C]
23504A:  LDRH.W          R2, [SP,#0x98+var_1C]
23504E:  STRH            R2, [R1,#0x3E]
235050:  ADD.W           R1, R9, #0x40 ; '@'
235054:  STR.W           R1, [R4,R8]
235058:  ADD             SP, SP, #0x80
23505A:  POP.W           {R8-R10}
23505E:  POP             {R4-R7,PC}
