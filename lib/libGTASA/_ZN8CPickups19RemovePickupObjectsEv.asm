; =========================================================
; Game Engine Function: _ZN8CPickups19RemovePickupObjectsEv
; Address            : 0x321900 - 0x321964
; =========================================================

321900:  PUSH            {R4-R7,LR}
321902:  ADD             R7, SP, #0xC
321904:  PUSH.W          {R8-R10}
321908:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x321914)
32190A:  MOV.W           R8, #0
32190E:  MOVS            R4, #0
321910:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321912:  LDR             R5, [R0]; CPickups::aPickUps ...
321914:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x32191A)
321916:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321918:  LDR.W           R10, [R0]; CPickups::aPickUps ...
32191C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x321922)
32191E:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321920:  LDR.W           R9, [R0]; CPickups::aPickUps ...
321924:  ADDS            R0, R5, R4
321926:  LDRB            R0, [R0,#0x1C]
321928:  CMP             R0, #0
32192A:  ITTT NE
32192C:  ADDNE.W         R6, R10, R4
321930:  LDRNE           R0, [R6,#4]; this
321932:  CMPNE           R0, #0
321934:  BEQ             loc_321956
321936:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
32193A:  LDR             R0, [R6,#4]
32193C:  CMP             R0, #0
32193E:  ITTT NE
321940:  LDRNE           R1, [R0]
321942:  LDRNE           R1, [R1,#4]
321944:  BLXNE           R1
321946:  ADD.W           R0, R9, R4
32194A:  STR.W           R8, [R6,#4]
32194E:  LDRB            R1, [R0,#0x1D]
321950:  AND.W           R1, R1, #0xF7
321954:  STRB            R1, [R0,#0x1D]
321956:  ADDS            R4, #0x20 ; ' '
321958:  CMP.W           R4, #0x4D80
32195C:  BNE             loc_321924
32195E:  POP.W           {R8-R10}
321962:  POP             {R4-R7,PC}
