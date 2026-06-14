; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointShootingC2EiRK7CVectorP7CEntityS0_ff
; Address            : 0x51DFFC - 0x51E0C8
; =========================================================

51DFFC:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToPointShooting::CTaskComplexGoToPointShooting(int, CVector const&, CEntity *, CVector, float, float)'
51DFFE:  ADD             R7, SP, #0xC
51E000:  PUSH.W          {R8}
51E004:  MOV             R6, R3
51E006:  MOV             R8, R2
51E008:  MOV             R5, R1
51E00A:  MOV             R4, R0
51E00C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51E010:  LDR             R0, =(_ZTV27CTaskComplexGoToPointAiming_ptr - 0x51E01C)
51E012:  CMP             R6, #0
51E014:  LDRD.W          R1, R3, [R7,#arg_0]
51E018:  ADD             R0, PC; _ZTV27CTaskComplexGoToPointAiming_ptr
51E01A:  STR             R5, [R4,#0xC]
51E01C:  STRD.W          R1, R3, [R4,#0x14]
51E020:  MOV             R1, R4
51E022:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAiming ...
51E024:  LDR             R2, [R7,#arg_8]
51E026:  STR             R2, [R4,#0x1C]
51E028:  ADD.W           R0, R0, #8
51E02C:  STR             R0, [R4]
51E02E:  STR.W           R6, [R1,#0x10]!; CEntity **
51E032:  ITT NE
51E034:  MOVNE           R0, R6; this
51E036:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51E03A:  VLDR            S4, [R8]
51E03E:  VLDR            S6, [R4,#0x20]
51E042:  VLDR            S0, [R7,#arg_10]
51E046:  VCMP.F32        S6, S4
51E04A:  VLDR            S2, [R7,#arg_C]
51E04E:  VMRS            APSR_nzcv, FPSCR
51E052:  BNE             loc_51E094
51E054:  VLDR            S4, [R8,#4]
51E058:  VLDR            S6, [R4,#0x24]
51E05C:  VCMP.F32        S6, S4
51E060:  VMRS            APSR_nzcv, FPSCR
51E064:  BNE             loc_51E094
51E066:  VLDR            S4, [R8,#8]
51E06A:  VLDR            S6, [R4,#0x28]
51E06E:  VCMP.F32        S6, S4
51E072:  VMRS            APSR_nzcv, FPSCR
51E076:  BNE             loc_51E094
51E078:  VLDR            S4, [R4,#0x2C]
51E07C:  VCMP.F32        S4, S2
51E080:  VMRS            APSR_nzcv, FPSCR
51E084:  BNE             loc_51E094
51E086:  VLDR            S4, [R4,#0x30]
51E08A:  VCMP.F32        S4, S0
51E08E:  VMRS            APSR_nzcv, FPSCR
51E092:  BEQ             loc_51E0B6
51E094:  VLDR            D16, [R8]
51E098:  LDRB.W          R1, [R4,#0x34]
51E09C:  LDR.W           R0, [R8,#8]
51E0A0:  STR             R0, [R4,#0x28]
51E0A2:  ORR.W           R0, R1, #1
51E0A6:  VSTR            S2, [R4,#0x2C]
51E0AA:  VSTR            S0, [R4,#0x30]
51E0AE:  STRB.W          R0, [R4,#0x34]
51E0B2:  VSTR            D16, [R4,#0x20]
51E0B6:  LDR             R0, =(_ZTV29CTaskComplexGoToPointShooting_ptr - 0x51E0BC)
51E0B8:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointShooting_ptr
51E0BA:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointShooting ...
51E0BC:  ADDS            R0, #8
51E0BE:  STR             R0, [R4]
51E0C0:  MOV             R0, R4
51E0C2:  POP.W           {R8}
51E0C6:  POP             {R4-R7,PC}
