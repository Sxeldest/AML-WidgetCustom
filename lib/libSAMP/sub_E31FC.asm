; =========================================================
; Game Engine Function: sub_E31FC
; Address            : 0xE31FC - 0xE3256
; =========================================================

E31FC:  MOVS            R1, #0
E31FE:  MOVW            R12, #0x8D30
E3202:  MOVS            R3, #0
E3204:  ADDS            R2, R0, R3
E3206:  ADDS            R3, #0x24 ; '$'
E3208:  CMP             R3, R12
E320A:  STRD.W          R1, R1, [R2,#4]
E320E:  STR             R1, [R2,#0xC]
E3210:  BNE             loc_E3204
E3212:  VMOV.I32        Q8, #0
E3216:  ADD.W           R1, R0, #8
E321A:  MOV.W           R2, #0x3EC
E321E:  MOV.W           R12, #0
E3222:  LDRB.W          R3, [R1,#-4]
E3226:  STRB.W          R12, [R1,#-8]
E322A:  LSLS            R3, R3, #0x1F
E322C:  BNE             loc_E3234
E322E:  STRH.W          R12, [R1,#-4]
E3232:  B               loc_E323E
E3234:  LDR             R3, [R1,#4]
E3236:  STRB.W          R12, [R3]
E323A:  STR.W           R12, [R1]
E323E:  ADD.W           R3, R1, #8
E3242:  SUBS            R2, #1
E3244:  VST1.32         {D16-D17}, [R3]!
E3248:  ADD.W           R1, R1, #0x24 ; '$'
E324C:  STR.W           R12, [R3]
E3250:  IT EQ
E3252:  BXEQ            LR
E3254:  B               loc_E3222
