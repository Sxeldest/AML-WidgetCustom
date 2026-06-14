; =========================================================
; Game Engine Function: _Z16FindFlightHeightP6CPlanef
; Address            : 0x2F906C - 0x2F9136
; =========================================================

2F906C:  PUSH            {R4,R5,R7,LR}
2F906E:  ADD             R7, SP, #8
2F9070:  VPUSH           {D8}
2F9074:  SUB             SP, SP, #8
2F9076:  MOV             R4, R1
2F9078:  MOVW            R1, #0x7750
2F907C:  ADD             R3, SP, #0x18+var_14; float *
2F907E:  MOVT            R1, #0x3DD6; float
2F9082:  MOV             R2, R4; x
2F9084:  MOV             R5, R0
2F9086:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F908A:  CBZ             R0, loc_2F9092
2F908C:  VLDR            S16, =100000.0
2F9090:  B               loc_2F912A
2F9092:  MOVW            R1, #0x7750
2F9096:  ADD             R3, SP, #0x18+var_14; float *
2F9098:  MOVT            R1, #0x3D56; float
2F909C:  MOV             R0, R5; CPlane *
2F909E:  MOV             R2, R4; x
2F90A0:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F90A4:  CBZ             R0, loc_2F90B4
2F90A6:  VLDR            S0, =0.0
2F90AA:  VLDR            S2, [SP,#0x18+var_14]
2F90AE:  VMAX.F32        D8, D1, D0
2F90B2:  B               loc_2F90B8
2F90B4:  VLDR            S16, =0.0
2F90B8:  ADD             R3, SP, #0x18+var_14; float *
2F90BA:  MOV             R0, R5; CPlane *
2F90BC:  MOVS            R1, #0; float
2F90BE:  MOV             R2, R4; x
2F90C0:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F90C4:  CMP             R0, #1
2F90C6:  MOVW            R1, #0xB8C3
2F90CA:  ADD             R3, SP, #0x18+var_14; float *
2F90CC:  ITT EQ
2F90CE:  VLDREQ          S0, [SP,#0x18+var_14]
2F90D2:  VMAXEQ.F32      D8, D8, D0
2F90D6:  MOVT            R1, #0xBEB2; float
2F90DA:  MOV             R0, R5; CPlane *
2F90DC:  MOV             R2, R4; x
2F90DE:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F90E2:  CMP             R0, #1
2F90E4:  MOVW            R1, #0xB8C3
2F90E8:  ADD             R3, SP, #0x18+var_14; float *
2F90EA:  ITT EQ
2F90EC:  VLDREQ          S0, [SP,#0x18+var_14]
2F90F0:  VMAXEQ.F32      D8, D8, D0
2F90F4:  MOVT            R1, #0xBF32; float
2F90F8:  MOV             R0, R5; CPlane *
2F90FA:  MOV             R2, R4; x
2F90FC:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F9100:  CMP             R0, #1
2F9102:  MOVW            R1, #0xA92
2F9106:  ADD             R3, SP, #0x18+var_14; float *
2F9108:  ITT EQ
2F910A:  VLDREQ          S0, [SP,#0x18+var_14]
2F910E:  VMAXEQ.F32      D8, D8, D0
2F9112:  MOVT            R1, #0xBF86; float
2F9116:  MOV             R0, R5; CPlane *
2F9118:  MOV             R2, R4; x
2F911A:  BLX             j__Z26FindHeightForVerticalAngleP6CPlaneffPf; FindHeightForVerticalAngle(CPlane *,float,float,float *)
2F911E:  CMP             R0, #1
2F9120:  ITT EQ
2F9122:  VLDREQ          S0, [SP,#0x18+var_14]
2F9126:  VMAXEQ.F32      D8, D8, D0
2F912A:  VMOV            R0, S16
2F912E:  ADD             SP, SP, #8
2F9130:  VPOP            {D8}
2F9134:  POP             {R4,R5,R7,PC}
