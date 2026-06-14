; =========================================================
; Game Engine Function: sub_18888C
; Address            : 0x18888C - 0x1889EE
; =========================================================

18888C:  PUSH            {R4-R7,LR}
18888E:  ADD             R7, SP, #0xC
188890:  PUSH.W          {R8-R11}
188894:  SUB             SP, SP, #0x1C
188896:  MOV             R5, R3
188898:  CMP             R3, #4
18889A:  LDRD.W          R10, R9, [R7,#arg_0]
18889E:  MOV             R11, R0
1888A0:  IT HI
1888A2:  MOVHI           R5, #1
1888A4:  CMP.W           R9, #0x1F
1888A8:  ADD.W           R0, R2, #7
1888AC:  IT HI
1888AE:  MOVHI.W         R9, #0
1888B2:  CMP.W           R10, #0xA
1888B6:  IT HI
1888B8:  MOVHI.W         R10, #8
1888BC:  MOV.W           R8, R0,ASR#3
1888C0:  MOV             R4, R2
1888C2:  CMP             R2, #0
1888C4:  STR.W           R8, [SP,#0x38+var_20]
1888C8:  BEQ.W           loc_1889DE
1888CC:  ADD.W           R0, R11, #0x6A0
1888D0:  STR             R1, [SP,#0x38+src]
1888D2:  BL              sub_1889FC
1888D6:  MOV             R6, R0
1888D8:  LDRD.W          R1, R0, [R7,#arg_10]
1888DC:  STRD.W          R1, R0, [R6,#0x20]
1888E0:  LDR             R0, [R7,#arg_8]
1888E2:  STR             R6, [SP,#0x38+var_24]
1888E4:  CBZ             R0, loc_1888F8
1888E6:  MOV             R0, R8; unsigned int
1888E8:  BLX             j__Znaj; operator new[](uint)
1888EC:  LDR             R1, [SP,#0x38+src]; src
1888EE:  MOV             R2, R8; n
1888F0:  STR             R0, [R6,#0x34]
1888F2:  BLX             j_memcpy
1888F6:  B               loc_1888FC
1888F8:  LDR             R0, [SP,#0x38+src]
1888FA:  STR             R0, [R6,#0x34]
1888FC:  MOVS            R0, #0
1888FE:  STR             R4, [R6,#0x30]
188900:  STRD.W          R0, R0, [R6,#0x28]
188904:  STR             R0, [R6,#0x1C]
188906:  STR.W           R10, [R6,#0xC]
18890A:  LDRH.W          R0, [R11,#0xB4]
18890E:  LDR             R2, [R7,#arg_C]
188910:  STRH            R0, [R6]
188912:  SUB.W           R0, R10, #7
188916:  CMP             R0, #3
188918:  STR             R5, [R6,#8]
18891A:  BHI             loc_188926
18891C:  LDR             R1, =(unk_91DF0 - 0x188922)
18891E:  ADD             R1, PC; unk_91DF0
188920:  LDR.W           R0, [R1,R0,LSL#2]
188924:  B               loc_18892A
188926:  MOV             R0, #0xFFFFFFF9
18892A:  ADD             R0, R2
18892C:  MOV             R10, R2
18892E:  SUB.W           R5, R0, #0x1C
188932:  ADDW            R0, R11, #0x414
188936:  STR             R5, [SP,#0x38+var_28]
188938:  BL              sub_17E0BA
18893C:  CBZ             R0, loc_188942
18893E:  SUBS            R5, #0x10
188940:  STR             R5, [SP,#0x38+var_28]
188942:  CMP             R8, R5
188944:  BLE             loc_18897A
188946:  LDR             R1, =(aUsePlitPacketF - 0x188952); "Use plit packet for packet size {} > {}" ...
188948:  ADD             R0, SP, #0x38+var_28
18894A:  ADD             R3, SP, #0x38+var_20
18894C:  STR             R0, [SP,#0x38+var_38]
18894E:  ADD             R1, PC; "Use plit packet for packet size {} > {}"
188950:  MOVS            R0, #1
188952:  MOVS            R2, #0x27 ; '''
188954:  BL              sub_18A52C
188958:  LDR             R0, [SP,#0x38+src]
18895A:  CBZ             R0, loc_18896E
18895C:  LDRB            R0, [R0]
18895E:  ADD             R3, SP, #0x38+var_2C
188960:  LDR             R1, =(aPacketId - 0x18896C); "Packet id {}" ...
188962:  MOVS            R2, #0xC
188964:  STR             R0, [SP,#0x38+var_2C]
188966:  MOVS            R0, #1
188968:  ADD             R1, PC; "Packet id {}"
18896A:  BL              sub_186F1C
18896E:  LDR.W           R0, [R11,#0x350]
188972:  ADDS            R0, #1
188974:  STR.W           R0, [R11,#0x350]
188978:  B               loc_188984
18897A:  LDR.W           R0, [R11,#0x34C]
18897E:  ADDS            R0, #1
188980:  STR.W           R0, [R11,#0x34C]
188984:  LDR             R0, [R6,#0xC]
188986:  MOV             R2, R10
188988:  LDRH.W          R1, [R11,#0xB4]
18898C:  CMP             R0, #0xA
18898E:  ADD.W           R1, R1, #1
188992:  STRH.W          R1, [R11,#0xB4]
188996:  BEQ             loc_1889A0
188998:  CMP             R0, #9
18899A:  BEQ             loc_1889AE
18899C:  CMP             R0, #7
18899E:  BNE             loc_1889C2
1889A0:  ADD.W           R0, R11, R9,LSL#1
1889A4:  STRB.W          R9, [R6,#0x10]
1889A8:  ADD.W           R0, R0, #0x214
1889AC:  B               loc_1889BA
1889AE:  ADD.W           R0, R11, R9,LSL#1
1889B2:  STRB.W          R9, [R6,#0x10]
1889B6:  ADD.W           R0, R0, #0x1D4
1889BA:  LDRH            R1, [R0]
1889BC:  ADDS            R3, R1, #1
1889BE:  STRH            R3, [R0]
1889C0:  STRH            R1, [R6,#0x12]
1889C2:  CMP             R8, R5
1889C4:  BLE             loc_1889D0
1889C6:  MOV             R0, R11
1889C8:  MOV             R1, R6
1889CA:  BL              sub_188A3C
1889CE:  B               loc_1889DE
1889D0:  LDR             R0, [R6,#8]
1889D2:  ADD             R1, SP, #0x38+var_24
1889D4:  ADD.W           R0, R11, R0,LSL#4
1889D8:  ADDS            R0, #0x68 ; 'h'
1889DA:  BL              sub_17E430
1889DE:  CMP             R4, #0
1889E0:  IT NE
1889E2:  MOVNE           R4, #1
1889E4:  MOV             R0, R4
1889E6:  ADD             SP, SP, #0x1C
1889E8:  POP.W           {R8-R11}
1889EC:  POP             {R4-R7,PC}
