; =========================================================
; Game Engine Function: _ZN4CCam13Process_FixedERK7CVectorfff
; Address            : 0x3C8FCC - 0x3C9278
; =========================================================

3C8FCC:  PUSH            {R4-R7,LR}
3C8FCE:  ADD             R7, SP, #0xC
3C8FD0:  PUSH.W          {R8,R9,R11}
3C8FD4:  SUB             SP, SP, #0x48
3C8FD6:  MOV             R5, R0
3C8FD8:  MOV             R8, R1
3C8FDA:  LDR             R0, [R5,#0x20]
3C8FDC:  ADD.W           R6, R5, #0x168
3C8FE0:  CMP             R0, #3
3C8FE2:  ITT NE
3C8FE4:  MOVNE           R0, #3
3C8FE6:  STRNE           R0, [R5,#0x20]
3C8FE8:  VLDR            D16, [R5,#0x138]
3C8FEC:  LDR.W           R0, [R5,#0x140]
3C8FF0:  STR.W           R0, [R5,#0x17C]
3C8FF4:  MOV             R0, R6; this
3C8FF6:  VSTR            D16, [R5,#0x174]
3C8FFA:  VLDR            S0, [R8]
3C8FFE:  VLDR            S6, [R5,#0x174]
3C9002:  VLDR            S2, [R8,#4]
3C9006:  VLDR            S8, [R5,#0x178]
3C900A:  VSUB.F32        S0, S0, S6
3C900E:  VLDR            S4, [R8,#8]
3C9012:  VLDR            S10, [R5,#0x17C]
3C9016:  VSUB.F32        S2, S2, S8
3C901A:  VSUB.F32        S4, S4, S10
3C901E:  VSTR            S0, [R5,#0x168]
3C9022:  VSTR            S2, [R5,#0x16C]
3C9026:  VSTR            S4, [R5,#0x170]
3C902A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C902E:  VLDR            D16, [R8]
3C9032:  MOV.W           R1, #0x3F800000
3C9036:  LDR.W           R0, [R8,#8]
3C903A:  STR.W           R0, [R5,#0x128]
3C903E:  MOVS            R0, #0
3C9040:  VSTR            D16, [R5,#0x120]
3C9044:  STRD.W          R0, R0, [R5,#0x18C]
3C9048:  MOV             R0, R6; this
3C904A:  STR.W           R1, [R5,#0x194]
3C904E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C9052:  VLDR            S0, [R5,#0x168]
3C9056:  ADD.W           R4, R5, #0x18C
3C905A:  VCMP.F32        S0, #0.0
3C905E:  VMRS            APSR_nzcv, FPSCR
3C9062:  BNE             loc_3C907E
3C9064:  VLDR            S0, [R5,#0x16C]
3C9068:  VCMP.F32        S0, #0.0
3C906C:  VMRS            APSR_nzcv, FPSCR
3C9070:  ITTT EQ
3C9072:  MOVWEQ          R0, #0xB717
3C9076:  MOVTEQ          R0, #0x38D1
3C907A:  STRDEQ.W        R0, R0, [R5,#0x168]
3C907E:  ADD             R0, SP, #0x60+var_38; CVector *
3C9080:  MOV             R1, R6; CVector *
3C9082:  MOV             R2, R4
3C9084:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C9088:  ADD.W           R9, SP, #0x60+var_28
3C908C:  LDR             R0, [SP,#0x60+var_30]
3C908E:  VLDR            D16, [SP,#0x60+var_38]
3C9092:  STR             R0, [SP,#0x60+var_20]
3C9094:  MOV             R0, R9; this
3C9096:  VSTR            D16, [SP,#0x60+var_28]
3C909A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C909E:  ADD             R0, SP, #0x60+var_38; CVector *
3C90A0:  MOV             R1, R9; CVector *
3C90A2:  MOV             R2, R6
3C90A4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C90A8:  VMOV.F32        S0, #1.0
3C90AC:  VLDR            S8, [R5,#0x14C]
3C90B0:  VLDR            S2, =0.0
3C90B4:  MOV             R0, R4; this
3C90B6:  VLDR            S4, [R5,#0x144]
3C90BA:  VLDR            S6, [R5,#0x148]
3C90BE:  VADD.F32        S4, S4, S2
3C90C2:  VADD.F32        S2, S6, S2
3C90C6:  VADD.F32        S0, S8, S0
3C90CA:  VSTR            S4, [R5,#0x18C]
3C90CE:  VSTR            S2, [R5,#0x190]
3C90D2:  VSTR            S0, [R5,#0x194]
3C90D6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C90DA:  ADD.W           R9, SP, #0x60+var_28
3C90DE:  MOV             R1, R6; CVector *
3C90E0:  MOV             R2, R4
3C90E2:  MOV             R0, R9; CVector *
3C90E4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C90E8:  MOV             R0, R9; this
3C90EA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3C90EE:  ADD             R0, SP, #0x60+var_38; CVector *
3C90F0:  MOV             R1, R9; CVector *
3C90F2:  MOV             R2, R6
3C90F4:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3C90F8:  LDR             R0, =(TheCamera_ptr - 0x3C9100)
3C90FA:  LDR             R1, [SP,#0x60+var_30]
3C90FC:  ADD             R0, PC; TheCamera_ptr
3C90FE:  VLDR            D16, [SP,#0x60+var_38]
3C9102:  STR             R1, [R4,#8]
3C9104:  MOVS            R1, #0
3C9106:  LDR             R0, [R0]; TheCamera
3C9108:  MOVT            R1, #0x428C
3C910C:  VSTR            D16, [R4]
3C9110:  STR.W           R1, [R5,#0x8C]
3C9114:  LDRB.W          R0, [R0,#(byte_951FDC - 0x951FA8)]
3C9118:  CBZ             R0, loc_3C9128
3C911A:  LDR             R0, =(TheCamera_ptr - 0x3C9120)
3C911C:  ADD             R0, PC; TheCamera_ptr
3C911E:  LDR             R0, [R0]; TheCamera
3C9120:  LDR.W           R0, [R0,#(dword_9520D4 - 0x951FA8)]
3C9124:  STR.W           R0, [R5,#0x8C]
3C9128:  MOVS            R3, #0
3C912A:  ADD.W           R2, R5, #0x174
3C912E:  STR             R3, [SP,#0x60+var_3C]
3C9130:  MOVS            R6, #(stderr+1)
3C9132:  LDM             R2, {R0-R2}; float
3C9134:  STRD.W          R6, R3, [SP,#0x60+var_60]; float *
3C9138:  ADD             R3, SP, #0x60+var_3C; float
3C913A:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
3C913E:  CMP             R0, #1
3C9140:  BNE             loc_3C9204
3C9142:  VLDR            S0, [SP,#0x60+var_3C]
3C9146:  VLDR            S2, [R5,#0x17C]
3C914A:  VCMPE.F32       S2, S0
3C914E:  VMRS            APSR_nzcv, FPSCR
3C9152:  BGE             loc_3C9204
3C9154:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x3C915A)
3C9156:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
3C9158:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
3C915A:  VLDR            S4, [R0,#0x68]
3C915E:  VLDR            S2, [R0,#0x6C]
3C9162:  VMUL.F32        S8, S4, S4
3C9166:  VLDR            S0, [R0,#0x70]
3C916A:  VMUL.F32        S6, S2, S2
3C916E:  LDR             R0, =(BOAT_UNDERWATER_CAM_COLORMAG_LIMIT_ptr - 0x3C9178)
3C9170:  VMUL.F32        S10, S0, S0
3C9174:  ADD             R0, PC; BOAT_UNDERWATER_CAM_COLORMAG_LIMIT_ptr
3C9176:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_COLORMAG_LIMIT
3C9178:  VADD.F32        S6, S8, S6
3C917C:  VLDR            S8, [R0]
3C9180:  VADD.F32        S6, S6, S10
3C9184:  VSQRT.F32       S6, S6
3C9188:  VCMPE.F32       S6, S8
3C918C:  VMRS            APSR_nzcv, FPSCR
3C9190:  BLE             loc_3C91D4
3C9192:  VDIV.F32        S6, S8, S6
3C9196:  LDR             R0, =(BOAT_UNDERWATER_CAM_BLUR_ptr - 0x3C91A0)
3C9198:  LDR             R1, =(TheCamera_ptr - 0x3C91A2)
3C919A:  MOVS            R2, #2
3C919C:  ADD             R0, PC; BOAT_UNDERWATER_CAM_BLUR_ptr
3C919E:  ADD             R1, PC; TheCamera_ptr
3C91A0:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_BLUR
3C91A2:  LDR             R1, [R1]; TheCamera
3C91A4:  VMUL.F32        S4, S4, S6
3C91A8:  VMUL.F32        S2, S2, S6
3C91AC:  VMUL.F32        S0, S0, S6
3C91B0:  VCVT.S32.F32    S4, S4
3C91B4:  VCVT.S32.F32    S2, S2
3C91B8:  VCVT.S32.F32    S0, S0
3C91BC:  LDR             R0, [R0]
3C91BE:  STR.W           R2, [R1,#(dword_952034 - 0x951FA8)]
3C91C2:  STR.W           R0, [R1,#(dword_952044 - 0x951FA8)]
3C91C6:  VSTR            S0, [R1,#0x80]
3C91CA:  VSTR            S2, [R1,#0x84]
3C91CE:  VSTR            S4, [R1,#0x88]
3C91D2:  B               loc_3C9204
3C91D4:  LDR             R0, =(BOAT_UNDERWATER_CAM_BLUR_ptr - 0x3C91E8)
3C91D6:  VCVT.S32.F32    S4, S4
3C91DA:  LDR             R1, =(TheCamera_ptr - 0x3C91EA)
3C91DC:  VCVT.S32.F32    S2, S2
3C91E0:  VCVT.S32.F32    S0, S0
3C91E4:  ADD             R0, PC; BOAT_UNDERWATER_CAM_BLUR_ptr
3C91E6:  ADD             R1, PC; TheCamera_ptr
3C91E8:  MOVS            R2, #2
3C91EA:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_BLUR
3C91EC:  LDR             R1, [R1]; TheCamera
3C91EE:  LDR             R0, [R0]
3C91F0:  STR.W           R2, [R1,#(dword_952034 - 0x951FA8)]
3C91F4:  VSTR            S0, [R1,#0x80]
3C91F8:  VSTR            S2, [R1,#0x84]
3C91FC:  VSTR            S4, [R1,#0x88]
3C9200:  STR.W           R0, [R1,#(dword_952044 - 0x951FA8)]
3C9204:  LDR             R0, =(gAllowScriptedFixedCameraCollision_ptr - 0x3C920A)
3C9206:  ADD             R0, PC; gAllowScriptedFixedCameraCollision_ptr
3C9208:  LDR             R0, [R0]; gAllowScriptedFixedCameraCollision
3C920A:  LDRB            R0, [R0]
3C920C:  CBZ             R0, loc_3C9270
3C920E:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C921C)
3C9210:  MOV.W           R1, #0x3F800000
3C9214:  STR             R1, [SP,#0x60+var_40]
3C9216:  MOVS            R1, #0; bool
3C9218:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C921A:  VLDR            D16, [R8]
3C921E:  ADD.W           R4, R5, #0x174
3C9222:  LDR             R6, [R0]; CWorld::pIgnoreEntity ...
3C9224:  LDR.W           R0, [R8,#8]
3C9228:  STR             R0, [SP,#0x60+var_48]
3C922A:  MOV.W           R0, #0xFFFFFFFF; int
3C922E:  LDR             R5, [R6]; CWorld::pIgnoreEntity
3C9230:  VSTR            D16, [SP,#0x60+var_50]
3C9234:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3C9238:  MOVW            R1, #0xCCCD
3C923C:  MOV.W           R2, #0x40000000
3C9240:  MOVT            R1, #0x3DCC
3C9244:  STR             R0, [R6]; CWorld::pIgnoreEntity
3C9246:  STRD.W          R2, R1, [SP,#0x60+var_60]; float
3C924A:  ADD             R0, SP, #0x60+var_40; this
3C924C:  ADD             R2, SP, #0x60+var_50; CVector *
3C924E:  ADD             R3, SP, #0x60+var_38; CVector *
3C9250:  MOV             R1, R4; CVector *
3C9252:  STR             R0, [SP,#0x60+var_58]; float *
3C9254:  BLX             j__ZN7CCamera24ConeCastCollisionResolveEP7CVectorS1_S1_ffPf; CCamera::ConeCastCollisionResolve(CVector *,CVector *,CVector *,float,float,float *)
3C9258:  CMP             R0, #1
3C925A:  ITTTT EQ
3C925C:  VLDREQ          D16, [SP,#0x60+var_38]
3C9260:  LDREQ           R0, [SP,#0x60+var_30]
3C9262:  STREQ           R0, [R4,#8]
3C9264:  VSTREQ          D16, [R4]
3C9268:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3C926E)
3C926A:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3C926C:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3C926E:  STR             R5, [R0]; CWorld::pIgnoreEntity
3C9270:  ADD             SP, SP, #0x48 ; 'H'
3C9272:  POP.W           {R8,R9,R11}
3C9276:  POP             {R4-R7,PC}
