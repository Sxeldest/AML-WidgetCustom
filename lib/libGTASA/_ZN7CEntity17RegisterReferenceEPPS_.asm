; =========================================================
; Game Engine Function: _ZN7CEntity17RegisterReferenceEPPS_
; Address            : 0x40E820 - 0x40EA3E
; =========================================================

40E820:  PUSH            {R4-R7,LR}
40E822:  ADD             R7, SP, #0xC
40E824:  PUSH.W          {R8-R11}
40E828:  SUB             SP, SP, #4
40E82A:  LDRB.W          R2, [R0,#0x3A]
40E82E:  AND.W           R2, R2, #7
40E832:  CMP             R2, #1
40E834:  ITT EQ
40E836:  LDRHEQ          R2, [R0,#0x1E]
40E838:  TSTEQ.W         R2, #0x440
40E83C:  BEQ.W           loc_40E982
40E840:  LDR             R2, [R0,#0x28]
40E842:  CBNZ            R2, loc_40E84A
40E844:  B               loc_40E852
40E846:  LDR             R2, [R2]
40E848:  CBZ             R2, loc_40E852
40E84A:  LDR             R3, [R2,#4]
40E84C:  CMP             R3, R1
40E84E:  BNE             loc_40E846
40E850:  B               loc_40EA36
40E852:  LDR             R2, =(_ZN11CReferences10pEmptyListE_ptr - 0x40E858)
40E854:  ADD             R2, PC; _ZN11CReferences10pEmptyListE_ptr
40E856:  LDR             R2, [R2]; CReferences::pEmptyList ...
40E858:  LDR             R2, [R2]; CReferences::pEmptyList
40E85A:  CMP             R2, #0
40E85C:  BNE.W           loc_40EA24
40E860:  LDR             R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x40E866)
40E862:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
40E864:  LDR             R2, [R2]; CPools::ms_pPedPool ...
40E866:  LDR             R2, [R2]; CPools::ms_pPedPool
40E868:  STR             R2, [SP,#0x20+var_20]
40E86A:  LDR.W           R9, [R2,#8]
40E86E:  CMP.W           R9, #0
40E872:  BEQ             loc_40E8F4
40E874:  LDR             R2, =(_ZN11CReferences10pEmptyListE_ptr - 0x40E880)
40E876:  MOV.W           LR, #0
40E87A:  MOVS            R6, #0
40E87C:  ADD             R2, PC; _ZN11CReferences10pEmptyListE_ptr
40E87E:  LDR.W           R11, [R2]; CReferences::pEmptyList ...
40E882:  LDR             R3, [SP,#0x20+var_20]
40E884:  SUB.W           R9, R9, #1
40E888:  LDR             R2, [R3,#4]
40E88A:  LDRSB.W         R2, [R2,R9]
40E88E:  CMP             R2, #0
40E890:  BLT             loc_40E8E6
40E892:  LDR             R2, [R3]
40E894:  MOVW            R3, #0x7CC
40E898:  MLA.W           R10, R9, R3, R2
40E89C:  CMP.W           R10, #0
40E8A0:  ITTT NE
40E8A2:  MOVNE           R2, R10
40E8A4:  LDRNE.W         R3, [R2,#0x28]!
40E8A8:  CMPNE           R3, #0
40E8AA:  BEQ             loc_40E8E6
40E8AC:  MOVS            R4, #0
40E8AE:  MOV             R12, R2
40E8B0:  MOV             R2, R3
40E8B2:  LDRD.W          R3, R8, [R2]
40E8B6:  LDR.W           R5, [R8]
40E8BA:  CMP             R5, R10
40E8BC:  BEQ             loc_40E8DA
40E8BE:  STR.W           R3, [R12]
40E8C2:  CMP             R3, #0
40E8C4:  LDR.W           R4, [R11]; CReferences::pEmptyList
40E8C8:  MOV             R6, R2
40E8CA:  STR             R4, [R2]
40E8CC:  MOV             R4, R2
40E8CE:  STR.W           R2, [R11]; CReferences::pEmptyList
40E8D2:  STR.W           LR, [R2,#4]
40E8D6:  BNE             loc_40E8B0
40E8D8:  B               loc_40EA24
40E8DA:  CMP             R3, #0
40E8DC:  BNE             loc_40E8AE
40E8DE:  CMP             R4, #0
40E8E0:  MOV             R2, R4
40E8E2:  BNE.W           loc_40EA24
40E8E6:  CMP.W           R9, #0
40E8EA:  BNE             loc_40E882
40E8EC:  CMP             R6, #0
40E8EE:  MOV             R2, R6
40E8F0:  BNE.W           loc_40EA24
40E8F4:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40E8FA)
40E8F6:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40E8F8:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
40E8FA:  LDR             R2, [R2]; CPools::ms_pVehiclePool
40E8FC:  STR             R2, [SP,#0x20+var_20]
40E8FE:  LDR.W           R9, [R2,#8]
40E902:  CMP.W           R9, #0
40E906:  BEQ             loc_40E994
40E908:  LDR             R2, =(_ZN11CReferences10pEmptyListE_ptr - 0x40E914)
40E90A:  MOV.W           LR, #0
40E90E:  MOVS            R6, #0
40E910:  ADD             R2, PC; _ZN11CReferences10pEmptyListE_ptr
40E912:  LDR.W           R11, [R2]; CReferences::pEmptyList ...
40E916:  LDR             R3, [SP,#0x20+var_20]
40E918:  SUB.W           R9, R9, #1
40E91C:  LDR             R2, [R3,#4]
40E91E:  LDRSB.W         R2, [R2,R9]
40E922:  CMP             R2, #0
40E924:  BLT             loc_40E940
40E926:  LDR             R2, [R3]
40E928:  MOVW            R3, #0xA2C
40E92C:  MLA.W           R10, R9, R3, R2
40E930:  CMP.W           R10, #0
40E934:  ITTT NE
40E936:  MOVNE           R2, R10
40E938:  LDRNE.W         R3, [R2,#0x28]!
40E93C:  CMPNE           R3, #0
40E93E:  BNE             loc_40E948
40E940:  CMP.W           R9, #0
40E944:  BNE             loc_40E916
40E946:  B               loc_40E98E
40E948:  MOVS            R4, #0
40E94A:  MOV             R12, R2
40E94C:  MOV             R2, R3
40E94E:  LDRD.W          R3, R8, [R2]
40E952:  LDR.W           R5, [R8]
40E956:  CMP             R5, R10
40E958:  BEQ             loc_40E976
40E95A:  STR.W           R3, [R12]
40E95E:  CMP             R3, #0
40E960:  LDR.W           R4, [R11]; CReferences::pEmptyList
40E964:  MOV             R6, R2
40E966:  STR             R4, [R2]
40E968:  MOV             R4, R2
40E96A:  STR.W           R2, [R11]; CReferences::pEmptyList
40E96E:  STR.W           LR, [R2,#4]
40E972:  BNE             loc_40E94C
40E974:  B               loc_40EA24
40E976:  CMP             R3, #0
40E978:  BNE             loc_40E94A
40E97A:  CMP             R4, #0
40E97C:  MOV             R2, R4
40E97E:  BEQ             loc_40E940
40E980:  B               loc_40EA24
40E982:  LDRH.W          R2, [R0,#0x38]
40E986:  CMP             R2, #0
40E988:  BNE.W           loc_40E840
40E98C:  B               loc_40EA36
40E98E:  CMP             R6, #0
40E990:  MOV             R2, R6
40E992:  BNE             loc_40EA24
40E994:  LDR             R2, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40E99A)
40E996:  ADD             R2, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40E998:  LDR             R2, [R2]; CPools::ms_pObjectPool ...
40E99A:  LDR             R2, [R2]; CPools::ms_pObjectPool
40E99C:  STR             R2, [SP,#0x20+var_20]
40E99E:  LDR.W           R9, [R2,#8]
40E9A2:  CMP.W           R9, #0
40E9A6:  BEQ             loc_40EA36
40E9A8:  LDR             R2, =(_ZN11CReferences10pEmptyListE_ptr - 0x40E9B4)
40E9AA:  MOV.W           LR, #0
40E9AE:  MOVS            R6, #0
40E9B0:  ADD             R2, PC; _ZN11CReferences10pEmptyListE_ptr
40E9B2:  LDR.W           R11, [R2]; CReferences::pEmptyList ...
40E9B6:  LDR             R3, [SP,#0x20+var_20]
40E9B8:  SUB.W           R9, R9, #1
40E9BC:  LDR             R2, [R3,#4]
40E9BE:  LDRSB.W         R2, [R2,R9]
40E9C2:  CMP             R2, #0
40E9C4:  BLT             loc_40EA18
40E9C6:  LDR             R2, [R3]
40E9C8:  MOV.W           R3, #0x1A4
40E9CC:  MLA.W           R10, R9, R3, R2
40E9D0:  CMP.W           R10, #0
40E9D4:  ITTT NE
40E9D6:  MOVNE           R2, R10
40E9D8:  LDRNE.W         R3, [R2,#0x28]!
40E9DC:  CMPNE           R3, #0
40E9DE:  BEQ             loc_40EA18
40E9E0:  MOVS            R4, #0
40E9E2:  MOV             R12, R2
40E9E4:  MOV             R2, R3
40E9E6:  LDRD.W          R3, R8, [R2]
40E9EA:  LDR.W           R5, [R8]
40E9EE:  CMP             R5, R10
40E9F0:  BEQ             loc_40EA0E
40E9F2:  STR.W           R3, [R12]
40E9F6:  CMP             R3, #0
40E9F8:  LDR.W           R4, [R11]; CReferences::pEmptyList
40E9FC:  MOV             R6, R2
40E9FE:  STR             R4, [R2]
40EA00:  MOV             R4, R2
40EA02:  STR.W           R2, [R11]; CReferences::pEmptyList
40EA06:  STR.W           LR, [R2,#4]
40EA0A:  BNE             loc_40E9E4
40EA0C:  B               loc_40EA24
40EA0E:  CMP             R3, #0
40EA10:  BNE             loc_40E9E2
40EA12:  CMP             R4, #0
40EA14:  MOV             R2, R4
40EA16:  BNE             loc_40EA24
40EA18:  CMP.W           R9, #0
40EA1C:  BNE             loc_40E9B6
40EA1E:  CMP             R6, #0
40EA20:  MOV             R2, R6
40EA22:  BEQ             loc_40EA36
40EA24:  LDR             R3, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EA2C)
40EA26:  LDR             R6, [R2]
40EA28:  ADD             R3, PC; _ZN11CReferences10pEmptyListE_ptr
40EA2A:  LDR             R3, [R3]; CReferences::pEmptyList ...
40EA2C:  STR             R6, [R3]; CReferences::pEmptyList
40EA2E:  LDR             R3, [R0,#0x28]
40EA30:  STR             R3, [R2]
40EA32:  STR             R2, [R0,#0x28]
40EA34:  STR             R1, [R2,#4]
40EA36:  ADD             SP, SP, #4
40EA38:  POP.W           {R8-R11}
40EA3C:  POP             {R4-R7,PC}
