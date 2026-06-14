; =========================================================
; Game Engine Function: _ZN9CMessages13GxtStringCopyEPtS0_t
; Address            : 0x54B70A - 0x54B7A4
; =========================================================

54B70A:  PUSH            {R4-R7,LR}
54B70C:  ADD             R7, SP, #0xC
54B70E:  PUSH.W          {R11}
54B712:  SUBS            R5, R2, #1
54B714:  CBZ             R1, loc_54B732
54B716:  CMP             R2, #2
54B718:  BCC             loc_54B77E
54B71A:  MOVS            R3, #0
54B71C:  MOVS            R2, #0
54B71E:  LDRH.W          R4, [R1,R3,LSL#1]
54B722:  CBZ             R4, loc_54B792
54B724:  ADDS            R2, #1
54B726:  STRH.W          R4, [R0,R3,LSL#1]
54B72A:  UXTH            R3, R2
54B72C:  CMP             R5, R3
54B72E:  BGT             loc_54B71E
54B730:  B               loc_54B792
54B732:  CMP             R2, #2
54B734:  BCC             loc_54B77E
54B736:  MOV.W           R12, #0
54B73A:  CMP             R5, #8
54B73C:  BCC             loc_54B782
54B73E:  ADDS            R1, R2, #7
54B740:  AND.W           LR, R1, #7
54B744:  SUBS.W          R3, R5, LR
54B748:  BEQ             loc_54B782
54B74A:  SUBS            R2, #2
54B74C:  MOVS            R1, #0
54B74E:  MOVW            R6, #0xFFFF
54B752:  UXTH            R4, R2
54B754:  CMP             R4, R6
54B756:  BEQ             loc_54B7A0
54B758:  CMP.W           R1, R2,LSR#16
54B75C:  MOV.W           R2, #0
54B760:  BNE             loc_54B786
54B762:  VMOV.I32        Q8, #0
54B766:  MOV             R1, R3
54B768:  MOV             R2, R1
54B76A:  MOV             R3, R0
54B76C:  VST1.16         {D16-D17}, [R3]!
54B770:  SUBS            R2, #8
54B772:  BNE             loc_54B76C
54B774:  CMP.W           LR, #0
54B778:  MOV             R2, R1
54B77A:  BNE             loc_54B786
54B77C:  B               loc_54B792
54B77E:  MOVS            R2, #0
54B780:  B               loc_54B792
54B782:  MOVS            R1, #0
54B784:  MOVS            R2, #0
54B786:  ADDS            R2, #1
54B788:  STRH.W          R12, [R0,R1,LSL#1]
54B78C:  UXTH            R1, R2
54B78E:  CMP             R5, R1
54B790:  BGT             loc_54B786
54B792:  UXTH            R1, R2
54B794:  MOVS            R2, #0
54B796:  STRH.W          R2, [R0,R1,LSL#1]
54B79A:  POP.W           {R11}
54B79E:  POP             {R4-R7,PC}
54B7A0:  MOVS            R2, #0
54B7A2:  B               loc_54B786
