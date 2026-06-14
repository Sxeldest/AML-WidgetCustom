; =========================================================
; Game Engine Function: _ZN17CScriptsForBrains27CheckIfNewEntityNeedsScriptEP7CEntityaP13CPedGenerator
; Address            : 0x32F6FC - 0x32F794
; =========================================================

32F6FC:  PUSH            {R4-R7,LR}
32F6FE:  ADD             R7, SP, #0xC
32F700:  PUSH.W          {R8,R9,R11}
32F704:  VPUSH           {D8-D9}
32F708:  SUB             SP, SP, #8
32F70A:  MOV             R4, R2
32F70C:  MOV             R9, R1
32F70E:  MOV             R8, R0
32F710:  CBZ             R4, loc_32F71E
32F712:  LDRB.W          R0, [R9,#0x146]
32F716:  TST.W           R0, #0x30
32F71A:  BNE             loc_32F788
32F71C:  B               loc_32F728
32F71E:  LDRH.W          R0, [R9,#0x48E]
32F722:  TST.W           R0, #0x180
32F726:  BNE             loc_32F788
32F728:  ADD.W           R5, R8, #0xC
32F72C:  VLDR            S16, =0.000015259
32F730:  VLDR            S18, =100.0
32F734:  MOVS            R6, #0
32F736:  LDRB.W          R0, [R5,#-0xA]
32F73A:  UXTB            R1, R4
32F73C:  CMP             R0, R1
32F73E:  BNE             loc_32F76E
32F740:  LDRH            R0, [R5]
32F742:  LDRH.W          R1, [R9,#0x26]
32F746:  CMP             R1, R0
32F748:  BNE             loc_32F76E
32F74A:  BLX             rand
32F74E:  UXTH            R0, R0
32F750:  VMOV            S0, R0
32F754:  VCVT.F32.S32    S0, S0
32F758:  LDRH            R0, [R5,#2]
32F75A:  VMUL.F32        S0, S0, S16
32F75E:  VMUL.F32        S0, S0, S18
32F762:  VCVT.S32.F32    S0, S0
32F766:  VMOV            R1, S0
32F76A:  CMP             R1, R0
32F76C:  BLT             loc_32F778
32F76E:  ADDS            R6, #1
32F770:  ADDS            R5, #0x14
32F772:  CMP             R6, #0x46 ; 'F'
32F774:  BCC             loc_32F736
32F776:  B               loc_32F788
32F778:  MOVS            R0, #1
32F77A:  UXTB            R1, R6; unsigned __int8
32F77C:  STR             R0, [SP,#0x30+var_30]; unsigned __int8
32F77E:  MOV             R0, R8; this
32F780:  MOV             R2, R9; CEntity *
32F782:  MOV             R3, R4; signed __int8
32F784:  BLX             j__ZN17CScriptsForBrains36StartOrRequestNewStreamedScriptBrainEhP7CEntityah; CScriptsForBrains::StartOrRequestNewStreamedScriptBrain(uchar,CEntity *,signed char,uchar)
32F788:  ADD             SP, SP, #8
32F78A:  VPOP            {D8-D9}
32F78E:  POP.W           {R8,R9,R11}
32F792:  POP             {R4-R7,PC}
