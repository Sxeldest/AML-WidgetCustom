; =========================================================
; Game Engine Function: sub_148BB0
; Address            : 0x148BB0 - 0x148C34
; =========================================================

148BB0:  PUSH            {R7,LR}
148BB2:  MOV             R7, SP
148BB4:  SUB             SP, SP, #8
148BB6:  MOVW            R2, #0x4004
148BBA:  MOV.W           R12, #0
148BBE:  ADD             R2, R0
148BC0:  LDR.W           R3, [R2,R12,LSL#2]
148BC4:  CMP             R3, R1
148BC6:  BEQ             loc_148BD4
148BC8:  ADD.W           R12, R12, #1
148BCC:  CMP.W           R12, #0x1000
148BD0:  BNE             loc_148BC0
148BD2:  B               loc_148C30
148BD4:  ADD.W           R1, R0, R12,LSL#2
148BD8:  LDR             R1, [R1,#4]
148BDA:  CBZ             R1, loc_148C30
148BDC:  MOVW            R1, #0x8004
148BE0:  ADD             R1, R0
148BE2:  LDR.W           R2, [R1,R12,LSL#2]
148BE6:  CBNZ            R2, loc_148C30
148BE8:  ADD.W           R2, R12, R12,LSL#1
148BEC:  MOVW            R3, #0xC004
148BF0:  ADD             R2, R0
148BF2:  LDRB            R2, [R2,R3]
148BF4:  CBNZ            R2, loc_148C30
148BF6:  ADD.W           R0, R0, #0x23000
148BFA:  MOVS            R2, #0xF
148BFC:  ADDS            R0, #4
148BFE:  STR.W           R2, [R1,R12,LSL#2]
148C02:  DMB.W           ISH
148C06:  LDREX.W         R3, [R0]
148C0A:  STREX.W         R1, R12, [R0]
148C0E:  CMP             R1, #0
148C10:  BNE             loc_148C06
148C12:  ADDS            R0, R3, #1
148C14:  DMB.W           ISH
148C18:  IT NE
148C1A:  CMPNE           R3, R12
148C1C:  BEQ             loc_148C30
148C1E:  LDR             R1, =(aAxl - 0x148C28); "AXL" ...
148C20:  MOVS            R0, #6; prio
148C22:  LDR             R2, =(aLossPickedupEv - 0x148C2E); "Loss pickedup event for pickup %d - ove"... ...
148C24:  ADD             R1, PC; "AXL"
148C26:  STR.W           R12, [SP,#0x10+var_10]
148C2A:  ADD             R2, PC; "Loss pickedup event for pickup %d - ove"...
148C2C:  BLX             __android_log_print
148C30:  ADD             SP, SP, #8
148C32:  POP             {R7,PC}
