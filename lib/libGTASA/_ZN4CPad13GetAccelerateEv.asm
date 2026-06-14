; =========================================================
; Game Engine Function: _ZN4CPad13GetAccelerateEv
; Address            : 0x3FB300 - 0x3FB3AA
; =========================================================

3FB300:  PUSH            {R4,R6,R7,LR}
3FB302:  ADD             R7, SP, #8
3FB304:  SUB             SP, SP, #8
3FB306:  MOV             R4, R0
3FB308:  LDRH.W          R0, [R4,#0x110]
3FB30C:  CMP             R0, #0
3FB30E:  ITT EQ
3FB310:  LDRBEQ.W        R0, [R4,#0x147]
3FB314:  CMPEQ           R0, #0
3FB316:  BEQ             loc_3FB31E
3FB318:  MOVS            R0, #0
3FB31A:  ADD             SP, SP, #8
3FB31C:  POP             {R4,R6,R7,PC}
3FB31E:  LDRB.W          R1, [R4,#0x118]
3FB322:  MOVS            R0, #0
3FB324:  CMP             R1, #0
3FB326:  BNE             loc_3FB31A
3FB328:  ADD             R1, SP, #0x10+var_C
3FB32A:  STR             R0, [SP,#0x10+var_C]
3FB32C:  MOVS            R0, #8
3FB32E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FB332:  CMP             R0, #1
3FB334:  BNE             loc_3FB34E
3FB336:  VLDR            S0, =255.0
3FB33A:  VLDR            S2, [SP,#0x10+var_C]
3FB33E:  VMUL.F32        S0, S2, S0
3FB342:  VCVT.S32.F32    S0, S0
3FB346:  VMOV            R0, S0
3FB34A:  ADD             SP, SP, #8
3FB34C:  POP             {R4,R6,R7,PC}
3FB34E:  MOVS            R0, #2
3FB350:  MOVS            R1, #0
3FB352:  MOVS            R2, #1
3FB354:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB358:  CBNZ            R0, loc_3FB368
3FB35A:  MOVS            R0, #0x9E
3FB35C:  MOVS            R1, #0
3FB35E:  MOVS            R2, #1
3FB360:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB364:  CMP             R0, #1
3FB366:  BNE             loc_3FB374
3FB368:  MOVS            R0, #(stderr+2); this
3FB36A:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FB36E:  MOVS            R0, #0xFF
3FB370:  ADD             SP, SP, #8
3FB372:  POP             {R4,R6,R7,PC}
3FB374:  MOV.W           R0, #0xFFFFFFFF; int
3FB378:  MOVS            R1, #0; bool
3FB37A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB37E:  CBZ             R0, loc_3FB39A
3FB380:  MOV.W           R0, #0xFFFFFFFF; int
3FB384:  MOVS            R1, #0; bool
3FB386:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FB38A:  LDR.W           R0, [R0,#0x5A4]
3FB38E:  CMP             R0, #4
3FB390:  ITT NE
3FB392:  LDRBNE.W        R0, [R4,#0x11B]; this
3FB396:  CMPNE           R0, #0
3FB398:  BNE             loc_3FB368
3FB39A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FB39E:  CMP             R0, #0
3FB3A0:  BNE             loc_3FB318
3FB3A2:  LDRH            R0, [R4,#0x20]
3FB3A4:  CMP             R0, #0
3FB3A6:  BNE             loc_3FB36E
3FB3A8:  B               loc_3FB318
