; =========================================================
; Game Engine Function: _ZN11CPopulation19RemoveAllRandomPedsEv
; Address            : 0x4CE8E8 - 0x4CE946
; =========================================================

4CE8E8:  PUSH            {R4-R7,LR}
4CE8EA:  ADD             R7, SP, #0xC
4CE8EC:  PUSH.W          {R8,R9,R11}
4CE8F0:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4CE8F6)
4CE8F2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4CE8F4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4CE8F6:  LDR.W           R8, [R0]; CPools::ms_pPedPool
4CE8FA:  LDR.W           R0, [R8,#8]
4CE8FE:  CBZ             R0, loc_4CE940
4CE900:  MOVW            R1, #0x7CC
4CE904:  SUBS            R5, R0, #1
4CE906:  MULS            R1, R0
4CE908:  SUBW            R6, R1, #0x7CC
4CE90C:  LDR.W           R0, [R8,#4]
4CE910:  LDRSB           R0, [R0,R5]
4CE912:  CMP             R0, #0
4CE914:  BLT             loc_4CE936
4CE916:  LDR.W           R4, [R8]
4CE91A:  ADDS.W          R9, R4, R6
4CE91E:  BEQ             loc_4CE936
4CE920:  MOV             R0, R9; this
4CE922:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
4CE926:  CBZ             R0, loc_4CE936
4CE928:  MOV             R0, R9; this
4CE92A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CE92E:  LDR             R0, [R4,R6]
4CE930:  LDR             R1, [R0,#4]
4CE932:  MOV             R0, R9
4CE934:  BLX             R1
4CE936:  SUBS            R5, #1
4CE938:  SUBW            R6, R6, #0x7CC
4CE93C:  ADDS            R0, R5, #1
4CE93E:  BNE             loc_4CE90C
4CE940:  POP.W           {R8,R9,R11}
4CE944:  POP             {R4-R7,PC}
