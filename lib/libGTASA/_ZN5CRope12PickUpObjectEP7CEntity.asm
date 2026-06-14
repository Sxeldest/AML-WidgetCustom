; =========================================================
; Game Engine Function: _ZN5CRope12PickUpObjectEP7CEntity
; Address            : 0x415030 - 0x415136
; =========================================================

415030:  PUSH            {R4-R7,LR}
415032:  ADD             R7, SP, #0xC
415034:  PUSH.W          {R8}
415038:  SUB             SP, SP, #0x18
41503A:  MOV             R5, R1
41503C:  LDR.W           R1, [R0,#0x318]
415040:  CMP             R1, R5
415042:  BEQ             loc_41512E
415044:  ADD.W           R4, R0, #0x318
415048:  CBZ             R1, loc_41507A
41504A:  LDR             R2, [R1,#0x44]
41504C:  BIC.W           R2, R2, #0x2000000
415050:  STR             R2, [R1,#0x44]
415052:  LDR.W           R1, [R0,#0x318]
415056:  LDR             R2, [R1,#0x44]
415058:  BIC.W           R2, R2, #0x80000000
41505C:  STR             R2, [R1,#0x44]
41505E:  LDR.W           R1, [R0,#0x314]
415062:  MOVS            R2, #0
415064:  STR.W           R2, [R0,#0x318]
415068:  LDRD.W          R2, R3, [R1,#0x1C]
41506C:  ORR.W           R2, R2, #1
415070:  STRD.W          R2, R3, [R1,#0x1C]
415074:  MOVS            R1, #0x3C ; '<'
415076:  STRB.W          R1, [R0,#0x326]
41507A:  ADD.W           R8, R0, #0x314
41507E:  MOV             R0, R5; this
415080:  MOV             R1, R4; CEntity **
415082:  STR             R5, [R4]
415084:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
415088:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x415092)
41508A:  LDRSH.W         R2, [R5,#0x26]
41508E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
415090:  LDR             R1, [R4]
415092:  LDR.W           R6, [R8]
415096:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
415098:  LDR             R1, [R1,#0x14]
41509A:  LDR.W           R0, [R0,R2,LSL#2]
41509E:  MOVS            R2, #0
4150A0:  LDR             R0, [R0,#0x2C]
4150A2:  LDR             R0, [R0,#0x14]
4150A4:  STRD.W          R2, R2, [SP,#0x28+var_28]
4150A8:  MOV             R2, SP
4150AA:  STR             R0, [SP,#0x28+var_20]
4150AC:  ADD             R0, SP, #0x28+var_1C
4150AE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4150B2:  LDRD.W          R2, R1, [SP,#0x28+var_1C]
4150B6:  LDR             R3, [R6,#0x14]
4150B8:  LDR             R0, [SP,#0x28+var_14]
4150BA:  CBZ             R3, loc_4150C8
4150BC:  STR             R2, [R3,#0x30]
4150BE:  LDR             R2, [R6,#0x14]
4150C0:  STR             R1, [R2,#0x34]
4150C2:  LDR             R1, [R6,#0x14]
4150C4:  ADDS            R1, #0x38 ; '8'
4150C6:  B               loc_4150D0
4150C8:  STRD.W          R2, R1, [R6,#4]
4150CC:  ADD.W           R1, R6, #0xC
4150D0:  STR             R0, [R1]
4150D2:  LDR.W           R0, [R8]
4150D6:  LDRD.W          R1, R2, [R0,#0x1C]
4150DA:  BIC.W           R1, R1, #1
4150DE:  STRD.W          R1, R2, [R0,#0x1C]
4150E2:  LDR             R0, [R4]
4150E4:  LDR             R1, [R0,#0x44]
4150E6:  ORR.W           R1, R1, #0x2000000
4150EA:  STR             R1, [R0,#0x44]
4150EC:  LDRB.W          R1, [R5,#0x3A]
4150F0:  AND.W           R0, R1, #7
4150F4:  CMP             R0, #4
4150F6:  BEQ             loc_41510E
4150F8:  CMP             R0, #2
4150FA:  BNE             loc_41512E
4150FC:  AND.W           R1, R1, #0xF8
415100:  CMP             R1, #0x10
415102:  ITT EQ
415104:  ORREQ.W         R0, R0, #0x18
415108:  STRBEQ.W        R0, [R5,#0x3A]
41510C:  B               loc_41512E
41510E:  LDR             R0, [R4]
415110:  LDR             R1, [R0,#0x1C]
415112:  TST.W           R1, #0x40004
415116:  BEQ             loc_41512E
415118:  LDR             R1, [R0]
41511A:  MOVS            R5, #0
41511C:  LDR             R2, [R1,#0x14]
41511E:  MOVS            R1, #0
415120:  BLX             R2
415122:  LDR             R0, [R4]; this
415124:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
415128:  LDR             R0, [R4]
41512A:  STRB.W          R5, [R0,#0xBC]
41512E:  ADD             SP, SP, #0x18
415130:  POP.W           {R8}
415134:  POP             {R4-R7,PC}
