; =========================================================
; Game Engine Function: _ZN4CPad16GetPedWalkUpDownEv
; Address            : 0x3FA248 - 0x3FA2BE
; =========================================================

3FA248:  PUSH            {R4,R6,R7,LR}
3FA24A:  ADD             R7, SP, #8
3FA24C:  SUB             SP, SP, #8
3FA24E:  MOV             R4, R0
3FA250:  LDRH.W          R0, [R4,#0x110]
3FA254:  CBNZ            R0, loc_3FA25C
3FA256:  LDRB.W          R0, [R4,#0x11F]
3FA25A:  CBZ             R0, loc_3FA264
3FA25C:  MOVS            R1, #0
3FA25E:  SXTH            R0, R1
3FA260:  ADD             SP, SP, #8
3FA262:  POP             {R4,R6,R7,PC}
3FA264:  LDR             R0, =(TheCamera_ptr - 0x3FA26A)
3FA266:  ADD             R0, PC; TheCamera_ptr
3FA268:  LDR             R0, [R0]; TheCamera ; this
3FA26A:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
3FA26E:  MOVS            R1, #0
3FA270:  CMP             R0, #0
3FA272:  BNE             loc_3FA25E
3FA274:  STRD.W          R1, R1, [SP,#0x10+var_10]
3FA278:  MOV             R1, SP
3FA27A:  MOVS            R0, #0xA7
3FA27C:  MOVS            R2, #1
3FA27E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA282:  CMP             R0, #1
3FA284:  BNE             loc_3FA2B0
3FA286:  VLDR            S0, [SP,#0x10+var_C]
3FA28A:  VLDR            S4, =64.0
3FA28E:  VABS.F32        S2, S0
3FA292:  VCMPE.F32       S2, S4
3FA296:  VMRS            APSR_nzcv, FPSCR
3FA29A:  BLE             loc_3FA2A6
3FA29C:  MOVS            R0, #byte_4; this
3FA29E:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FA2A2:  VLDR            S0, [SP,#0x10+var_C]
3FA2A6:  VCVT.S32.F32    S0, S0
3FA2AA:  VMOV            R1, S0
3FA2AE:  B               loc_3FA25E
3FA2B0:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA2B4:  CMP             R0, #0
3FA2B6:  ITE EQ
3FA2B8:  LDRHEQ          R1, [R4,#2]
3FA2BA:  MOVNE           R1, #0
3FA2BC:  B               loc_3FA25E
