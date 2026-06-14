; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerGreetC2EPcP4CPedhfi7CVector
; Address            : 0x534D3C - 0x534DD6
; =========================================================

534D3C:  PUSH            {R4-R7,LR}
534D3E:  ADD             R7, SP, #0xC
534D40:  PUSH.W          {R8}
534D44:  MOV             R6, R3
534D46:  MOV             R5, R2
534D48:  MOV             R4, R0
534D4A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
534D4E:  LDR             R1, =(_ZTV19CTaskComplexPartner_ptr - 0x534D5A)
534D50:  CMP             R5, #0
534D52:  LDRD.W          R3, R2, [R7,#arg_C]
534D56:  ADD             R1, PC; _ZTV19CTaskComplexPartner_ptr
534D58:  VLDR            S0, [R7,#arg_0]
534D5C:  STRB.W          R6, [R4,#0x58]
534D60:  MOV.W           R6, #1
534D64:  LDR             R1, [R1]; `vtable for'CTaskComplexPartner ...
534D66:  LDR             R0, [R7,#arg_8]
534D68:  VSTR            S0, [R4,#0x3C]
534D6C:  ADD.W           R1, R1, #8
534D70:  STRB.W          R6, [R4,#0x5D]
534D74:  STRB.W          R6, [R4,#0x5B]
534D78:  MOV             R6, R4
534D7A:  STRD.W          R0, R3, [R4,#0x40]
534D7E:  MOV.W           R0, #0
534D82:  STR             R2, [R4,#0x48]
534D84:  MOVW            R2, #0xFF01
534D88:  STRB.W          R0, [R4,#0x5C]
534D8C:  STRH.W          R2, [R4,#0x59]
534D90:  STRB.W          R0, [R4,#0x6E]
534D94:  STR             R1, [R4]
534D96:  MOV             R1, R4
534D98:  STRB.W          R0, [R6,#0x5E]!
534D9C:  STR.W           R5, [R1,#0x38]!; CEntity **
534DA0:  LDR.W           R8, [R7,#arg_4]
534DA4:  ITT NE
534DA6:  MOVNE           R0, R5; this
534DA8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
534DAC:  LDR             R0, =(_ZTV24CTaskComplexPartnerGreet_ptr - 0x534DB8)
534DAE:  MOVW            R1, #0x4B3
534DB2:  STR             R1, [R4,#0x34]
534DB4:  ADD             R0, PC; _ZTV24CTaskComplexPartnerGreet_ptr
534DB6:  STR.W           R8, [R4,#0x74]
534DBA:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerGreet ...
534DBC:  ADDS            R0, #8
534DBE:  STR             R0, [R4]
534DC0:  MOVS            R0, #0x73 ; 's'
534DC2:  STRH            R0, [R6,#4]
534DC4:  MOV             R0, #0x676E6167
534DCC:  STR             R0, [R6]
534DCE:  MOV             R0, R4
534DD0:  POP.W           {R8}
534DD4:  POP             {R4-R7,PC}
