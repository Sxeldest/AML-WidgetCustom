; =========================================================
; Game Engine Function: _ZN18CWidgetRegionSteer9IsTouchedEP9CVector2D
; Address            : 0x2C3120 - 0x2C329C
; =========================================================

2C3120:  PUSH            {R4,R5,R7,LR}
2C3122:  ADD             R7, SP, #8
2C3124:  VPUSH           {D8-D10}
2C3128:  SUB             SP, SP, #8
2C312A:  MOV             R5, R0
2C312C:  MOVS            R0, #0x18
2C312E:  MOV             R4, R1
2C3130:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C3134:  CBNZ            R0, loc_2C3140
2C3136:  MOVS            R0, #0x19
2C3138:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C313C:  CMP             R0, #1
2C313E:  BNE             loc_2C3192
2C3140:  MOVS            R0, #0x18
2C3142:  MOV             R1, R4
2C3144:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C3148:  CMP             R4, #0
2C314A:  MOV             R1, R4
2C314C:  IT NE
2C314E:  ADDNE           R1, #4
2C3150:  MOVS            R0, #0x19
2C3152:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C3156:  MOVS            R0, #0x18
2C3158:  MOVS            R1, #0
2C315A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C315E:  CBNZ            R0, loc_2C316C
2C3160:  MOVS            R0, #0x19
2C3162:  MOVS            R1, #0
2C3164:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C3168:  CMP             R0, #1
2C316A:  BNE             loc_2C3192
2C316C:  CMP             R4, #0
2C316E:  BEQ.W           loc_2C3292
2C3172:  VLDR            S0, =128.0
2C3176:  MOVS            R0, #1
2C3178:  VLDR            S2, [R4]
2C317C:  VLDR            S4, [R4,#4]
2C3180:  VMUL.F32        S2, S2, S0
2C3184:  VMUL.F32        S0, S4, S0
2C3188:  VSTR            S2, [R4]
2C318C:  VSTR            S0, [R4,#4]
2C3190:  B               loc_2C3294
2C3192:  LDR             R1, [R5,#0x78]; int
2C3194:  MOV             R0, SP; this
2C3196:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2C319A:  LDR             R0, =(RsGlobal_ptr - 0x2C31A8)
2C319C:  VLDR            S0, [R5,#0xA0]
2C31A0:  VLDR            S4, [SP,#0x28+var_28]
2C31A4:  ADD             R0, PC; RsGlobal_ptr
2C31A6:  VLDR            S2, [R5,#0xA4]
2C31AA:  VLDR            S6, [SP,#0x28+var_24]
2C31AE:  VSUB.F32        S20, S4, S0
2C31B2:  LDR             R0, [R0]; RsGlobal
2C31B4:  VSUB.F32        S18, S6, S2
2C31B8:  VLDR            S16, =640.0
2C31BC:  VLDR            S0, [R0,#4]
2C31C0:  VCVT.F32.S32    S0, S0
2C31C4:  VLDR            S6, [R5,#0x90]
2C31C8:  VMUL.F32        S4, S20, S20
2C31CC:  VMUL.F32        S2, S18, S18
2C31D0:  VADD.F32        S2, S4, S2
2C31D4:  VDIV.F32        S4, S0, S16
2C31D8:  VSQRT.F32       S0, S2
2C31DC:  VLDR            S2, [R5,#0x14]
2C31E0:  VMUL.F32        S2, S2, S4
2C31E4:  VMUL.F32        S2, S6, S2
2C31E8:  VCMPE.F32       S0, S2
2C31EC:  VMRS            APSR_nzcv, FPSCR
2C31F0:  BLE             loc_2C3206
2C31F2:  VDIV.F32        S0, S0, S2
2C31F6:  VMOV.F32        S2, #1.0
2C31FA:  VDIV.F32        S0, S2, S0
2C31FE:  VMUL.F32        S18, S18, S0
2C3202:  VMUL.F32        S20, S20, S0
2C3206:  LDR             R0, [R5,#0x78]; this
2C3208:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2C320C:  CMP             R0, #1
2C320E:  BNE             loc_2C3228
2C3210:  VLDR            S0, [R5,#0xA0]
2C3214:  VLDR            S2, [R5,#0xA4]
2C3218:  VADD.F32        S0, S20, S0
2C321C:  VADD.F32        S2, S18, S2
2C3220:  VSTR            S0, [R5,#0x98]
2C3224:  VSTR            S2, [R5,#0x9C]
2C3228:  CBZ             R4, loc_2C3288
2C322A:  LDR             R0, =(RsGlobal_ptr - 0x2C3230)
2C322C:  ADD             R0, PC; RsGlobal_ptr
2C322E:  LDR             R0, [R0]; RsGlobal
2C3230:  VLDR            S0, [R0,#4]
2C3234:  VCVT.F32.S32    S0, S0
2C3238:  VLDR            S2, [R5,#0x14]
2C323C:  VLDR            S4, [R5,#0x90]
2C3240:  VLDR            S6, [R5,#0x98]
2C3244:  VLDR            S8, [R5,#0x9C]
2C3248:  VLDR            S10, [R5,#0xA0]
2C324C:  VLDR            S12, [R5,#0xA4]
2C3250:  VDIV.F32        S0, S0, S16
2C3254:  VMUL.F32        S0, S2, S0
2C3258:  VMOV.F32        S2, #1.0
2C325C:  VMUL.F32        S0, S4, S0
2C3260:  VSUB.F32        S4, S6, S10
2C3264:  VDIV.F32        S0, S2, S0
2C3268:  VSUB.F32        S2, S8, S12
2C326C:  VMUL.F32        S2, S2, S0
2C3270:  VMUL.F32        S0, S4, S0
2C3274:  VLDR            S4, =128.0
2C3278:  VMUL.F32        S2, S2, S4
2C327C:  VMUL.F32        S0, S0, S4
2C3280:  VSTR            S0, [R4]
2C3284:  VSTR            S2, [R4,#4]
2C3288:  MOV             R0, R5
2C328A:  MOV             R1, R4
2C328C:  BLX             j__ZN7CWidget9IsTouchedEP9CVector2D; CWidget::IsTouched(CVector2D *)
2C3290:  B               loc_2C3294
2C3292:  MOVS            R0, #1
2C3294:  ADD             SP, SP, #8
2C3296:  VPOP            {D8-D10}
2C329A:  POP             {R4,R5,R7,PC}
