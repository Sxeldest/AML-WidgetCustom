; =========================================================
; Game Engine Function: sub_E57FC
; Address            : 0xE57FC - 0xE5D26
; =========================================================

E57FC:  PUSH            {R4-R7,LR}
E57FE:  ADD             R7, SP, #0xC
E5800:  PUSH.W          {R8-R11}
E5804:  SUB             SP, SP, #0x44
E5806:  SUBS            R6, R1, #1
E5808:  MOV             R5, R0
E580A:  CMP             R6, #1
E580C:  BHI.W           loc_E5CC4
E5810:  MOVS            R0, #0
E5812:  CMP             R1, #2
E5814:  STR             R0, [SP,#0x60+var_34]
E5816:  STRD.W          R0, R0, [SP,#0x60+var_3C]
E581A:  STRD.W          R6, R5, [SP,#0x60+var_5C]
E581E:  BNE             loc_E591A
E5820:  LDR             R0, [R5]
E5822:  LDRD.W          R1, R0, [R0]
E5826:  SUBS            R0, R0, R1
E5828:  ADD             R4, SP, #0x60+var_3C
E582A:  ASRS            R1, R0, #4
E582C:  MOV             R0, R4
E582E:  BL              sub_E5D44
E5832:  LDR             R0, [R5]
E5834:  LDRD.W          R10, R9, [R0]
E5838:  ADD.W           R0, R4, #8
E583C:  STR             R0, [SP,#0x60+var_54]
E583E:  CMP             R10, R9
E5840:  BEQ.W           loc_E5A3A
E5844:  ADD             R0, SP, #0x60+var_30
E5846:  MOVS            R4, #0
E5848:  MOV.W           R8, #1
E584C:  LDRD.W          R1, R3, [SP,#0x60+var_38]
E5850:  CMP             R1, R3
E5852:  BCS             loc_E5870
E5854:  LDRB.W          R2, [R10]
E5858:  STRB            R2, [R1]
E585A:  LDRD.W          R2, R3, [R10,#8]
E585E:  STRD.W          R2, R3, [R1,#8]
E5862:  ADDS            R1, #0x10
E5864:  STRB.W          R4, [R10]
E5868:  STRD.W          R4, R4, [R10,#8]
E586C:  STR             R1, [SP,#0x60+var_38]
E586E:  B               loc_E5910
E5870:  LDR             R6, [SP,#0x60+var_3C]
E5872:  SUBS            R2, R1, R6
E5874:  ADD.W           R1, R8, R2,ASR#4
E5878:  CMP.W           R1, #0x10000000
E587C:  BCS.W           loc_E5D1A
E5880:  SUBS            R3, R3, R6
E5882:  MOVW            R6, #0xFFF0
E5886:  ASRS            R2, R2, #4
E5888:  MOVT            R6, #0x7FFF
E588C:  CMP.W           R1, R3,ASR#3
E5890:  IT LS
E5892:  ASRLS           R1, R3, #3
E5894:  CMP             R3, R6
E5896:  IT CS
E5898:  MOVCS           R1, #0xFFFFFFF
E589C:  LDR             R3, [SP,#0x60+var_54]
E589E:  BL              sub_E5D88
E58A2:  LDRD.W          R1, R2, [SP,#0x60+var_2C]
E58A6:  LDRB.W          R3, [R10]
E58AA:  STRB            R3, [R2]
E58AC:  LDRD.W          R3, R6, [R10,#8]
E58B0:  STRD.W          R3, R6, [R2,#8]
E58B4:  STRD.W          R4, R4, [R10,#8]
E58B8:  LDR             R6, [SP,#0x60+var_28]
E58BA:  LDRD.W          R2, R3, [SP,#0x60+var_3C]
E58BE:  ADDS            R6, #0x10
E58C0:  STRB.W          R4, [R10]
E58C4:  CMP             R3, R2
E58C6:  STR             R6, [SP,#0x60+var_28]
E58C8:  BEQ             loc_E58F4
E58CA:  LDRB.W          R6, [R3,#-0x10]!
E58CE:  STRB.W          R6, [R1,#-0x10]
E58D2:  CMP             R3, R2
E58D4:  LDRD.W          R6, R5, [R3,#8]
E58D8:  STRD.W          R6, R5, [R1,#-8]
E58DC:  STRD.W          R4, R4, [R3,#8]
E58E0:  LDR             R1, [SP,#0x60+var_2C]
E58E2:  STRB            R4, [R3]
E58E4:  SUB.W           R1, R1, #0x10
E58E8:  STR             R1, [SP,#0x60+var_2C]
E58EA:  BNE             loc_E58CA
E58EC:  LDRD.W          R3, R2, [SP,#0x60+var_3C]
E58F0:  LDR             R6, [SP,#0x60+var_28]
E58F2:  B               loc_E58F6
E58F4:  MOV             R3, R2
E58F6:  LDR.W           R12, [SP,#0x60+var_34]
E58FA:  LDR             R5, [SP,#0x60+var_24]
E58FC:  STRD.W          R1, R6, [SP,#0x60+var_3C]
E5900:  STRD.W          R3, R2, [SP,#0x60+var_2C]
E5904:  STR.W           R12, [SP,#0x60+var_24]
E5908:  STRD.W          R5, R3, [SP,#0x60+var_34]
E590C:  BL              sub_E5E26
E5910:  ADD.W           R10, R10, #0x10
E5914:  CMP             R10, R9
E5916:  BNE             loc_E584C
E5918:  B               loc_E5A3A
E591A:  LDR             R0, [R5]
E591C:  LDR             R1, [R0,#8]
E591E:  ADD             R4, SP, #0x60+var_3C
E5920:  MOV             R0, R4
E5922:  BL              sub_E5D44
E5926:  LDR.W           R9, [R5]
E592A:  ADD.W           R0, R4, #8
E592E:  STR             R0, [SP,#0x60+var_54]
E5930:  LDR.W           R6, [R9],#4
E5934:  CMP             R6, R9
E5936:  BEQ.W           loc_E5A3A
E593A:  ADD             R0, SP, #0x60+var_30
E593C:  MOV.W           R10, #0
E5940:  MOV.W           R8, #1
E5944:  LDRD.W          R1, R3, [SP,#0x60+var_38]
E5948:  CMP             R1, R3
E594A:  BCS             loc_E5968
E594C:  LDRB.W          R2, [R6,#0x20]
E5950:  STRB            R2, [R1]
E5952:  LDRD.W          R2, R3, [R6,#0x28]
E5956:  STRD.W          R2, R3, [R1,#8]
E595A:  ADDS            R1, #0x10
E595C:  STRD.W          R10, R10, [R6,#0x28]
E5960:  STRB.W          R10, [R6,#0x20]
E5964:  STR             R1, [SP,#0x60+var_38]
E5966:  B               loc_E5A0A
E5968:  LDR             R5, [SP,#0x60+var_3C]
E596A:  SUBS            R2, R1, R5
E596C:  ADD.W           R1, R8, R2,ASR#4
E5970:  CMP.W           R1, #0x10000000
E5974:  BCS.W           loc_E5D20
E5978:  SUBS            R3, R3, R5
E597A:  MOVW            R5, #0xFFF0
E597E:  ASRS            R2, R2, #4
E5980:  MOVT            R5, #0x7FFF
E5984:  CMP.W           R1, R3,ASR#3
E5988:  IT LS
E598A:  ASRLS           R1, R3, #3
E598C:  CMP             R3, R5
E598E:  IT CS
E5990:  MOVCS           R1, #0xFFFFFFF
E5994:  LDR             R3, [SP,#0x60+var_54]
E5996:  BL              sub_E5D88
E599A:  LDRD.W          R1, R5, [SP,#0x60+var_2C]
E599E:  LDRB.W          R2, [R6,#0x20]
E59A2:  STRB            R2, [R5]
E59A4:  LDRD.W          R12, LR, [R6,#0x28]
E59A8:  STRD.W          R12, LR, [R5,#8]
E59AC:  LDR             R5, [SP,#0x60+var_28]
E59AE:  LDRD.W          R2, R3, [SP,#0x60+var_3C]
E59B2:  ADDS            R5, #0x10
E59B4:  STRD.W          R10, R10, [R6,#0x28]
E59B8:  CMP             R3, R2
E59BA:  STRB.W          R10, [R6,#0x20]
E59BE:  STR             R5, [SP,#0x60+var_28]
E59C0:  BEQ             loc_E59EE
E59C2:  LDRB.W          R5, [R3,#-0x10]!
E59C6:  STRB.W          R5, [R1,#-0x10]
E59CA:  CMP             R3, R2
E59CC:  LDRD.W          R5, R4, [R3,#8]
E59D0:  STRD.W          R5, R4, [R1,#-8]
E59D4:  STRD.W          R10, R10, [R3,#8]
E59D8:  LDR             R1, [SP,#0x60+var_2C]
E59DA:  STRB.W          R10, [R3]
E59DE:  SUB.W           R1, R1, #0x10
E59E2:  STR             R1, [SP,#0x60+var_2C]
E59E4:  BNE             loc_E59C2
E59E6:  LDRD.W          R3, R2, [SP,#0x60+var_3C]
E59EA:  LDR             R5, [SP,#0x60+var_28]
E59EC:  B               loc_E59F0
E59EE:  MOV             R3, R2
E59F0:  LDR.W           R12, [SP,#0x60+var_34]
E59F4:  LDR             R4, [SP,#0x60+var_24]
E59F6:  STRD.W          R1, R5, [SP,#0x60+var_3C]
E59FA:  STRD.W          R3, R2, [SP,#0x60+var_2C]
E59FE:  STR.W           R12, [SP,#0x60+var_24]
E5A02:  STRD.W          R4, R3, [SP,#0x60+var_34]
E5A06:  BL              sub_E5E26
E5A0A:  LDR             R1, [R6,#4]
E5A0C:  CBZ             R1, loc_E5A18
E5A0E:  MOV             R6, R1
E5A10:  LDR             R1, [R1]
E5A12:  CMP             R1, #0
E5A14:  BNE             loc_E5A0E
E5A16:  B               loc_E5A34
E5A18:  MOV             R1, R6
E5A1A:  LDR.W           R2, [R1,#8]!
E5A1E:  LDR             R3, [R2]
E5A20:  CMP             R3, R6
E5A22:  MOV             R6, R2
E5A24:  BEQ             loc_E5A34
E5A26:  LDR             R2, [R1]
E5A28:  MOV             R1, R2
E5A2A:  LDR.W           R6, [R1,#8]!
E5A2E:  LDR             R3, [R6]
E5A30:  CMP             R3, R2
E5A32:  BNE             loc_E5A26
E5A34:  CMP             R6, R9
E5A36:  BNE.W           loc_E5944
E5A3A:  LDRD.W          R1, R0, [SP,#0x60+var_3C]
E5A3E:  CMP             R1, R0
E5A40:  BEQ.W           loc_E5CBA
E5A44:  ADD.W           R9, SP, #0x60+var_30
E5A48:  ADD.W           R11, SP, #0x60+var_50
E5A4C:  MOV.W           R8, #0
E5A50:  LDRB.W          R1, [R0,#-0x10]
E5A54:  STRB.W          R1, [SP,#0x60+var_50]
E5A58:  LDRD.W          R1, R2, [R0,#-8]
E5A5C:  STR             R1, [SP,#0x60+var_48]
E5A5E:  STR.W           R8, [R0,#-8]
E5A62:  STR             R2, [SP,#0x60+var_44]
E5A64:  STR.W           R8, [R0,#-4]
E5A68:  LDR             R1, [SP,#0x60+var_38]
E5A6A:  STRB.W          R8, [R0,#-0x10]
E5A6E:  SUB.W           R0, R1, #0x10
E5A72:  BL              sub_E3F7A
E5A76:  LDRB.W          R1, [SP,#0x60+var_50]
E5A7A:  STR             R0, [SP,#0x60+var_38]
E5A7C:  CMP             R1, #1
E5A7E:  BEQ             loc_E5B68
E5A80:  CMP             R1, #2
E5A82:  BNE.W           loc_E5CAA
E5A86:  LDR             R1, [SP,#0x60+var_48]
E5A88:  MOV             R6, R1
E5A8A:  LDR             R4, [R1]
E5A8C:  LDR.W           R10, [R6,#4]!
E5A90:  CMP             R4, R10
E5A92:  BEQ.W           loc_E5C8A
E5A96:  LDR             R3, [SP,#0x60+var_34]
E5A98:  CMP             R0, R3
E5A9A:  BCS             loc_E5AB6
E5A9C:  LDRB            R1, [R4]
E5A9E:  STRB            R1, [R0]
E5AA0:  LDRD.W          R1, R2, [R4,#8]
E5AA4:  STRD.W          R1, R2, [R0,#8]
E5AA8:  ADDS            R0, #0x10
E5AAA:  STRB.W          R8, [R4]
E5AAE:  STRD.W          R8, R8, [R4,#8]
E5AB2:  STR             R0, [SP,#0x60+var_38]
E5AB4:  B               loc_E5B5C
E5AB6:  LDR             R6, [SP,#0x60+var_3C]
E5AB8:  MOVS            R1, #1
E5ABA:  SUBS            R0, R0, R6
E5ABC:  ADD.W           R1, R1, R0,ASR#4
E5AC0:  CMP.W           R1, #0x10000000
E5AC4:  BCS.W           loc_E5D14
E5AC8:  ASRS            R2, R0, #4
E5ACA:  SUBS            R0, R3, R6
E5ACC:  MOVW            R3, #0xFFF0
E5AD0:  CMP.W           R1, R0,ASR#3
E5AD4:  IT LS
E5AD6:  ASRLS           R1, R0, #3
E5AD8:  MOVT            R3, #0x7FFF
E5ADC:  CMP             R0, R3
E5ADE:  MOV             R0, #0xFFFFFFF
E5AE2:  IT CS
E5AE4:  MOVCS           R1, R0
E5AE6:  LDR             R3, [SP,#0x60+var_54]
E5AE8:  MOV             R0, R9
E5AEA:  BL              sub_E5D88
E5AEE:  LDRD.W          R0, R1, [SP,#0x60+var_2C]
E5AF2:  LDRB            R2, [R4]
E5AF4:  STRB            R2, [R1]
E5AF6:  LDRD.W          R2, R3, [R4,#8]
E5AFA:  STRD.W          R2, R3, [R1,#8]
E5AFE:  STRD.W          R8, R8, [R4,#8]
E5B02:  LDR             R3, [SP,#0x60+var_28]
E5B04:  LDRD.W          R1, R2, [SP,#0x60+var_3C]
E5B08:  ADDS            R3, #0x10
E5B0A:  STRB.W          R8, [R4]
E5B0E:  CMP             R2, R1
E5B10:  STR             R3, [SP,#0x60+var_28]
E5B12:  BEQ             loc_E5B40
E5B14:  LDRB.W          R3, [R2,#-0x10]!
E5B18:  STRB.W          R3, [R0,#-0x10]
E5B1C:  CMP             R2, R1
E5B1E:  LDRD.W          R3, R6, [R2,#8]
E5B22:  STRD.W          R3, R6, [R0,#-8]
E5B26:  STRD.W          R8, R8, [R2,#8]
E5B2A:  LDR             R0, [SP,#0x60+var_2C]
E5B2C:  STRB.W          R8, [R2]
E5B30:  SUB.W           R0, R0, #0x10
E5B34:  STR             R0, [SP,#0x60+var_2C]
E5B36:  BNE             loc_E5B14
E5B38:  LDRD.W          R2, R1, [SP,#0x60+var_3C]
E5B3C:  LDR             R3, [SP,#0x60+var_28]
E5B3E:  B               loc_E5B42
E5B40:  MOV             R2, R1
E5B42:  LDR             R6, [SP,#0x60+var_34]
E5B44:  ADD.W           R12, SP, #0x60+var_3C
E5B48:  LDR             R5, [SP,#0x60+var_24]
E5B4A:  STM.W           R12, {R0,R3,R5}
E5B4E:  MOV             R0, R9
E5B50:  STRD.W          R1, R6, [SP,#0x60+var_28]
E5B54:  STRD.W          R2, R2, [SP,#0x60+var_30]
E5B58:  BL              sub_E5E26
E5B5C:  ADDS            R4, #0x10
E5B5E:  CMP             R4, R10
E5B60:  BEQ.W           loc_E5C74
E5B64:  LDR             R0, [SP,#0x60+var_38]
E5B66:  B               loc_E5A96
E5B68:  LDR             R4, [SP,#0x60+var_48]
E5B6A:  MOV             R11, R4
E5B6C:  LDR.W           R10, [R11],#4
E5B70:  CMP             R10, R11
E5B72:  BEQ.W           loc_E5C90
E5B76:  LDR             R3, [SP,#0x60+var_34]
E5B78:  CMP             R0, R3
E5B7A:  BCS             loc_E5B98
E5B7C:  LDRB.W          R1, [R10,#0x20]
E5B80:  STRB            R1, [R0]
E5B82:  LDRD.W          R1, R2, [R10,#0x28]
E5B86:  STRD.W          R1, R2, [R0,#8]
E5B8A:  ADDS            R0, #0x10
E5B8C:  STRD.W          R8, R8, [R10,#0x28]
E5B90:  STRB.W          R8, [R10,#0x20]
E5B94:  STR             R0, [SP,#0x60+var_38]
E5B96:  B               loc_E5C40
E5B98:  LDR             R6, [SP,#0x60+var_3C]
E5B9A:  MOVS            R1, #1
E5B9C:  SUBS            R0, R0, R6
E5B9E:  ADD.W           R1, R1, R0,ASR#4
E5BA2:  CMP.W           R1, #0x10000000
E5BA6:  BCS.W           loc_E5D0E
E5BAA:  ASRS            R2, R0, #4
E5BAC:  SUBS            R0, R3, R6
E5BAE:  MOVW            R3, #0xFFF0
E5BB2:  CMP.W           R1, R0,ASR#3
E5BB6:  IT LS
E5BB8:  ASRLS           R1, R0, #3
E5BBA:  MOVT            R3, #0x7FFF
E5BBE:  CMP             R0, R3
E5BC0:  MOV             R0, #0xFFFFFFF
E5BC4:  IT CS
E5BC6:  MOVCS           R1, R0
E5BC8:  LDR             R3, [SP,#0x60+var_54]
E5BCA:  MOV             R0, R9
E5BCC:  BL              sub_E5D88
E5BD0:  LDRD.W          R0, R3, [SP,#0x60+var_2C]
E5BD4:  LDRB.W          R1, [R10,#0x20]
E5BD8:  STRB            R1, [R3]
E5BDA:  LDRD.W          R6, R5, [R10,#0x28]
E5BDE:  STRD.W          R6, R5, [R3,#8]
E5BE2:  LDR             R3, [SP,#0x60+var_28]
E5BE4:  LDRD.W          R1, R2, [SP,#0x60+var_3C]
E5BE8:  ADDS            R3, #0x10
E5BEA:  STRD.W          R8, R8, [R10,#0x28]
E5BEE:  CMP             R2, R1
E5BF0:  STRB.W          R8, [R10,#0x20]
E5BF4:  STR             R3, [SP,#0x60+var_28]
E5BF6:  BEQ             loc_E5C24
E5BF8:  LDRB.W          R3, [R2,#-0x10]!
E5BFC:  STRB.W          R3, [R0,#-0x10]
E5C00:  CMP             R2, R1
E5C02:  LDRD.W          R3, R6, [R2,#8]
E5C06:  STRD.W          R3, R6, [R0,#-8]
E5C0A:  STRD.W          R8, R8, [R2,#8]
E5C0E:  LDR             R0, [SP,#0x60+var_2C]
E5C10:  STRB.W          R8, [R2]
E5C14:  SUB.W           R0, R0, #0x10
E5C18:  STR             R0, [SP,#0x60+var_2C]
E5C1A:  BNE             loc_E5BF8
E5C1C:  LDRD.W          R2, R1, [SP,#0x60+var_3C]
E5C20:  LDR             R3, [SP,#0x60+var_28]
E5C22:  B               loc_E5C26
E5C24:  MOV             R2, R1
E5C26:  LDR             R6, [SP,#0x60+var_34]
E5C28:  ADD.W           R12, SP, #0x60+var_3C
E5C2C:  LDR             R5, [SP,#0x60+var_24]
E5C2E:  STM.W           R12, {R0,R3,R5}
E5C32:  MOV             R0, R9
E5C34:  STRD.W          R1, R6, [SP,#0x60+var_28]
E5C38:  STRD.W          R2, R2, [SP,#0x60+var_30]
E5C3C:  BL              sub_E5E26
E5C40:  LDR.W           R0, [R10,#4]
E5C44:  CBZ             R0, loc_E5C50
E5C46:  MOV             R1, R0
E5C48:  LDR             R0, [R0]
E5C4A:  CMP             R0, #0
E5C4C:  BNE             loc_E5C46
E5C4E:  B               loc_E5C6A
E5C50:  MOV             R0, R10
E5C52:  LDR.W           R1, [R0,#8]!
E5C56:  LDR             R2, [R1]
E5C58:  CMP             R2, R10
E5C5A:  BEQ             loc_E5C6A
E5C5C:  LDR             R2, [R0]
E5C5E:  MOV             R0, R2
E5C60:  LDR.W           R1, [R0,#8]!
E5C64:  LDR             R3, [R1]
E5C66:  CMP             R3, R2
E5C68:  BNE             loc_E5C5C
E5C6A:  CMP             R1, R11
E5C6C:  BEQ             loc_E5C8E
E5C6E:  LDR             R0, [SP,#0x60+var_38]
E5C70:  MOV             R10, R1
E5C72:  B               loc_E5B76
E5C74:  LDR             R1, [SP,#0x60+var_48]
E5C76:  MOV             R6, R1
E5C78:  LDR             R4, [R1]
E5C7A:  LDR.W           R0, [R6,#4]!
E5C7E:  CMP             R0, R4
E5C80:  BEQ             loc_E5C8A
E5C82:  SUBS            R0, #0x10
E5C84:  BL              sub_E3F7A
E5C88:  B               loc_E5C7E
E5C8A:  STR             R4, [R6]
E5C8C:  B               loc_E5CAA
E5C8E:  LDR             R4, [SP,#0x60+var_48]
E5C90:  MOV             R5, R4
E5C92:  MOV             R0, R4
E5C94:  LDR.W           R1, [R5,#4]!
E5C98:  BL              sub_E5E74
E5C9C:  ADD.W           R11, SP, #0x60+var_50
E5CA0:  STR.W           R8, [R5]
E5CA4:  STR             R5, [R4]
E5CA6:  STR.W           R8, [R4,#8]
E5CAA:  MOV             R0, R11
E5CAC:  BL              sub_E3F7A
E5CB0:  LDRD.W          R1, R0, [SP,#0x60+var_3C]
E5CB4:  CMP             R1, R0
E5CB6:  BNE.W           loc_E5A50
E5CBA:  ADD             R0, SP, #0x60+var_3C
E5CBC:  BL              sub_E5ECC
E5CC0:  LDRD.W          R6, R5, [SP,#0x60+var_5C]
E5CC4:  CMP             R6, #7; switch 8 cases
E5CC6:  BHI             def_E5CC8; jumptable 000E5CC8 default case, cases 3-6
E5CC8:  TBB.W           [PC,R6]; switch jump
E5CCC:  DCB 4; jump table for switch statement
E5CCD:  DCB 0xF
E5CCE:  DCB 9
E5CCF:  DCB 0x1D
E5CD0:  DCB 0x1D
E5CD1:  DCB 0x1D
E5CD2:  DCB 0x1D
E5CD3:  DCB 0x13
E5CD4:  LDR             R0, [R5]; jumptable 000E5CC8 case 0
E5CD6:  LDR             R1, [R0,#4]
E5CD8:  BL              sub_E5E74
E5CDC:  B               loc_E5D00
E5CDE:  LDR             R0, [R5]; jumptable 000E5CC8 case 2
E5CE0:  LDRB            R1, [R0]
E5CE2:  LSLS            R1, R1, #0x1F
E5CE4:  BEQ             loc_E5D02
E5CE6:  LDR             R0, [R0,#8]
E5CE8:  B               loc_E5CFC
E5CEA:  LDR             R0, [R5]; jumptable 000E5CC8 case 1
E5CEC:  BL              sub_E5ECC
E5CF0:  B               loc_E5D00
E5CF2:  LDR             R0, [R5]; jumptable 000E5CC8 case 7
E5CF4:  LDR             R1, [R0]
E5CF6:  CBZ             R1, loc_E5D02
E5CF8:  STR             R1, [R0,#4]
E5CFA:  MOV             R0, R1; void *
E5CFC:  BLX             j__ZdlPv; operator delete(void *)
E5D00:  LDR             R0, [R5]; void *
E5D02:  BLX             j__ZdlPv; operator delete(void *)
E5D06:  ADD             SP, SP, #0x44 ; 'D'; jumptable 000E5CC8 default case, cases 3-6
E5D08:  POP.W           {R8-R11}
E5D0C:  POP             {R4-R7,PC}
E5D0E:  ADD             R0, SP, #0x60+var_3C
E5D10:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
E5D14:  ADD             R0, SP, #0x60+var_3C
E5D16:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
E5D1A:  ADD             R0, SP, #0x60+var_3C
E5D1C:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
E5D20:  ADD             R0, SP, #0x60+var_3C
E5D22:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
