; =========================================================
; Game Engine Function: alSource3dSOFT
; Address            : 0x257608 - 0x2576E6
; =========================================================

257608:  PUSH            {R4-R7,LR}
25760A:  ADD             R7, SP, #0xC
25760C:  PUSH.W          {R8,R9,R11}
257610:  SUB             SP, SP, #0x10
257612:  MOV             R8, R3
257614:  MOV             R9, R2
257616:  MOV             R5, R1
257618:  MOV             R6, R0
25761A:  BLX             j_GetContextRef
25761E:  MOV             R4, R0
257620:  CMP             R4, #0
257622:  BEQ             loc_2576DE
257624:  ADD.W           R0, R4, #8
257628:  MOV             R1, R6
25762A:  BLX             j_LookupUIntMapKey
25762E:  CBZ             R0, loc_25766A
257630:  MOVW            R1, #0x1004
257634:  SUBS            R1, R5, R1
257636:  CMP             R1, #3
257638:  BCS             loc_25769E
25763A:  VLDR            D16, [R7,#arg_8]
25763E:  VMOV            D18, R9, R8
257642:  VLDR            D17, [R7,#arg_0]
257646:  ADD             R3, SP, #0x28+var_24
257648:  VCVT.F32.F64    S2, D18
25764C:  MOV             R1, R4
25764E:  MOV             R2, R5
257650:  VCVT.F32.F64    S0, D17
257654:  VCVT.F32.F64    S4, D16
257658:  VSTR            S0, [SP,#0x28+var_20]
25765C:  VSTR            S2, [SP,#0x28+var_24]
257660:  VSTR            S4, [SP,#0x28+var_1C]
257664:  BL              sub_256840
257668:  B               loc_2576D8
25766A:  LDR             R0, =(TrapALError_ptr - 0x257670)
25766C:  ADD             R0, PC; TrapALError_ptr
25766E:  LDR             R0, [R0]; TrapALError
257670:  LDRB            R0, [R0]
257672:  CMP             R0, #0
257674:  ITT NE
257676:  MOVNE           R0, #5; sig
257678:  BLXNE           raise
25767C:  LDREX.W         R0, [R4,#0x50]
257680:  CBNZ            R0, loc_2576D0
257682:  ADD.W           R0, R4, #0x50 ; 'P'
257686:  MOVW            R1, #0xA001
25768A:  DMB.W           ISH
25768E:  STREX.W         R2, R1, [R0]
257692:  CBZ             R2, loc_2576D4
257694:  LDREX.W         R2, [R0]
257698:  CMP             R2, #0
25769A:  BEQ             loc_25768E
25769C:  B               loc_2576D0
25769E:  LDR             R0, =(TrapALError_ptr - 0x2576A4)
2576A0:  ADD             R0, PC; TrapALError_ptr
2576A2:  LDR             R0, [R0]; TrapALError
2576A4:  LDRB            R0, [R0]
2576A6:  CMP             R0, #0
2576A8:  ITT NE
2576AA:  MOVNE           R0, #5; sig
2576AC:  BLXNE           raise
2576B0:  LDREX.W         R0, [R4,#0x50]
2576B4:  CBNZ            R0, loc_2576D0
2576B6:  ADD.W           R0, R4, #0x50 ; 'P'
2576BA:  MOVW            R1, #0xA002
2576BE:  DMB.W           ISH
2576C2:  STREX.W         R2, R1, [R0]
2576C6:  CBZ             R2, loc_2576D4
2576C8:  LDREX.W         R2, [R0]
2576CC:  CMP             R2, #0
2576CE:  BEQ             loc_2576C2
2576D0:  CLREX.W
2576D4:  DMB.W           ISH
2576D8:  MOV             R0, R4
2576DA:  BLX             j_ALCcontext_DecRef
2576DE:  ADD             SP, SP, #0x10
2576E0:  POP.W           {R8,R9,R11}
2576E4:  POP             {R4-R7,PC}
