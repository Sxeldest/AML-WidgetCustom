; =========================================================
; Game Engine Function: sub_18A144
; Address            : 0x18A144 - 0x18A16A
; =========================================================

18A144:  PUSH            {R4,R6,R7,LR}
18A146:  ADD             R7, SP, #8
18A148:  MOV             R4, R0
18A14A:  LDR             R0, [R0,#8]
18A14C:  CBZ             R0, locret_18A168
18A14E:  CMP.W           R0, #0x200
18A152:  BLS             loc_18A164
18A154:  CBNZ            R1, loc_18A164
18A156:  LDR             R0, [R4]; void *
18A158:  CBZ             R0, loc_18A15E
18A15A:  BLX             j__ZdaPv; operator delete[](void *)
18A15E:  MOVS            R0, #0
18A160:  STR             R0, [R4]
18A162:  STR             R0, [R4,#8]
18A164:  MOVS            R0, #0
18A166:  STR             R0, [R4,#4]
18A168:  POP             {R4,R6,R7,PC}
