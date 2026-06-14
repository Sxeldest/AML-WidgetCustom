; =========================================================
; Game Engine Function: sub_148C3C
; Address            : 0x148C3C - 0x148C96
; =========================================================

148C3C:  PUSH            {R4-R7,LR}
148C3E:  ADD             R7, SP, #0xC
148C40:  PUSH.W          {R8}
148C44:  MOV             R4, R0
148C46:  MOVW            R0, #0x17BC
148C4A:  MOV.W           R8, #0
148C4E:  MOVW            R1, #0x139C; n
148C52:  STR.W           R8, [R4,R0]
148C56:  MOVW            R0, #0x17B8
148C5A:  STR.W           R8, [R4,R0]
148C5E:  MOVW            R0, #0x17B4
148C62:  STR.W           R8, [R4,R0]
148C66:  ADDS            R0, R4, #4; int
148C68:  BLX             sub_22178C
148C6C:  MOV.W           R0, #0x1E8; unsigned int
148C70:  ADD.W           R6, R4, #0x13A0
148C74:  BLX             j__Znwj; operator new(uint)
148C78:  MOV             R5, R0
148C7A:  BL              sub_13E888
148C7E:  STRD.W          R5, R8, [R6,#0x1C]
148C82:  MOV             R0, R4
148C84:  STR.W           R8, [R6,#0x24]
148C88:  STRH.W          R8, [R6]
148C8C:  STR.W           R8, [R4]
148C90:  POP.W           {R8}
148C94:  POP             {R4-R7,PC}
