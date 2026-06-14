; =========================================================
; Game Engine Function: sub_155740
; Address            : 0x155740 - 0x155836
; =========================================================

155740:  PUSH            {R4-R7,LR}
155742:  ADD             R7, SP, #0xC
155744:  PUSH.W          {R11}
155748:  SUB             SP, SP, #0x28
15574A:  MOV             R6, R1
15574C:  LDR             R1, =(aPlayerconfig - 0x155756); "playerConfig" ...
15574E:  ADDS            R0, #0x60 ; '`'
155750:  MOV             R4, R2
155752:  ADD             R1, PC; "playerConfig"
155754:  BL              sub_E4710
155758:  MOV             R5, R0
15575A:  MOV             R0, R6
15575C:  BL              sub_15E670
155760:  STR             R0, [SP,#0x38+var_30]
155762:  MOV.W           R0, #0x80000000
155766:  STR             R0, [SP,#0x38+var_14]
155768:  MOVS            R1, #0
15576A:  LDRB            R0, [R5]
15576C:  STR             R1, [SP,#0x38+var_18]
15576E:  CMP             R0, #1
155770:  STRD.W          R5, R1, [SP,#0x38+var_20]
155774:  BEQ             loc_155782
155776:  CMP             R0, #2
155778:  BNE             loc_15578E
15577A:  LDR             R0, [R5,#8]
15577C:  LDR             R0, [R0,#4]
15577E:  STR             R0, [SP,#0x38+var_18]
155780:  B               loc_155792
155782:  LDR             R0, [R5,#8]
155784:  ADD             R1, SP, #0x38+var_30
155786:  BL              sub_15621E
15578A:  STR             R0, [SP,#0x38+var_1C]
15578C:  B               loc_155792
15578E:  MOVS            R0, #1
155790:  STR             R0, [SP,#0x38+var_14]
155792:  MOV.W           R0, #0x80000000
155796:  MOVS            R1, #0
155798:  STR             R0, [SP,#0x38+var_24]
15579A:  LDRB            R0, [R5]
15579C:  STR             R1, [SP,#0x38+var_28]
15579E:  CMP             R0, #2
1557A0:  STRD.W          R5, R1, [SP,#0x38+var_30]
1557A4:  BEQ             loc_1557B2
1557A6:  CMP             R0, #1
1557A8:  BNE             loc_1557BA
1557AA:  LDR             R0, [R5,#8]
1557AC:  ADDS            R0, #4
1557AE:  STR             R0, [SP,#0x38+var_2C]
1557B0:  B               loc_1557BE
1557B2:  LDR             R0, [R5,#8]
1557B4:  LDR             R0, [R0,#4]
1557B6:  STR             R0, [SP,#0x38+var_28]
1557B8:  B               loc_1557BE
1557BA:  MOVS            R0, #1
1557BC:  STR             R0, [SP,#0x38+var_24]
1557BE:  ADD             R0, SP, #0x38+var_20
1557C0:  ADD             R1, SP, #0x38+var_30
1557C2:  BL              sub_E9AA0
1557C6:  CBNZ            R0, loc_15582E
1557C8:  ADD             R0, SP, #0x38+var_20
1557CA:  BL              sub_15626C
1557CE:  LDR             R1, =(aVolume - 0x1557D8); "volume" ...
1557D0:  ADD             R6, SP, #0x38+var_30
1557D2:  MOV             R5, R0
1557D4:  ADD             R1, PC; "volume"
1557D6:  MOV             R0, R6; int
1557D8:  BL              sub_DC6DC
1557DC:  MOV.W           R0, #0x3F800000
1557E0:  STR             R0, [SP,#0x38+var_34]
1557E2:  ADD             R2, SP, #0x38+var_34
1557E4:  MOV             R0, R5
1557E6:  MOV             R1, R6
1557E8:  BL              sub_155624
1557EC:  VMOV            S0, R0
1557F0:  LDRB.W          R0, [SP,#0x38+var_30]
1557F4:  VSTR            S0, [R4,#0x20]
1557F8:  LSLS            R0, R0, #0x1F
1557FA:  ITT NE
1557FC:  LDRNE           R0, [SP,#0x38+var_28]; void *
1557FE:  BLXNE           j__ZdlPv; operator delete(void *)
155802:  LDR             R1, =(aMuted - 0x15580A); "muted" ...
155804:  ADD             R6, SP, #0x38+var_30
155806:  ADD             R1, PC; "muted"
155808:  MOV             R0, R6; int
15580A:  BL              sub_DC6DC
15580E:  MOVS            R0, #0
155810:  STRB.W          R0, [SP,#0x38+var_34]
155814:  ADD             R2, SP, #0x38+var_34
155816:  MOV             R0, R5
155818:  MOV             R1, R6
15581A:  BL              sub_E4ABC
15581E:  LDRB.W          R1, [SP,#0x38+var_30]
155822:  STRB            R0, [R4,#0x1E]
155824:  LSLS            R0, R1, #0x1F
155826:  ITT NE
155828:  LDRNE           R0, [SP,#0x38+var_28]; void *
15582A:  BLXNE           j__ZdlPv; operator delete(void *)
15582E:  ADD             SP, SP, #0x28 ; '('
155830:  POP.W           {R11}
155834:  POP             {R4-R7,PC}
