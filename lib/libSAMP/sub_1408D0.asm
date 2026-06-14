; =========================================================
; Game Engine Function: sub_1408D0
; Address            : 0x1408D0 - 0x140978
; =========================================================

1408D0:  PUSH            {R4,R6,R7,LR}
1408D2:  ADD             R7, SP, #8
1408D4:  MOV             R4, R0
1408D6:  LDR             R0, [R0,#0x1C]
1408D8:  BL              sub_106128
1408DC:  CBZ             R0, loc_1408E2
1408DE:  MOVS            R0, #2
1408E0:  B               loc_140974
1408E2:  LDR             R0, [R4,#0x1C]
1408E4:  LDRB.W          R1, [R0,#0x39]
1408E8:  CBZ             R1, loc_1408EE
1408EA:  MOVS            R0, #6
1408EC:  B               loc_140974
1408EE:  BL              sub_1064BC
1408F2:  CBZ             R0, loc_1408F8
1408F4:  MOVS            R0, #0xA
1408F6:  B               loc_140974
1408F8:  LDR             R0, [R4,#0x1C]
1408FA:  LDRB.W          R1, [R0,#0x41]
1408FE:  CBZ             R1, loc_140904
140900:  MOVS            R0, #0xB
140902:  B               loc_140974
140904:  LDRB.W          R1, [R0,#0x40]
140908:  CBZ             R1, loc_14090E
14090A:  MOVS            R0, #0x44 ; 'D'
14090C:  B               loc_140974
14090E:  BL              sub_106A90
140912:  CBZ             R0, loc_140918
140914:  MOVS            R0, #1
140916:  B               loc_140974
140918:  LDR             R0, [R4,#0x1C]
14091A:  BL              sub_106AB0
14091E:  CBZ             R0, loc_140924
140920:  MOVS            R0, #3
140922:  B               loc_140974
140924:  LDR             R0, [R4,#0x1C]
140926:  BL              sub_106AF8
14092A:  CBZ             R0, loc_140930
14092C:  MOVS            R0, #4
14092E:  B               loc_140974
140930:  LDR             R1, [R4,#0x1C]
140932:  LDRB.W          R0, [R1,#0x3B]
140936:  SUBS            R0, #1
140938:  UXTB            R0, R0
14093A:  CMP             R0, #4
14093C:  BCS             loc_14094E
14093E:  MOVW            R1, #0x1614
140942:  LSLS            R0, R0, #3
140944:  MOVT            R1, #0x1517
140948:  LSR.W           R0, R1, R0
14094C:  B               loc_140974
14094E:  LDRB.W          R0, [R1,#0x42]
140952:  CBZ             R0, loc_140958
140954:  MOVS            R0, #0x18
140956:  B               loc_140974
140958:  LDRB.W          R0, [R1,#0x43]
14095C:  CBZ             R0, loc_140962
14095E:  MOVS            R0, #0x19
140960:  B               loc_140974
140962:  LDRB.W          R2, [R1,#0x39]
140966:  MOVS            R0, #0
140968:  CBZ             R2, loc_140974
14096A:  LDRB.W          R1, [R1,#0x38]
14096E:  CMP             R1, #4
140970:  IT CC
140972:  ADDCC           R0, R1, #5
140974:  UXTB            R0, R0
140976:  POP             {R4,R6,R7,PC}
