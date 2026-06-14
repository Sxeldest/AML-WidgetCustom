; =========================================================
; Game Engine Function: _ZN6CWorld27ExtinguishAllCarFiresInAreaE7CVectorf
; Address            : 0x42C0CC - 0x42C16A
; =========================================================

42C0CC:  PUSH            {R4-R7,LR}
42C0CE:  ADD             R7, SP, #0xC
42C0D0:  PUSH.W          {R8}
42C0D4:  VPUSH           {D8-D11}
42C0D8:  LDR             R6, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42C0DE)
42C0DA:  ADD             R6, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42C0DC:  LDR             R6, [R6]; CPools::ms_pVehiclePool ...
42C0DE:  LDR             R4, [R6]; CPools::ms_pVehiclePool
42C0E0:  LDR.W           R8, [R4,#8]
42C0E4:  CMP.W           R8, #1
42C0E8:  BLT             loc_42C160
42C0EA:  VMOV            S0, R3
42C0EE:  MOVS            R6, #0
42C0F0:  VMOV            S18, R0
42C0F4:  MOVS            R5, #0
42C0F6:  VMUL.F32        S16, S0, S0
42C0FA:  VMOV            S20, R1
42C0FE:  VMOV            S22, R2
42C102:  LDR             R0, [R4,#4]
42C104:  LDRSB           R0, [R0,R5]
42C106:  CMP             R0, #0
42C108:  BLT             loc_42C156
42C10A:  LDR             R0, [R4]
42C10C:  ADDS            R0, R0, R6; this
42C10E:  BEQ             loc_42C156
42C110:  LDR             R1, [R0,#0x14]
42C112:  ADD.W           R2, R1, #0x30 ; '0'
42C116:  CMP             R1, #0
42C118:  IT EQ
42C11A:  ADDEQ           R2, R0, #4
42C11C:  VLDR            S0, [R2]
42C120:  VLDR            S2, [R2,#4]
42C124:  VSUB.F32        S0, S18, S0
42C128:  VLDR            S4, [R2,#8]
42C12C:  VSUB.F32        S2, S20, S2
42C130:  VSUB.F32        S4, S22, S4
42C134:  VMUL.F32        S0, S0, S0
42C138:  VMUL.F32        S2, S2, S2
42C13C:  VMUL.F32        S4, S4, S4
42C140:  VADD.F32        S0, S0, S2
42C144:  VADD.F32        S0, S0, S4
42C148:  VCMPE.F32       S0, S16
42C14C:  VMRS            APSR_nzcv, FPSCR
42C150:  IT LT
42C152:  BLXLT           j__ZN8CVehicle17ExtinguishCarFireEv; CVehicle::ExtinguishCarFire(void)
42C156:  ADDS            R5, #1
42C158:  ADDW            R6, R6, #0xA2C
42C15C:  CMP             R8, R5
42C15E:  BNE             loc_42C102
42C160:  VPOP            {D8-D11}
42C164:  POP.W           {R8}
42C168:  POP             {R4-R7,PC}
