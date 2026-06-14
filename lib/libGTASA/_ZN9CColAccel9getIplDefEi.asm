; =========================================================
; Game Engine Function: _ZN9CColAccel9getIplDefEi
; Address            : 0x46665C - 0x466692
; =========================================================

46665C:  LDR             R2, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x466664)
46665E:  MOVS            R3, #0x34 ; '4'
466660:  ADD             R2, PC; _ZN9CColAccel9m_iplDefsE_ptr
466662:  LDR             R2, [R2]; CColAccel::m_iplDefs ...
466664:  LDR             R2, [R2]; CColAccel::m_iplDefs
466666:  MLA.W           R1, R1, R3, R2
46666A:  ADD.W           R3, R1, #0x20 ; ' '
46666E:  MOV             R2, R1
466670:  LDR             R1, [R1,#0x30]
466672:  VLD1.32         {D16-D17}, [R2]!
466676:  VLD1.32         {D18-D19}, [R3]
46667A:  VLD1.32         {D20-D21}, [R2]
46667E:  STR             R1, [R0,#0x30]
466680:  ADD.W           R1, R0, #0x20 ; ' '
466684:  VST1.32         {D18-D19}, [R1]
466688:  VST1.32         {D16-D17}, [R0]!
46668C:  VST1.32         {D20-D21}, [R0]
466690:  BX              LR
