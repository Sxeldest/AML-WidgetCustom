; =========================================================
; Game Engine Function: _ZNK48CTaskComplexGoToPointUntilCollisionAndStandStill5CloneEv
; Address            : 0x526BE8 - 0x526C9A
; =========================================================

526BE8:  PUSH            {R4-R7,LR}
526BEA:  ADD             R7, SP, #0xC
526BEC:  PUSH.W          {R11}
526BF0:  VPUSH           {D8}
526BF4:  MOV             R4, R0
526BF6:  MOVS            R0, #word_28; this
526BF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526BFC:  VLDR            S16, [R4,#0x20]
526C00:  LDR             R5, [R4,#0x1C]
526C02:  LDR             R6, [R4,#0xC]
526C04:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526C08:  LDR             R1, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x526C10)
526C0A:  STR             R6, [R0,#0xC]
526C0C:  ADD             R1, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
526C0E:  LDRB.W          R2, [R0,#0x24]
526C12:  VLDR            S0, [R0,#0x10]
526C16:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStill ...
526C18:  ADDS            R1, #8
526C1A:  STR             R1, [R0]
526C1C:  BIC.W           R1, R2, #0x1B
526C20:  STRB.W          R1, [R0,#0x24]
526C24:  VLDR            S2, [R4,#0x10]
526C28:  VCMP.F32        S0, S2
526C2C:  VMRS            APSR_nzcv, FPSCR
526C30:  BNE             loc_526C64
526C32:  VLDR            S0, [R4,#0x14]
526C36:  VLDR            S2, [R0,#0x14]
526C3A:  VCMP.F32        S2, S0
526C3E:  VMRS            APSR_nzcv, FPSCR
526C42:  BNE             loc_526C64
526C44:  VLDR            S0, [R4,#0x18]
526C48:  VLDR            S2, [R0,#0x18]
526C4C:  VCMP.F32        S2, S0
526C50:  VMRS            APSR_nzcv, FPSCR
526C54:  BNE             loc_526C64
526C56:  VLDR            S0, [R0,#0x20]
526C5A:  VCMP.F32        S0, S16
526C5E:  VMRS            APSR_nzcv, FPSCR
526C62:  BEQ             loc_526C86
526C64:  ADD.W           R2, R4, #0x10
526C68:  ADD.W           R3, R0, #0x10
526C6C:  ORR.W           R1, R1, #4
526C70:  VLDR            D16, [R2]
526C74:  LDR             R2, [R2,#8]
526C76:  STR             R2, [R3,#8]
526C78:  VSTR            D16, [R3]
526C7C:  VSTR            S16, [R0,#0x20]
526C80:  STR             R5, [R0,#0x1C]
526C82:  STRB.W          R1, [R0,#0x24]
526C86:  LDR             R1, =(_ZTV48CTaskComplexGoToPointUntilCollisionAndStandStill_ptr - 0x526C8C)
526C88:  ADD             R1, PC; _ZTV48CTaskComplexGoToPointUntilCollisionAndStandStill_ptr
526C8A:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointUntilCollisionAndStandStill ...
526C8C:  ADDS            R1, #8
526C8E:  STR             R1, [R0]
526C90:  VPOP            {D8}
526C94:  POP.W           {R11}
526C98:  POP             {R4-R7,PC}
