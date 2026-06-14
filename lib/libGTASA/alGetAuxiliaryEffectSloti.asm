; =========================================================
; Game Engine Function: alGetAuxiliaryEffectSloti
; Address            : 0x23E7E4 - 0x23E8A4
; =========================================================

23E7E4:  PUSH            {R4-R7,LR}
23E7E6:  ADD             R7, SP, #0xC
23E7E8:  PUSH.W          {R8}
23E7EC:  MOV             R8, R2
23E7EE:  MOV             R6, R1
23E7F0:  MOV             R5, R0
23E7F2:  BLX             j_GetContextRef
23E7F6:  MOV             R4, R0
23E7F8:  CBZ             R4, loc_23E818
23E7FA:  ADD.W           R0, R4, #0x2C ; ','
23E7FE:  MOV             R1, R5
23E800:  BLX             j_LookupUIntMapKey
23E804:  CBZ             R0, loc_23E81E
23E806:  CMP             R6, #3
23E808:  BEQ             loc_23E852
23E80A:  CMP             R6, #1
23E80C:  BNE             loc_23E85C
23E80E:  LDR.W           R0, [R0,#0xB4]
23E812:  STR.W           R0, [R8]
23E816:  B               loc_23E896
23E818:  POP.W           {R8}
23E81C:  POP             {R4-R7,PC}
23E81E:  LDR             R0, =(TrapALError_ptr - 0x23E824)
23E820:  ADD             R0, PC; TrapALError_ptr
23E822:  LDR             R0, [R0]; TrapALError
23E824:  LDRB            R0, [R0]
23E826:  CMP             R0, #0
23E828:  ITT NE
23E82A:  MOVNE           R0, #5; sig
23E82C:  BLXNE           raise
23E830:  LDREX.W         R0, [R4,#0x50]
23E834:  CBNZ            R0, loc_23E88E
23E836:  ADD.W           R0, R4, #0x50 ; 'P'
23E83A:  MOVW            R1, #0xA001
23E83E:  DMB.W           ISH
23E842:  STREX.W         R2, R1, [R0]
23E846:  CBZ             R2, loc_23E892
23E848:  LDREX.W         R2, [R0]
23E84C:  CMP             R2, #0
23E84E:  BEQ             loc_23E842
23E850:  B               loc_23E88E
23E852:  LDRB.W          R0, [R0,#0xBC]
23E856:  STR.W           R0, [R8]
23E85A:  B               loc_23E896
23E85C:  LDR             R0, =(TrapALError_ptr - 0x23E862)
23E85E:  ADD             R0, PC; TrapALError_ptr
23E860:  LDR             R0, [R0]; TrapALError
23E862:  LDRB            R0, [R0]
23E864:  CMP             R0, #0
23E866:  ITT NE
23E868:  MOVNE           R0, #5; sig
23E86A:  BLXNE           raise
23E86E:  LDREX.W         R0, [R4,#0x50]
23E872:  CBNZ            R0, loc_23E88E
23E874:  ADD.W           R0, R4, #0x50 ; 'P'
23E878:  MOVW            R1, #0xA002
23E87C:  DMB.W           ISH
23E880:  STREX.W         R2, R1, [R0]
23E884:  CBZ             R2, loc_23E892
23E886:  LDREX.W         R2, [R0]
23E88A:  CMP             R2, #0
23E88C:  BEQ             loc_23E880
23E88E:  CLREX.W
23E892:  DMB.W           ISH
23E896:  MOV             R0, R4
23E898:  POP.W           {R8}
23E89C:  POP.W           {R4-R7,LR}
23E8A0:  B.W             ALCcontext_DecRef
