; =========================================================
; Game Engine Function: _ZN17CPedSaveStructure9ConstructEP4CPed
; Address            : 0x4846F0 - 0x4847BC
; =========================================================

4846F0:  PUSH            {R4,R5,R7,LR}
4846F2:  ADD             R7, SP, #8
4846F4:  MOV             R4, R1
4846F6:  MOV             R5, R0
4846F8:  LDR             R0, [R4,#0x14]
4846FA:  ADD.W           R1, R0, #0x30 ; '0'
4846FE:  CMP             R0, #0
484700:  IT EQ
484702:  ADDEQ           R1, R4, #4
484704:  VLDR            D16, [R1]
484708:  LDR             R0, [R1,#8]
48470A:  STR             R0, [R5,#8]
48470C:  VSTR            D16, [R5]
484710:  LDR             R0, [R4,#0x14]
484712:  CBZ             R0, loc_484726
484714:  LDRD.W          R2, R1, [R0,#0x10]; x
484718:  EOR.W           R0, R2, #0x80000000; y
48471C:  BLX             atan2f
484720:  VMOV            S0, R0
484724:  B               loc_48472A
484726:  VLDR            S0, [R4,#0x10]
48472A:  VSTR            S0, [R5,#0xC]
48472E:  LDR.W           R0, [R4,#0x544]
484732:  STR             R0, [R5,#0x10]
484734:  LDR.W           R0, [R4,#0x54C]
484738:  STR             R0, [R5,#0x14]
48473A:  LDRB.W          R0, [R4,#0x448]
48473E:  STRB.W          R0, [R5,#0x184]
484742:  LDRB.W          R0, [R4,#0x71C]
484746:  STRB.W          R0, [R5,#0x185]
48474A:  LDRB.W          R0, [R4,#0x33]
48474E:  STRB.W          R0, [R5,#0x186]
484752:  LDRB.W          R0, [R4,#0x735]
484756:  STRB.W          R0, [R5,#0x18C]
48475A:  LDRB.W          R0, [R4,#0x736]
48475E:  STRB.W          R0, [R5,#0x18D]
484762:  ADDW            R0, R4, #0x484
484766:  VLD1.32         {D16-D17}, [R0]
48476A:  MOV.W           R0, #0xFFFFFFFF
48476E:  STR.W           R0, [R5,#0x188]
484772:  ADD.W           R0, R5, #0x190
484776:  VST1.32         {D16-D17}, [R0]
48477A:  LDR.W           R0, [R4,#0x794]
48477E:  CBZ             R0, loc_4847AA
484780:  LDR             R1, [R0,#0x38]
484782:  CMP             R1, #0
484784:  IT EQ
484786:  MOVEQ           R1, R0
484788:  LDRB.W          R1, [R1,#0x32]
48478C:  CBZ             R1, loc_4847AA
48478E:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x484794)
484790:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
484792:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
484794:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
484796:  LDR             R1, [R1]
484798:  SUBS            R0, R0, R1
48479A:  MOV             R1, #0xEEEEEEEF
4847A2:  ASRS            R0, R0, #2
4847A4:  MULS            R0, R1
4847A6:  STR.W           R0, [R5,#0x188]
4847AA:  ADD.W           R0, R5, #0x18; void *
4847AE:  ADDW            R1, R4, #0x5A4; void *
4847B2:  MOV.W           R2, #0x16C; size_t
4847B6:  BLX             memcpy_0
4847BA:  POP             {R4,R5,R7,PC}
