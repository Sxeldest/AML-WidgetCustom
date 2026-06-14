; =========================================================
; Game Engine Function: _ZN4CPad23CycleWeaponLeftJustDownEv
; Address            : 0x3FB1E8 - 0x3FB250
; =========================================================

3FB1E8:  PUSH            {R4,R6,R7,LR}
3FB1EA:  ADD             R7, SP, #8
3FB1EC:  LDRH.W          R1, [R0,#0x110]
3FB1F0:  CBNZ            R1, loc_3FB20E
3FB1F2:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3FB1FA)
3FB1F4:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3FB200)
3FB1F6:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
3FB1F8:  LDRB.W          R0, [R0,#0x131]
3FB1FC:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
3FB1FE:  LDR             R1, [R1]; CTimer::m_UserPause ...
3FB200:  LDR             R2, [R2]; CTimer::m_CodePause ...
3FB202:  LDRB            R1, [R1]; CTimer::m_UserPause
3FB204:  LDRB            R2, [R2]; CTimer::m_CodePause
3FB206:  ORRS            R0, R1
3FB208:  ORRS            R0, R2
3FB20A:  LSLS            R0, R0, #0x18
3FB20C:  BEQ             loc_3FB214
3FB20E:  MOVS            R4, #0
3FB210:  MOV             R0, R4
3FB212:  POP             {R4,R6,R7,PC}
3FB214:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FB21A)
3FB216:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FB218:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FB21A:  LDR.W           R0, [R0,#(dword_6F3A14 - 0x6F3794)]; this
3FB21E:  CMP             R0, #0
3FB220:  BEQ             loc_3FB20E
3FB222:  VLDR            S0, [R0,#0x44]
3FB226:  VLDR            S2, [R0,#0x8C]
3FB22A:  VCMPE.F32       S0, S2
3FB22E:  VMRS            APSR_nzcv, FPSCR
3FB232:  BGE             loc_3FB20E
3FB234:  BLX             j__ZN17CWidgetPlayerInfo23PassesDisplayConditionsEv; CWidgetPlayerInfo::PassesDisplayConditions(void)
3FB238:  CMP             R0, #1
3FB23A:  BNE             loc_3FB20E
3FB23C:  MOVS            R0, #0xA0
3FB23E:  MOVS            R1, #1
3FB240:  MOVS            R4, #1
3FB242:  BLX             j__ZN15CTouchInterface12IsSwipedLeftENS_9WidgetIDsEi; CTouchInterface::IsSwipedLeft(CTouchInterface::WidgetIDs,int)
3FB246:  CMP             R0, #0
3FB248:  IT EQ
3FB24A:  MOVEQ           R4, #0
3FB24C:  MOV             R0, R4
3FB24E:  POP             {R4,R6,R7,PC}
