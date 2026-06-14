; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotf
; Address            : 0x23E628 - 0x23E732
; =========================================================

23E628:  PUSH            {R4-R7,LR}
23E62A:  ADD             R7, SP, #0xC
23E62C:  PUSH.W          {R8}
23E630:  MOV             R5, R2
23E632:  MOV             R6, R1
23E634:  MOV             R4, R0
23E636:  BLX             j_GetContextRef
23E63A:  MOV             R8, R0
23E63C:  CMP.W           R8, #0
23E640:  BEQ             loc_23E67A
23E642:  ADD.W           R0, R8, #0x2C ; ','
23E646:  MOV             R1, R4
23E648:  BLX             j_LookupUIntMapKey
23E64C:  CBZ             R0, loc_23E680
23E64E:  CMP             R6, #2
23E650:  BNE             loc_23E6B6
23E652:  VMOV            S0, R5
23E656:  VCMPE.F32       S0, #0.0
23E65A:  VMRS            APSR_nzcv, FPSCR
23E65E:  BLT             loc_23E6EA
23E660:  VMOV.F32        S2, #1.0
23E664:  VCMPE.F32       S0, S2
23E668:  VMRS            APSR_nzcv, FPSCR
23E66C:  BGT             loc_23E6EA
23E66E:  MOVS            R1, #1
23E670:  VSTR            S0, [R0,#0xB8]
23E674:  STR.W           R1, [R0,#0xC0]
23E678:  B               loc_23E724
23E67A:  POP.W           {R8}
23E67E:  POP             {R4-R7,PC}
23E680:  LDR             R0, =(TrapALError_ptr - 0x23E686)
23E682:  ADD             R0, PC; TrapALError_ptr
23E684:  LDR             R0, [R0]; TrapALError
23E686:  LDRB            R0, [R0]
23E688:  CMP             R0, #0
23E68A:  ITT NE
23E68C:  MOVNE           R0, #5; sig
23E68E:  BLXNE           raise
23E692:  LDREX.W         R0, [R8,#0x50]
23E696:  CMP             R0, #0
23E698:  BNE             loc_23E71C
23E69A:  ADD.W           R0, R8, #0x50 ; 'P'
23E69E:  MOVW            R1, #0xA001
23E6A2:  DMB.W           ISH
23E6A6:  STREX.W         R2, R1, [R0]
23E6AA:  CBZ             R2, loc_23E720
23E6AC:  LDREX.W         R2, [R0]
23E6B0:  CMP             R2, #0
23E6B2:  BEQ             loc_23E6A6
23E6B4:  B               loc_23E71C
23E6B6:  LDR             R0, =(TrapALError_ptr - 0x23E6BC)
23E6B8:  ADD             R0, PC; TrapALError_ptr
23E6BA:  LDR             R0, [R0]; TrapALError
23E6BC:  LDRB            R0, [R0]
23E6BE:  CMP             R0, #0
23E6C0:  ITT NE
23E6C2:  MOVNE           R0, #5; sig
23E6C4:  BLXNE           raise
23E6C8:  LDREX.W         R0, [R8,#0x50]
23E6CC:  CBNZ            R0, loc_23E71C
23E6CE:  ADD.W           R0, R8, #0x50 ; 'P'
23E6D2:  MOVW            R1, #0xA002
23E6D6:  DMB.W           ISH
23E6DA:  STREX.W         R2, R1, [R0]
23E6DE:  CBZ             R2, loc_23E720
23E6E0:  LDREX.W         R2, [R0]
23E6E4:  CMP             R2, #0
23E6E6:  BEQ             loc_23E6DA
23E6E8:  B               loc_23E71C
23E6EA:  LDR             R0, =(TrapALError_ptr - 0x23E6F0)
23E6EC:  ADD             R0, PC; TrapALError_ptr
23E6EE:  LDR             R0, [R0]; TrapALError
23E6F0:  LDRB            R0, [R0]
23E6F2:  CMP             R0, #0
23E6F4:  ITT NE
23E6F6:  MOVNE           R0, #5; sig
23E6F8:  BLXNE           raise
23E6FC:  LDREX.W         R0, [R8,#0x50]
23E700:  CBNZ            R0, loc_23E71C
23E702:  ADD.W           R0, R8, #0x50 ; 'P'
23E706:  MOVW            R1, #0xA003
23E70A:  DMB.W           ISH
23E70E:  STREX.W         R2, R1, [R0]
23E712:  CBZ             R2, loc_23E720
23E714:  LDREX.W         R2, [R0]
23E718:  CMP             R2, #0
23E71A:  BEQ             loc_23E70E
23E71C:  CLREX.W
23E720:  DMB.W           ISH
23E724:  MOV             R0, R8
23E726:  POP.W           {R8}
23E72A:  POP.W           {R4-R7,LR}
23E72E:  B.W             ALCcontext_DecRef
