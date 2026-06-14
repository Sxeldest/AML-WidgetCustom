; =========================================================
; Game Engine Function: _ZN9CQuadBikeC2Eih
; Address            : 0x57A18C - 0x57A20E
; =========================================================

57A18C:  PUSH            {R4-R7,LR}; Alternative name is 'CQuadBike::CQuadBike(int, unsigned char)'
57A18E:  ADD             R7, SP, #0xC
57A190:  PUSH.W          {R11}
57A194:  MOVS            R3, #0; unsigned __int8
57A196:  MOV             R5, R1
57A198:  MOV             R4, R0
57A19A:  MOVS            R6, #0
57A19C:  BLX             j__ZN11CAutomobileC2Eihh_0; CAutomobile::CAutomobile(int,uchar,uchar)
57A1A0:  LDR             R0, =(_ZTV9CQuadBike_ptr - 0x57A1A6)
57A1A2:  ADD             R0, PC; _ZTV9CQuadBike_ptr
57A1A4:  LDR             R0, [R0]; `vtable for'CQuadBike ...
57A1A6:  ADDS            R0, #8
57A1A8:  STR             R0, [R4]
57A1AA:  ADD.W           R0, R4, #0x9A0; this
57A1AE:  BLX             j__ZN13CRideAnimDataC2Ev; CRideAnimData::CRideAnimData(void)
57A1B2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57A1C0)
57A1B4:  MOVS            R3, #0xA
57A1B6:  LDR             R1, =(mod_HandlingManager_ptr - 0x57A1C4)
57A1B8:  VMOV.I32        Q8, #0
57A1BC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57A1BE:  LDR             R2, [R4]
57A1C0:  ADD             R1, PC; mod_HandlingManager_ptr
57A1C2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57A1C4:  LDR             R1, [R1]; mod_HandlingManager
57A1C6:  LDR.W           R0, [R0,R5,LSL#2]
57A1CA:  STR.W           R3, [R4,#0x9A0]
57A1CE:  ADDW            R3, R4, #0x9BC
57A1D2:  LDRH.W          R0, [R0,#0x62]
57A1D6:  VST1.32         {D16-D17}, [R3]
57A1DA:  MOVS            R3, #2
57A1DC:  ADD.W           R0, R1, R0,LSL#6
57A1E0:  BL              sub_3F65DE
57A1E4:  STR.W           R3, [R4,#0x5A4]
57A1E8:  ADD             R0, R1
57A1EA:  STR.W           R0, [R4,#0x99C]
57A1EE:  MOV             R0, R4
57A1F0:  LDR.W           R1, [R2,#0xC4]
57A1F4:  BLX             R1
57A1F6:  LDRB.W          R0, [R4,#0x9CC]
57A1FA:  STR.W           R6, [R4,#0x498]
57A1FE:  AND.W           R0, R0, #0xFE
57A202:  STRB.W          R0, [R4,#0x9CC]
57A206:  MOV             R0, R4
57A208:  POP.W           {R11}
57A20C:  POP             {R4-R7,PC}
