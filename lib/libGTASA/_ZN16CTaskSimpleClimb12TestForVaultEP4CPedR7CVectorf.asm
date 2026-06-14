; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb12TestForVaultEP4CPedR7CVectorf
; Address            : 0x52F0BC - 0x52F17A
; =========================================================

52F0BC:  PUSH            {R4-R7,LR}
52F0BE:  ADD             R7, SP, #0xC
52F0C0:  PUSH.W          {R8-R10}
52F0C4:  VPUSH           {D8-D10}
52F0C8:  SUB             SP, SP, #0x30
52F0CA:  MOV             R10, R0
52F0CC:  LDR             R0, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr - 0x52F0D8)
52F0CE:  LDR.W           R9, =(_ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr - 0x52F0DE)
52F0D2:  MOV             R6, R3
52F0D4:  ADD             R0, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetHorzE_ptr
52F0D6:  MOV             R4, R2
52F0D8:  MOV             R8, R1
52F0DA:  ADD             R9, PC; _ZN16CTaskSimpleClimb20ms_fAtEdgeOffsetVertE_ptr
52F0DC:  LDR             R5, [R0]; CTaskSimpleClimb::ms_fAtEdgeOffsetHorz ...
52F0DE:  MOV             R0, R6; x
52F0E0:  BLX             sinf
52F0E4:  VMOV            S18, R0
52F0E8:  MOV             R0, R6; x
52F0EA:  VLDR            D8, [R4]
52F0EE:  VLDR            S20, [R5]
52F0F2:  BLX             cosf
52F0F6:  VMOV            S0, R0
52F0FA:  LDR             R1, [R4,#8]
52F0FC:  VMUL.F32        S2, S18, S20
52F100:  LDR.W           R0, [R9]; CTaskSimpleClimb::ms_fAtEdgeOffsetVert ...
52F104:  VMUL.F32        S0, S0, S20
52F108:  STR             R1, [SP,#0x60+var_48]
52F10A:  VLDR            S4, [SP,#0x60+var_48]
52F10E:  VSTR            D8, [SP,#0x60+var_50]
52F112:  VLDR            S6, [R0]
52F116:  VLDR            S8, [SP,#0x60+var_50]
52F11A:  VLDR            S10, [SP,#0x60+var_50+4]
52F11E:  VADD.F32        S4, S6, S4
52F122:  VSUB.F32        S2, S8, S2
52F126:  VADD.F32        S0, S10, S0
52F12A:  VSTR            S4, [SP,#0x60+var_48]
52F12E:  VSTR            S2, [SP,#0x60+var_50]
52F132:  VSTR            S0, [SP,#0x60+var_50+4]
52F136:  LDR.W           R0, [R10,#0x24]
52F13A:  LDRB.W          R0, [R0,#0x3A]
52F13E:  AND.W           R0, R0, #7
52F142:  CMP             R0, #2
52F144:  BNE             loc_52F14A
52F146:  MOVS            R5, #0
52F148:  B               loc_52F16C
52F14A:  MOVS            R1, #0
52F14C:  ADD             R0, SP, #0x60+var_50
52F14E:  STRD.W          R1, R1, [SP,#0x60+var_60]; unsigned __int8 *
52F152:  MOVS            R5, #1
52F154:  ADD             R1, SP, #0x60+var_41+1; CPed *
52F156:  ADD             R2, SP, #0x60+var_34; CVector *
52F158:  SUB.W           R3, R7, #-var_41; float *
52F15C:  STRD.W          R5, R0, [SP,#0x60+var_58]; bool
52F160:  MOV             R0, R8; this
52F162:  BLX             j__ZN16CTaskSimpleClimb10ScanToGrabEP4CPedR7CVectorRfRhbbbPS2_; CTaskSimpleClimb::ScanToGrab(CPed *,CVector &,float &,uchar &,bool,bool,bool,CVector*)
52F166:  CMP             R0, #0
52F168:  IT NE
52F16A:  MOVNE           R5, #0
52F16C:  MOV             R0, R5
52F16E:  ADD             SP, SP, #0x30 ; '0'
52F170:  VPOP            {D8-D10}
52F174:  POP.W           {R8-R10}
52F178:  POP             {R4-R7,PC}
