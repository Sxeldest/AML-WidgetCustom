; =========================================================
; Game Engine Function: INT123_synth_1to1_m2s
; Address            : 0x235060 - 0x23518C
; =========================================================

235060:  PUSH            {R4-R7,LR}
235062:  ADD             R7, SP, #0xC
235064:  PUSH.W          {R8,R9,R11}
235068:  MOV             R4, R1
23506A:  MOVW            R1, #0xB2A0
23506E:  LDR             R6, [R4,R1]
235070:  MOVW            R1, #0x9194
235074:  LDR             R5, [R4,R1]
235076:  MOVS            R1, #0
235078:  MOV             R2, R4
23507A:  MOVS            R3, #1
23507C:  BLX             R5
23507E:  MOVW            R1, #0xB2A8
235082:  LDR             R1, [R4,R1]
235084:  ADD             R1, R6
235086:  LDRH.W          R2, [R1,#-0x80]
23508A:  LDRH.W          R3, [R1,#-0x7C]
23508E:  LDRH.W          R6, [R1,#-0x78]
235092:  LDRH.W          R5, [R1,#-0x74]
235096:  LDRH.W          R4, [R1,#-0x70]
23509A:  LDRH.W          R12, [R1,#-0x6C]
23509E:  STRH.W          R2, [R1,#-0x7E]
2350A2:  LDRH.W          R2, [R1,#-0x68]
2350A6:  STRH.W          R3, [R1,#-0x7A]
2350AA:  LDRH.W          R3, [R1,#-0x64]
2350AE:  STRH.W          R6, [R1,#-0x76]
2350B2:  LDRH.W          R6, [R1,#-0x60]
2350B6:  STRH.W          R5, [R1,#-0x72]
2350BA:  LDRH.W          R5, [R1,#-0x5C]
2350BE:  STRH.W          R4, [R1,#-0x6E]
2350C2:  LDRH.W          R4, [R1,#-0x58]
2350C6:  STRH.W          R12, [R1,#-0x6A]
2350CA:  LDRH.W          R12, [R1,#-0x54]
2350CE:  STRH.W          R2, [R1,#-0x66]
2350D2:  LDRH.W          R2, [R1,#-0x50]
2350D6:  STRH.W          R3, [R1,#-0x62]
2350DA:  LDRH.W          R3, [R1,#-0x4C]
2350DE:  STRH.W          R6, [R1,#-0x5E]
2350E2:  LDRH.W          R6, [R1,#-0x48]
2350E6:  STRH.W          R5, [R1,#-0x5A]
2350EA:  LDRH.W          R5, [R1,#-0x44]
2350EE:  STRH.W          R4, [R1,#-0x56]
2350F2:  LDRH.W          R4, [R1,#-0x40]
2350F6:  STRH.W          R12, [R1,#-0x52]
2350FA:  LDRH.W          R12, [R1,#-0x3C]
2350FE:  STRH.W          R2, [R1,#-0x4E]
235102:  LDRH.W          R2, [R1,#-0x38]
235106:  STRH.W          R3, [R1,#-0x4A]
23510A:  LDRH.W          R3, [R1,#-0x34]
23510E:  STRH.W          R6, [R1,#-0x46]
235112:  LDRH.W          R6, [R1,#-0x30]
235116:  STRH.W          R5, [R1,#-0x42]
23511A:  LDRH.W          R5, [R1,#-0x2C]
23511E:  STRH.W          R4, [R1,#-0x3E]
235122:  LDRH.W          R4, [R1,#-0x28]
235126:  STRH.W          R12, [R1,#-0x3A]
23512A:  LDRH.W          R12, [R1,#-0x24]
23512E:  STRH.W          R2, [R1,#-0x36]
235132:  LDRH.W          LR, [R1,#-0x20]
235136:  STRH.W          R3, [R1,#-0x32]
23513A:  LDRH.W          R8, [R1,#-0x1C]
23513E:  STRH.W          R6, [R1,#-0x2E]
235142:  LDRH.W          R9, [R1,#-0x18]
235146:  STRH.W          R5, [R1,#-0x2A]
23514A:  LDRH.W          R5, [R1,#-0x14]
23514E:  STRH.W          R4, [R1,#-0x26]
235152:  LDRH.W          R4, [R1,#-0x10]
235156:  STRH.W          R12, [R1,#-0x22]
23515A:  LDRH.W          R2, [R1,#-0xC]
23515E:  STRH.W          LR, [R1,#-0x1E]
235162:  LDRH.W          R3, [R1,#-8]
235166:  STRH.W          R8, [R1,#-0x1A]
23516A:  LDRH.W          R6, [R1,#-4]
23516E:  STRH.W          R9, [R1,#-0x16]
235172:  STRH.W          R5, [R1,#-0x12]
235176:  STRH.W          R4, [R1,#-0xE]
23517A:  STRH.W          R2, [R1,#-0xA]
23517E:  STRH.W          R3, [R1,#-6]
235182:  STRH.W          R6, [R1,#-2]
235186:  POP.W           {R8,R9,R11}
23518A:  POP             {R4-R7,PC}
