; =========================================================
; Game Engine Function: _ZN6CWorld31RemoveReferencesToDeletedObjectEP7CEntity
; Address            : 0x42A8C8 - 0x42A9E0
; =========================================================

42A8C8:  PUSH            {R4-R7,LR}
42A8CA:  ADD             R7, SP, #0xC
42A8CC:  PUSH.W          {R8-R11}
42A8D0:  SUB             SP, SP, #4
42A8D2:  MOV             R8, R0
42A8D4:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42A8DA)
42A8D6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
42A8D8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
42A8DA:  LDR.W           R11, [R0]; CPools::ms_pPedPool
42A8DE:  LDR.W           R0, [R11,#8]
42A8E2:  CBZ             R0, loc_42A93C
42A8E4:  MOVW            R1, #0x7CC
42A8E8:  SUBS            R4, R0, #1
42A8EA:  MULS            R1, R0
42A8EC:  RSB.W           R9, R8, #0
42A8F0:  MOV.W           R10, #0
42A8F4:  SUB.W           R6, R1, #0x260
42A8F8:  LDR.W           R0, [R11,#4]
42A8FC:  LDRSB           R0, [R0,R4]
42A8FE:  CMP             R0, #0
42A900:  BLT             loc_42A932
42A902:  LDR.W           R5, [R11]
42A906:  SUBW            R0, R5, #0x7CC
42A90A:  ADDS            R1, R0, R6
42A90C:  CMN.W           R1, #0x260
42A910:  ITTT NE
42A912:  ADDNE           R0, R9
42A914:  ADDNE           R0, R6
42A916:  CMNNE.W         R0, #0x260
42A91A:  BEQ             loc_42A932
42A91C:  ADDS            R0, R5, R6
42A91E:  MOV             R1, R8; CEntity *
42A920:  SUBW            R0, R0, #0x56C; this
42A924:  BLX             j__ZN9CPhysical18RemoveRefsToEntityEP7CEntity; CPhysical::RemoveRefsToEntity(CEntity *)
42A928:  LDR             R0, [R5,R6]
42A92A:  CMP             R0, R8
42A92C:  IT EQ
42A92E:  STREQ.W         R10, [R5,R6]
42A932:  SUBS            R4, #1
42A934:  SUBW            R6, R6, #0x7CC
42A938:  ADDS            R0, R4, #1
42A93A:  BNE             loc_42A8F8
42A93C:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42A942)
42A93E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42A940:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
42A942:  LDR.W           R9, [R0]; CPools::ms_pVehiclePool
42A946:  LDR.W           R0, [R9,#8]
42A94A:  CBZ             R0, loc_42A998
42A94C:  MOVW            R1, #0xA2C
42A950:  SUBS            R6, R0, #1
42A952:  MULS            R1, R0
42A954:  RSB.W           R10, R8, #0
42A958:  SUBW            R4, R1, #0xA2C
42A95C:  LDR.W           R0, [R9,#4]
42A960:  LDRSB           R0, [R0,R6]
42A962:  CMP             R0, #0
42A964:  BLT             loc_42A98E
42A966:  LDR.W           R5, [R9]
42A96A:  ADDS.W          R11, R5, R4
42A96E:  ITT NE
42A970:  ADDNE.W         R0, R5, R10
42A974:  ADDSNE.W        R0, R0, R4
42A978:  BEQ             loc_42A98E
42A97A:  MOV             R0, R11; this
42A97C:  MOV             R1, R8; CEntity *
42A97E:  BLX             j__ZN9CPhysical18RemoveRefsToEntityEP7CEntity; CPhysical::RemoveRefsToEntity(CEntity *)
42A982:  LDR             R0, [R5,R4]
42A984:  MOV             R1, R8
42A986:  LDR.W           R2, [R0,#0xA4]
42A98A:  MOV             R0, R11
42A98C:  BLX             R2
42A98E:  SUBS            R6, #1
42A990:  SUBW            R4, R4, #0xA2C
42A994:  ADDS            R0, R6, #1
42A996:  BNE             loc_42A95C
42A998:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x42A99E)
42A99A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
42A99C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
42A99E:  LDR             R4, [R0]; CPools::ms_pObjectPool
42A9A0:  LDR             R0, [R4,#8]
42A9A2:  CBZ             R0, loc_42A9D8
42A9A4:  MOV.W           R1, #0x1A4
42A9A8:  SUBS            R6, R0, #1
42A9AA:  MULS            R1, R0
42A9AC:  RSB.W           R9, R8, #0
42A9B0:  SUB.W           R5, R1, #0x1A4
42A9B4:  LDR             R0, [R4,#4]
42A9B6:  LDRSB           R0, [R0,R6]
42A9B8:  CMP             R0, #0
42A9BA:  BLT             loc_42A9CE
42A9BC:  LDR             R1, [R4]
42A9BE:  ADDS            R0, R1, R5; this
42A9C0:  BEQ             loc_42A9CE
42A9C2:  ADD             R1, R9
42A9C4:  ADDS            R1, R1, R5
42A9C6:  ITT NE
42A9C8:  MOVNE           R1, R8; CEntity *
42A9CA:  BLXNE           j__ZN9CPhysical18RemoveRefsToEntityEP7CEntity; CPhysical::RemoveRefsToEntity(CEntity *)
42A9CE:  SUBS            R6, #1
42A9D0:  SUB.W           R5, R5, #0x1A4
42A9D4:  ADDS            R0, R6, #1
42A9D6:  BNE             loc_42A9B4
42A9D8:  ADD             SP, SP, #4
42A9DA:  POP.W           {R8-R11}
42A9DE:  POP             {R4-R7,PC}
