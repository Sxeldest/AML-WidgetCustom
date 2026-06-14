; =========================================================
; Game Engine Function: png_calculate_crc
; Address            : 0x1EDA46 - 0x1EDAA6
; =========================================================

1EDA46:  PUSH            {R4-R7,LR}
1EDA48:  ADD             R7, SP, #0xC
1EDA4A:  PUSH.W          {R8}
1EDA4E:  MOV             R8, R0
1EDA50:  MOV             R6, R1
1EDA52:  LDR.W           R1, [R8,#0x138]
1EDA56:  MOV             R4, R2
1EDA58:  LDRB.W          R2, [R8,#0x1DF]
1EDA5C:  MOVS            R3, #0
1EDA5E:  TST.W           R1, #0x800
1EDA62:  AND.W           R1, R1, #0x300
1EDA66:  IT EQ
1EDA68:  MOVEQ           R3, #1
1EDA6A:  MOVS            R0, #0
1EDA6C:  CMP.W           R1, #0x300
1EDA70:  IT NE
1EDA72:  MOVNE           R0, #1
1EDA74:  LSLS            R1, R2, #0x1A
1EDA76:  IT PL
1EDA78:  MOVPL           R0, R3
1EDA7A:  CBZ             R4, loc_1EDAA0
1EDA7C:  CMP             R0, #1
1EDA7E:  BNE             loc_1EDAA0
1EDA80:  LDR.W           R0, [R8,#0x1F8]
1EDA84:  CMP             R4, #0
1EDA86:  MOV             R5, R4
1EDA88:  IT EQ
1EDA8A:  MOVEQ.W         R5, #0xFFFFFFFF
1EDA8E:  MOV             R1, R6
1EDA90:  MOV             R2, R5
1EDA92:  BLX             j_crc32
1EDA96:  SUBS            R4, R4, R5
1EDA98:  ADD             R6, R5
1EDA9A:  BNE             loc_1EDA84
1EDA9C:  STR.W           R0, [R8,#0x1F8]
1EDAA0:  POP.W           {R8}
1EDAA4:  POP             {R4-R7,PC}
