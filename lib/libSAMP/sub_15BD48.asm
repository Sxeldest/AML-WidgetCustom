; =========================================================
; Game Engine Function: sub_15BD48
; Address            : 0x15BD48 - 0x15BDB6
; =========================================================

15BD48:  PUSH            {R4-R7,LR}
15BD4A:  ADD             R7, SP, #0xC
15BD4C:  PUSH.W          {R8}
15BD50:  LDR             R0, [R0,#4]
15BD52:  CBZ             R0, loc_15BDAC
15BD54:  LDR             R5, [R0]
15BD56:  CBZ             R5, loc_15BDAC
15BD58:  MOV             R0, R5
15BD5A:  MOVS            R1, #4
15BD5C:  BL              sub_164B08
15BD60:  EOR.W           R0, R0, #1
15BD64:  MOVS            R4, #0
15BD66:  ORRS            R0, R1
15BD68:  BEQ             loc_15BDAE
15BD6A:  MOV             R0, R5
15BD6C:  MOVS            R1, #1
15BD6E:  BL              sub_164B08
15BD72:  MOV             R8, R0
15BD74:  MOV             R6, R1
15BD76:  MOV             R0, R5
15BD78:  MOVS            R1, #2
15BD7A:  BL              sub_164B08
15BD7E:  SUBS.W          R2, R8, R0
15BD82:  AND.W           R0, R0, R1
15BD86:  SBCS.W          R2, R6, R1
15BD8A:  SUB.W           R0, R0, #0xFFFFFFFF
15BD8E:  AND.W           R1, R8, R6
15BD92:  CLZ.W           R0, R0
15BD96:  SUB.W           R1, R1, #0xFFFFFFFF
15BD9A:  IT CC
15BD9C:  MOVCC           R4, #1
15BD9E:  CLZ.W           R1, R1
15BDA2:  LSRS            R0, R0, #5
15BDA4:  LSRS            R1, R1, #5
15BDA6:  ORRS            R0, R1
15BDA8:  ORRS            R4, R0
15BDAA:  B               loc_15BDAE
15BDAC:  MOVS            R4, #0
15BDAE:  MOV             R0, R4
15BDB0:  POP.W           {R8}
15BDB4:  POP             {R4-R7,PC}
