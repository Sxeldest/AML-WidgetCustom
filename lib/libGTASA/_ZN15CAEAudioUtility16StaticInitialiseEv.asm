; =========================================================
; Game Engine Function: _ZN15CAEAudioUtility16StaticInitialiseEv
; Address            : 0x46D4A0 - 0x46D50C
; =========================================================

46D4A0:  PUSH            {R4-R7,LR}
46D4A2:  ADD             R7, SP, #0xC
46D4A4:  PUSH.W          {R11}
46D4A8:  VPUSH           {D8}
46D4AC:  LDR             R0, =(_ZN15CAEAudioUtility13m_sfLogLookupE_ptr - 0x46D4BC)
46D4AE:  VMOV.F32        S16, #10.0
46D4B2:  ADR             R1, dword_46D510
46D4B4:  MOVW            R4, #0x999A
46D4B8:  ADD             R0, PC; _ZN15CAEAudioUtility13m_sfLogLookupE_ptr
46D4BA:  VLD1.64         {D16-D17}, [R1@128]
46D4BE:  MOVS            R6, #0x2F ; '/'
46D4C0:  MOVT            R4, #0x3F99
46D4C4:  LDR             R5, [R0]; CAEAudioUtility::m_sfLogLookup ...
46D4C6:  VST1.32         {D16-D17}, [R5]!
46D4CA:  VMOV            S0, R6
46D4CE:  MOV             R0, R4; x
46D4D0:  VCVT.F32.S32    S0, S0
46D4D4:  VMOV            R1, S0; y
46D4D8:  BLX             powf
46D4DC:  VMOV            S0, R0
46D4E0:  SUBS            R6, #1
46D4E2:  ADDS            R0, R6, #1
46D4E4:  VDIV.F32        S0, S16, S0
46D4E8:  VSTR            S0, [R5]
46D4EC:  ADD.W           R5, R5, #8
46D4F0:  BNE             loc_46D4CA
46D4F2:  VMOV            R0, S0; x
46D4F6:  BLX             log10f
46D4FA:  LDR             R1, =(_ZN15CAEAudioUtility13m_sfLogLookupE_ptr - 0x46D500)
46D4FC:  ADD             R1, PC; _ZN15CAEAudioUtility13m_sfLogLookupE_ptr
46D4FE:  LDR             R1, [R1]; CAEAudioUtility::m_sfLogLookup ...
46D500:  STR             R0, [R1,#(dword_9443E8 - 0x9443DC)]
46D502:  VPOP            {D8}
46D506:  POP.W           {R11}
46D50A:  POP             {R4-R7,PC}
