; =========================================================
; Game Engine Function: _ZN4CPad19GetPedWalkLeftRightEv
; Address            : 0x3FA1C8 - 0x3FA23E
; =========================================================

3FA1C8:  PUSH            {R4,R6,R7,LR}
3FA1CA:  ADD             R7, SP, #8
3FA1CC:  SUB             SP, SP, #8
3FA1CE:  MOV             R4, R0
3FA1D0:  LDRH.W          R0, [R4,#0x110]
3FA1D4:  CBNZ            R0, loc_3FA1DC
3FA1D6:  LDRB.W          R0, [R4,#0x11F]
3FA1DA:  CBZ             R0, loc_3FA1E4
3FA1DC:  MOVS            R1, #0
3FA1DE:  SXTH            R0, R1
3FA1E0:  ADD             SP, SP, #8
3FA1E2:  POP             {R4,R6,R7,PC}
3FA1E4:  LDR             R0, =(TheCamera_ptr - 0x3FA1EA)
3FA1E6:  ADD             R0, PC; TheCamera_ptr
3FA1E8:  LDR             R0, [R0]; TheCamera ; this
3FA1EA:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
3FA1EE:  MOVS            R1, #0
3FA1F0:  CMP             R0, #0
3FA1F2:  BNE             loc_3FA1DE
3FA1F4:  STRD.W          R1, R1, [SP,#0x10+var_10]
3FA1F8:  MOV             R1, SP
3FA1FA:  MOVS            R0, #0xA7
3FA1FC:  MOVS            R2, #1
3FA1FE:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA202:  CMP             R0, #1
3FA204:  BNE             loc_3FA230
3FA206:  VLDR            S0, [SP,#0x10+var_10]
3FA20A:  VLDR            S4, =64.0
3FA20E:  VABS.F32        S2, S0
3FA212:  VCMPE.F32       S2, S4
3FA216:  VMRS            APSR_nzcv, FPSCR
3FA21A:  BLE             loc_3FA226
3FA21C:  MOVS            R0, #byte_4; this
3FA21E:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FA222:  VLDR            S0, [SP,#0x10+var_10]
3FA226:  VCVT.S32.F32    S0, S0
3FA22A:  VMOV            R1, S0
3FA22E:  B               loc_3FA1DE
3FA230:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA234:  CMP             R0, #0
3FA236:  ITE EQ
3FA238:  LDRHEQ          R1, [R4]
3FA23A:  MOVNE           R1, #0
3FA23C:  B               loc_3FA1DE
