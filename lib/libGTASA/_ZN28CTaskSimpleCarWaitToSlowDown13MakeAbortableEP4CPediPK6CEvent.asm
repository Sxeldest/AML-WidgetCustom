; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDown13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5021D8 - 0x502210
; =========================================================

5021D8:  PUSH            {R4,R5,R7,LR}
5021DA:  ADD             R7, SP, #8
5021DC:  MOV             R5, R3
5021DE:  MOV             R4, R0
5021E0:  CMP             R2, #2
5021E2:  BNE             loc_5021E8
5021E4:  MOVS            R0, #1
5021E6:  POP             {R4,R5,R7,PC}
5021E8:  CMP             R2, #1
5021EA:  BNE             loc_502208
5021EC:  CBZ             R5, loc_502208
5021EE:  LDR             R0, [R5]
5021F0:  LDR             R1, [R0,#8]
5021F2:  MOV             R0, R5
5021F4:  BLX             R1
5021F6:  CMP             R0, #9
5021F8:  BNE             loc_502208
5021FA:  LDRB.W          R0, [R5,#0x3C]
5021FE:  CMP             R0, #0
502200:  ITT NE
502202:  LDRBNE          R0, [R5,#9]
502204:  CMPNE           R0, #0
502206:  BNE             loc_5021E4
502208:  MOVS            R0, #2
50220A:  STR             R0, [R4,#0x10]
50220C:  MOVS            R0, #0
50220E:  POP             {R4,R5,R7,PC}
