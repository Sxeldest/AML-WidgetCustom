; =========================================================
; Game Engine Function: _ZN6CWorld31RepositionCertainDynamicObjectsEv
; Address            : 0x42B188 - 0x42B1CA
; =========================================================

42B188:  PUSH            {R4-R7,LR}
42B18A:  ADD             R7, SP, #0xC
42B18C:  PUSH.W          {R11}
42B190:  LDR             R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x42B196)
42B192:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
42B194:  LDR             R0, [R0]; CPools::ms_pDummyPool ...
42B196:  LDR             R4, [R0]; CPools::ms_pDummyPool
42B198:  LDR             R0, [R4,#8]
42B19A:  CBZ             R0, loc_42B1C4
42B19C:  RSB.W           R1, R0, R0,LSL#4; CEntity *
42B1A0:  MOV             R2, #0xFFFFFFC4
42B1A4:  SUBS            R6, R0, #1
42B1A6:  ADD.W           R5, R2, R1,LSL#2
42B1AA:  LDR             R0, [R4,#4]
42B1AC:  LDRSB           R0, [R0,R6]
42B1AE:  CMP             R0, #0
42B1B0:  BLT             loc_42B1BC
42B1B2:  LDR             R0, [R4]
42B1B4:  ADDS            R0, R0, R5; this
42B1B6:  IT NE
42B1B8:  BLXNE           j__ZN6CWorld19RepositionOneObjectEP7CEntity; CWorld::RepositionOneObject(CEntity *)
42B1BC:  SUBS            R6, #1
42B1BE:  SUBS            R5, #0x3C ; '<'
42B1C0:  ADDS            R0, R6, #1
42B1C2:  BNE             loc_42B1AA
42B1C4:  POP.W           {R11}
42B1C8:  POP             {R4-R7,PC}
