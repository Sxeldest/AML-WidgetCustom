; =========================================================
; Game Engine Function: sub_18A274
; Address            : 0x18A274 - 0x18A29A
; =========================================================

18A274:  PUSH            {R4,R6,R7,LR}
18A276:  ADD             R7, SP, #8
18A278:  MOV             R4, R0
18A27A:  LDR             R0, [R0,#8]
18A27C:  CBZ             R0, locret_18A298
18A27E:  CMP.W           R0, #0x200
18A282:  BLS             loc_18A294
18A284:  CBNZ            R1, loc_18A294
18A286:  LDR             R0, [R4]; void *
18A288:  CBZ             R0, loc_18A28E
18A28A:  BLX             j__ZdaPv; operator delete[](void *)
18A28E:  MOVS            R0, #0
18A290:  STR             R0, [R4]
18A292:  STR             R0, [R4,#8]
18A294:  MOVS            R0, #0
18A296:  STR             R0, [R4,#4]
18A298:  POP             {R4,R6,R7,PC}
