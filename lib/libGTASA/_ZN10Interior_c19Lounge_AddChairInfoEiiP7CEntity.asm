; =========================================================
; Game Engine Function: _ZN10Interior_c19Lounge_AddChairInfoEiiP7CEntity
; Address            : 0x44BE18 - 0x44BED0
; =========================================================

44BE18:  PUSH            {R7,LR}
44BE1A:  MOV             R7, SP
44BE1C:  SUB             SP, SP, #8
44BE1E:  CMP             R1, #3; switch 4 cases
44BE20:  BHI             def_44BE2A; jumptable 0044BE2A default case
44BE22:  ADD.W           R12, R1, #2
44BE26:  AND.W           LR, R12, #3
44BE2A:  TBB.W           [PC,R1]; switch jump
44BE2E:  DCB 2; jump table for switch statement
44BE2F:  DCB 0x16
44BE30:  DCB 0x26
44BE31:  DCB 0x36
44BE32:  VMOV            S2, R2; jumptable 0044BE2A case 0
44BE36:  VMOV.F32        S0, #0.5
44BE3A:  VCVT.F32.S32    S2, S2
44BE3E:  LDR             R1, [R0,#0x14]
44BE40:  LDRB            R1, [R1,#3]
44BE42:  SUBS            R1, #2
44BE44:  VMOV            S4, R1
44BE48:  VADD.F32        S0, S2, S0
44BE4C:  VCVT.F32.S32    S4, S4
44BE50:  VMOV            R2, S0
44BE54:  VMOV            R12, S4
44BE58:  B               loc_44BEC0
44BE5A:  VMOV            S2, R2; jumptable 0044BE2A case 1
44BE5E:  MOVS            R1, #1
44BE60:  VMOV.F32        S0, #0.5
44BE64:  MOV.W           R2, #0x3F800000
44BE68:  VCVT.F32.S32    S2, S2
44BE6C:  STRD.W          LR, R3, [SP,#0x10+var_10]
44BE70:  VADD.F32        S0, S2, S0
44BE74:  VMOV            R12, S0
44BE78:  B               loc_44BEC6
44BE7A:  VMOV            S2, R2; jumptable 0044BE2A case 2
44BE7E:  MOVS            R1, #1
44BE80:  VMOV.F32        S0, #0.5
44BE84:  VCVT.F32.S32    S2, S2
44BE88:  STRD.W          LR, R3, [SP,#0x10+var_10]
44BE8C:  MOV.W           R3, #0x3F800000
44BE90:  VADD.F32        S0, S2, S0
44BE94:  VMOV            R2, S0
44BE98:  B               loc_44BEC8
44BE9A:  VMOV            S2, R2; jumptable 0044BE2A case 3
44BE9E:  VMOV.F32        S0, #0.5
44BEA2:  VCVT.F32.S32    S2, S2
44BEA6:  LDR             R1, [R0,#0x14]
44BEA8:  LDRB            R1, [R1,#2]
44BEAA:  SUBS            R1, #2
44BEAC:  VMOV            S4, R1
44BEB0:  VADD.F32        S0, S2, S0
44BEB4:  VCVT.F32.S32    S4, S4
44BEB8:  VMOV            R12, S0
44BEBC:  VMOV            R2, S4; float
44BEC0:  MOVS            R1, #1; int
44BEC2:  STRD.W          LR, R3, [SP,#0x10+var_10]; int
44BEC6:  MOV             R3, R12; float
44BEC8:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BECC:  ADD             SP, SP, #8; jumptable 0044BE2A default case
44BECE:  POP             {R7,PC}
