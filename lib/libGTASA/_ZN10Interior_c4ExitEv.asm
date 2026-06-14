; =========================================================
; Game Engine Function: _ZN10Interior_c4ExitEv
; Address            : 0x44611C - 0x446176
; =========================================================

44611C:  PUSH            {R4,R6,R7,LR}; float
44611E:  ADD             R7, SP, #8
446120:  SUB             SP, SP, #8; float
446122:  MOV             R4, R0
446124:  VLDR            S0, =-50.0
446128:  VLDR            S2, [R4,#0x48]
44612C:  VLDR            S4, [R4,#0x4C]
446130:  VLDR            S8, =50.0
446134:  VADD.F32        S10, S2, S0
446138:  VADD.F32        S12, S4, S0
44613C:  VLDR            S6, [R4,#0x50]
446140:  VADD.F32        S2, S2, S8
446144:  VADD.F32        S4, S4, S8
446148:  VADD.F32        S0, S6, S0
44614C:  VMOV            R0, S10; this
446150:  VMOV            R2, S12; float
446154:  VMOV            R1, S2; float
446158:  VMOV            R3, S4; float
44615C:  VADD.F32        S2, S6, S8
446160:  VSTR            S0, [SP,#0x10+var_10]
446164:  VSTR            S2, [SP,#0x10+var_C]
446168:  BLX             j__ZN8CPickups19RemovePickUpsInAreaEffffff; CPickups::RemovePickUpsInArea(float,float,float,float,float,float)
44616C:  MOV             R0, R4; this
44616E:  ADD             SP, SP, #8
446170:  POP.W           {R4,R6,R7,LR}
446174:  B               _ZN10Interior_c9UnfurnishEv; Interior_c::Unfurnish(void)
