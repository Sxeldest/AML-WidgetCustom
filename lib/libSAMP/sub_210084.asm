; =========================================================
; Game Engine Function: sub_210084
; Address            : 0x210084 - 0x2100BE
; =========================================================

210084:  PUSH            {R4-R7,LR}
210086:  ADD             R7, SP, #0xC
210088:  PUSH.W          {R11}
21008C:  MOV             R5, R0
21008E:  MOV             R0, R1; s
210090:  MOV             R4, R1
210092:  BLX             strlen
210096:  MOV             R6, R0
210098:  ADDS            R0, #0xD; unsigned int
21009A:  BLX             j__Znwj; operator new(uint)
21009E:  STRD.W          R6, R6, [R0]
2100A2:  ADDS            R2, R6, #1; n
2100A4:  ADD.W           R6, R0, #0xC
2100A8:  MOVS            R1, #0
2100AA:  STR             R1, [R0,#8]
2100AC:  MOV             R1, R4; src
2100AE:  MOV             R0, R6; dest
2100B0:  BLX             j_memcpy
2100B4:  STR             R6, [R5]
2100B6:  MOV             R0, R5
2100B8:  POP.W           {R11}
2100BC:  POP             {R4-R7,PC}
