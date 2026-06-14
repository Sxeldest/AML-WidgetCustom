; =========================================================
; Game Engine Function: sub_14E220
; Address            : 0x14E220 - 0x14E302
; =========================================================

14E220:  PUSH            {R7,LR}
14E222:  MOV             R7, SP
14E224:  SUB             SP, SP, #0x158
14E226:  VMOV.I32        Q8, #0
14E22A:  ADD             R2, SP, #0x160+dest
14E22C:  LDRD.W          R1, R0, [R0]; src
14E230:  MOVS            R3, #0
14E232:  VST1.64         {D16-D17}, [R2]!
14E236:  VST1.64         {D16-D17}, [R2]!
14E23A:  VST1.64         {D16-D17}, [R2]!
14E23E:  STR             R3, [R2]
14E240:  ASRS            R2, R0, #0x1F
14E242:  ADD.W           R0, R0, R2,LSR#29
14E246:  MOVS            R2, #1
14E248:  MOVS            R3, #0
14E24A:  ADD.W           R2, R2, R0,ASR#3; size
14E24E:  ADD             R0, SP, #0x160+var_15C; int
14E250:  BL              sub_17D4F2
14E254:  SUB.W           R1, R7, #0x3A ; ':'; int
14E258:  MOVS            R2, #0x10
14E25A:  MOVS            R3, #1
14E25C:  BL              sub_17D786
14E260:  ADD             R0, SP, #0x160+var_15C; int
14E262:  ADD             R1, SP, #0x160+var_48; int
14E264:  MOVS            R2, #0x20 ; ' '
14E266:  MOVS            R3, #1
14E268:  BL              sub_17D786
14E26C:  LDR             R1, [SP,#0x160+var_15C]
14E26E:  LDR             R0, [SP,#0x160+var_154]
14E270:  CMP             R0, R1
14E272:  BGE             loc_14E28A
14E274:  LDR             R1, [SP,#0x160+var_150]
14E276:  ASRS            R2, R0, #3
14E278:  LDRB            R1, [R1,R2]
14E27A:  ADDS            R2, R0, #1
14E27C:  AND.W           R0, R0, #7
14E280:  STR             R2, [SP,#0x160+var_154]
14E282:  LSL.W           R0, R1, R0
14E286:  LSLS            R0, R0, #0x18
14E288:  BPL             loc_14E2EC
14E28A:  ADD             R0, SP, #0x160+var_15C; int
14E28C:  ADD             R1, SP, #0x160+dest; dest
14E28E:  MOVS            R2, #0x34 ; '4'
14E290:  BL              sub_17D744
14E294:  MOV.W           R12, #0
14E298:  LDR             R0, =(off_23496C - 0x14E29E)
14E29A:  ADD             R0, PC; off_23496C
14E29C:  LDR             R0, [R0]; dword_23DEF4
14E29E:  LDR             R0, [R0]
14E2A0:  LDR.W           R0, [R0,#0x3B0]
14E2A4:  LDR             R0, [R0]
14E2A6:  CBZ             R0, loc_14E2F8
14E2A8:  ADD.W           R3, R0, #0x13A0
14E2AC:  LDRH.W          R1, [R7,#-0x3A]
14E2B0:  LDRH            R2, [R3]
14E2B2:  CMP             R2, R1
14E2B4:  BNE             loc_14E2CC
14E2B6:  LDR             R0, [R3,#0x1C]
14E2B8:  ADDS            R0, #0x1C
14E2BA:  LDR             R0, [R0]
14E2BC:  CBZ             R0, loc_14E2F8
14E2BE:  LDR             R1, [SP,#0x160+var_48]
14E2C0:  CMP.W           R12, #0
14E2C4:  BEQ             loc_14E2F2
14E2C6:  BL              sub_105640
14E2CA:  B               loc_14E2F8
14E2CC:  CMP.W           R1, #0x3EC
14E2D0:  BHI             loc_14E2F8
14E2D2:  ADDS            R2, R0, R1
14E2D4:  LDRB.W          R2, [R2,#0xFB4]
14E2D8:  CBZ             R2, loc_14E2F8
14E2DA:  ADD.W           R0, R0, R1,LSL#2
14E2DE:  LDR             R0, [R0,#4]
14E2E0:  CBZ             R0, loc_14E2F8
14E2E2:  LDR             R0, [R0]
14E2E4:  CBZ             R0, loc_14E2F8
14E2E6:  ADD.W           R0, R0, #0x128
14E2EA:  B               loc_14E2BA
14E2EC:  MOV.W           R12, #1
14E2F0:  B               loc_14E298
14E2F2:  ADD             R2, SP, #0x160+dest
14E2F4:  BL              sub_105540
14E2F8:  ADD             R0, SP, #0x160+var_15C
14E2FA:  BL              sub_17D542
14E2FE:  ADD             SP, SP, #0x158
14E300:  POP             {R7,PC}
