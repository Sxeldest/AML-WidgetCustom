; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup18PickLeastUsedModelEi
; Address            : 0x4D1BD0 - 0x4D1C40
; =========================================================

4D1BD0:  PUSH            {R4-R7,LR}
4D1BD2:  ADD             R7, SP, #0xC
4D1BD4:  PUSH.W          {R8}
4D1BD8:  MOV             R8, R1
4D1BDA:  MOV             R5, R0
4D1BDC:  BLX             j__ZN15CLoadedCarGroup12CountMembersEv; CLoadedCarGroup::CountMembers(void)
4D1BE0:  CMP             R0, #1
4D1BE2:  BLT             loc_4D1C28
4D1BE4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D1BF6)
4D1BE6:  MOV.W           R12, #0xFFFFFFFF
4D1BEA:  MOVW            LR, #0x3E7
4D1BEE:  MOVW            R6, #0x3E7
4D1BF2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D1BF4:  LDR             R2, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D1BF6:  LDRSH.W         R1, [R5]
4D1BFA:  LDR.W           R3, [R2,R1,LSL#2]
4D1BFE:  LDRSH.W         R4, [R3,#0x1E]
4D1C02:  CMP             R6, R4
4D1C04:  BLE             loc_4D1C0C
4D1C06:  LDRB.W          R3, [R3,#0x68]
4D1C0A:  B               loc_4D1C18
4D1C0C:  BNE             loc_4D1C20
4D1C0E:  LDRSB.W         R3, [R3,#0x68]
4D1C12:  CMP             LR, R3
4D1C14:  BLE             loc_4D1C20
4D1C16:  UXTB            R3, R3
4D1C18:  SXTB.W          LR, R3
4D1C1C:  MOV             R12, R1
4D1C1E:  MOV             R6, R4
4D1C20:  ADDS            R5, #2
4D1C22:  SUBS            R0, #1
4D1C24:  BNE             loc_4D1BF6
4D1C26:  B               loc_4D1C30
4D1C28:  MOVW            LR, #0x3E7
4D1C2C:  MOV.W           R12, #0xFFFFFFFF
4D1C30:  CMP             LR, R8
4D1C32:  IT GT
4D1C34:  MOVGT.W         R12, #0xFFFFFFFF
4D1C38:  MOV             R0, R12
4D1C3A:  POP.W           {R8}
4D1C3E:  POP             {R4-R7,PC}
