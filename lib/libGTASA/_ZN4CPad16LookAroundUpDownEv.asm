; =========================================================
; Game Engine Function: _ZN4CPad16LookAroundUpDownEv
; Address            : 0x3FC37C - 0x3FC424
; =========================================================

3FC37C:  PUSH            {R4-R7,LR}
3FC37E:  ADD             R7, SP, #0xC
3FC380:  PUSH.W          {R11}
3FC384:  LDR             R1, =(Pads_ptr - 0x3FC38C)
3FC386:  LDR             R2, =(_ZN14MobileSettings8settingsE_ptr - 0x3FC38E)
3FC388:  ADD             R1, PC; Pads_ptr
3FC38A:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
3FC38C:  LDR             R1, [R1]; Pads
3FC38E:  LDR             R2, [R2]; MobileSettings::settings ...
3FC390:  LDRH            R5, [R1,#(word_959B22 - 0x959B1C)]
3FC392:  LDR.W           R1, [R2,#(dword_6E05DC - 0x6E03F4)]
3FC396:  CMP             R1, #0
3FC398:  IT NE
3FC39A:  NEGNE           R5, R5
3FC39C:  SXTH            R4, R5
3FC39E:  CMP             R4, #0
3FC3A0:  MOV             R6, R4
3FC3A2:  IT MI
3FC3A4:  NEGMI           R6, R4
3FC3A6:  CMP             R6, #0x65 ; 'e'
3FC3A8:  BLT             loc_3FC3D8
3FC3AA:  LDRH.W          R1, [R0,#0x110]
3FC3AE:  CBZ             R1, loc_3FC3BE
3FC3B0:  SXTH            R0, R5
3FC3B2:  CMP             R0, #1
3FC3B4:  BLT             loc_3FC418
3FC3B6:  MOVW            R0, #0xFFCE
3FC3BA:  ADDS            R1, R4, R0
3FC3BC:  B               loc_3FC41C
3FC3BE:  LDRB.W          R0, [R0,#0x145]; this
3FC3C2:  CBZ             R0, loc_3FC3CC
3FC3C4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FC3C8:  CMP             R0, #0
3FC3CA:  BEQ             loc_3FC3B0
3FC3CC:  MOVS            R0, #0xAF
3FC3CE:  MOVS            R1, #1
3FC3D0:  BLX             j__ZN15CTouchInterface10IsHeldDownENS_9WidgetIDsEi; CTouchInterface::IsHeldDown(CTouchInterface::WidgetIDs,int)
3FC3D4:  CMP             R0, #0
3FC3D6:  BEQ             loc_3FC3B0
3FC3D8:  LDR             R0, =(TheCamera_ptr - 0x3FC3DE)
3FC3DA:  ADD             R0, PC; TheCamera_ptr
3FC3DC:  LDR             R0, [R0]; TheCamera
3FC3DE:  ADD.W           R0, R0, #0x170; this
3FC3E2:  BLX             j__ZN4CCam22Using3rdPersonMouseCamEv; CCam::Using3rdPersonMouseCam(void)
3FC3E6:  MOVS            R1, #0
3FC3E8:  CMP             R6, #0x33 ; '3'
3FC3EA:  BLT             loc_3FC41C
3FC3EC:  CMP             R0, #1
3FC3EE:  BNE             loc_3FC41C
3FC3F0:  SXTH            R0, R5
3FC3F2:  CMP             R0, #1
3FC3F4:  ITE LT
3FC3F6:  ADDLT.W         R0, R4, #0x32 ; '2'
3FC3FA:  SUBGE.W         R0, R4, #0x32 ; '2'
3FC3FE:  VMOV.F32        S0, #0.5
3FC402:  VMOV            S2, R0
3FC406:  VCVT.F32.S32    S2, S2
3FC40A:  VMUL.F32        S0, S2, S0
3FC40E:  VCVT.S32.F32    S0, S0
3FC412:  VMOV            R1, S0
3FC416:  B               loc_3FC41C
3FC418:  ADD.W           R1, R4, #0x32 ; '2'
3FC41C:  SXTH            R0, R1
3FC41E:  POP.W           {R11}
3FC422:  POP             {R4-R7,PC}
