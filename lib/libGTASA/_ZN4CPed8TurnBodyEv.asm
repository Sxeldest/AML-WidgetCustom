; =========================================================
; Game Engine Function: _ZN4CPed8TurnBodyEv
; Address            : 0x4A70E4 - 0x4A71AA
; =========================================================

4A70E4:  PUSH            {R4,R5,R7,LR}; float
4A70E6:  ADD             R7, SP, #8
4A70E8:  MOV             R4, R0
4A70EA:  LDR.W           R0, [R4,#0x740]
4A70EE:  CBZ             R0, loc_4A7122
4A70F0:  LDR             R1, [R4,#0x14]
4A70F2:  LDR             R5, [R0,#0x14]
4A70F4:  ADD.W           R3, R1, #0x30 ; '0'
4A70F8:  CMP             R1, #0
4A70FA:  IT EQ
4A70FC:  ADDEQ           R3, R4, #4
4A70FE:  ADD.W           R1, R5, #0x30 ; '0'
4A7102:  CMP             R5, #0
4A7104:  LDRD.W          R2, R3, [R3]; float
4A7108:  IT EQ
4A710A:  ADDEQ           R1, R0, #4
4A710C:  LDRD.W          R0, R1, [R1]; float
4A7110:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4A7114:  VMOV            S0, R0
4A7118:  ADDW            R5, R4, #0x744
4A711C:  STR.W           R0, [R4,#0x744]
4A7120:  B               loc_4A712A
4A7122:  ADDW            R5, R4, #0x744
4A7126:  VLDR            S0, [R5]
4A712A:  VMOV            R0, S0; this
4A712E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4A7132:  ADDW            R1, R4, #0x55C
4A7136:  VLDR            S2, =3.1416
4A713A:  VLDR            S0, [R1]
4A713E:  VADD.F32        S4, S0, S2
4A7142:  VMOV            S2, R0
4A7146:  VCMPE.F32       S4, S2
4A714A:  VMRS            APSR_nzcv, FPSCR
4A714E:  BGE             loc_4A7156
4A7150:  VLDR            S4, =-6.2832
4A7154:  B               loc_4A716C
4A7156:  VLDR            S4, =-3.1416
4A715A:  VADD.F32        S4, S0, S4
4A715E:  VCMPE.F32       S4, S2
4A7162:  VMRS            APSR_nzcv, FPSCR
4A7166:  BLE             loc_4A7170
4A7168:  VLDR            S4, =6.2832
4A716C:  VADD.F32        S2, S2, S4
4A7170:  VSUB.F32        S4, S0, S2
4A7174:  VLDR            S8, =0.05
4A7178:  ADD.W           R0, R4, #0x560
4A717C:  VSTR            S2, [R0]
4A7180:  VABS.F32        S6, S4
4A7184:  VCMPE.F32       S6, S8
4A7188:  VMRS            APSR_nzcv, FPSCR
4A718C:  BLE             loc_4A719E
4A718E:  VMOV.F32        S6, #-5.0
4A7192:  MOVS            R0, #0
4A7194:  VDIV.F32        S4, S4, S6
4A7198:  VADD.F32        S0, S0, S4
4A719C:  B               loc_4A71A0
4A719E:  MOVS            R0, #1
4A71A0:  VSTR            S0, [R1]
4A71A4:  VSTR            S2, [R5]
4A71A8:  POP             {R4,R5,R7,PC}
