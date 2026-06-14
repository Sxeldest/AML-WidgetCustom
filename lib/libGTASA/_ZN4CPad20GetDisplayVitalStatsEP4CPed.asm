; =========================================================
; Game Engine Function: _ZN4CPad20GetDisplayVitalStatsEP4CPed
; Address            : 0x3FBEF0 - 0x3FBF38
; =========================================================

3FBEF0:  PUSH            {R7,LR}
3FBEF2:  MOV             R7, SP
3FBEF4:  LDRH.W          R1, [R0,#0x110]
3FBEF8:  CBNZ            R1, loc_3FBF34
3FBEFA:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3FBF02)
3FBEFC:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3FBF08)
3FBEFE:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
3FBF00:  LDRB.W          R0, [R0,#0x133]
3FBF04:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
3FBF06:  LDR             R1, [R1]; CTimer::m_UserPause ...
3FBF08:  LDR             R2, [R2]; CTimer::m_CodePause ...
3FBF0A:  LDRB            R1, [R1]; CTimer::m_UserPause
3FBF0C:  LDRB            R2, [R2]; CTimer::m_CodePause
3FBF0E:  ORRS            R0, R1
3FBF10:  ORRS            R0, R2
3FBF12:  LSLS            R0, R0, #0x18; this
3FBF14:  BNE             loc_3FBF34
3FBF16:  BLX             j__ZN4CHID27Use360ClassicVitalStatsHackEv; CHID::Use360ClassicVitalStatsHack(void)
3FBF1A:  CBNZ            R0, loc_3FBF34
3FBF1C:  MOVS            R0, #0xA0
3FBF1E:  MOVS            R1, #1
3FBF20:  BLX             j__ZN15CTouchInterface10IsHeldDownENS_9WidgetIDsEi; CTouchInterface::IsHeldDown(CTouchInterface::WidgetIDs,int)
3FBF24:  CMP             R0, #1
3FBF26:  BNE             loc_3FBF34
3FBF28:  MOV.W           R0, #(elf_hash_bucket+0x104); this
3FBF2C:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FBF30:  MOVS            R0, #1
3FBF32:  POP             {R7,PC}
3FBF34:  MOVS            R0, #0
3FBF36:  POP             {R7,PC}
