; =========================================================
; Game Engine Function: sub_18A188
; Address            : 0x18A188 - 0x18A1B0
; =========================================================

18A188:  PUSH            {R4,R6,R7,LR}
18A18A:  ADD             R7, SP, #8
18A18C:  MOV             R4, R0
18A18E:  LDR             R0, [R0,#8]
18A190:  CBZ             R0, locret_18A1AE
18A192:  CMP.W           R0, #0x200
18A196:  BLS             loc_18A1AA
18A198:  CBNZ            R1, loc_18A1AA
18A19A:  LDR             R0, [R4]
18A19C:  CBZ             R0, loc_18A1A4
18A19E:  SUBS            R0, #8; void *
18A1A0:  BLX             j__ZdaPv; operator delete[](void *)
18A1A4:  MOVS            R0, #0
18A1A6:  STR             R0, [R4]
18A1A8:  STR             R0, [R4,#8]
18A1AA:  MOVS            R0, #0
18A1AC:  STR             R0, [R4,#4]
18A1AE:  POP             {R4,R6,R7,PC}
