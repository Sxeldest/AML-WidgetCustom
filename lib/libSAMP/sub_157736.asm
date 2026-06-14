; =========================================================
; Game Engine Function: sub_157736
; Address            : 0x157736 - 0x157AD4
; =========================================================

157736:  PUSH            {R4-R7,LR}
157738:  ADD             R7, SP, #0xC
15773A:  PUSH.W          {R8-R11}
15773E:  SUB             SP, SP, #0x44
157740:  STR             R2, [SP,#0x60+var_60]
157742:  MOV.W           LR, #1
157746:  LDR             R2, [R7,#arg_28]
157748:  MOV             R9, R1
15774A:  STR             R0, [SP,#0x60+var_20]
15774C:  MOV             R3, #0xFFFFFFE0
157750:  ADD.W           R5, R2, #0x20 ; ' '
157754:  LDRD.W          R12, R0, [R7,#arg_20]
157758:  SUBS            R3, R3, R2
15775A:  LSR.W           R4, LR, R5
15775E:  LSL.W           R1, R0, R5
157762:  RSB.W           R5, R2, #0
157766:  IT PL
157768:  LSLPL.W         R4, LR, R3
15776C:  CMP             R3, #0
15776E:  LSR.W           R2, R12, R5
157772:  ORR.W           R6, R2, R1
157776:  LDR             R2, [R7,#arg_10]
157778:  IT PL
15777A:  LSRPL.W         R6, R0, R3
15777E:  LSL.W           R3, LR, R5
157782:  MOV             R8, R5
157784:  IT PL
157786:  MOVPL           R3, #0
157788:  SUBS.W          R11, R12, R2
15778C:  LDR             R2, [R7,#arg_14]
15778E:  STR             R3, [SP,#0x60+var_5C]
157790:  SBC.W           R2, R0, R2
157794:  SUBS            R3, #1
157796:  AND.W           R1, R3, R12
15779A:  STR             R2, [SP,#0x60+var_28]
15779C:  STR             R1, [SP,#0x60+var_4C]
15779E:  SBC.W           R5, R4, #0
1577A2:  LDR             R2, [R7,#arg_0]
1577A4:  LDR             R1, [R7,#arg_4]
1577A6:  SUBS.W          LR, R12, R2
1577AA:  STR             R4, [SP,#0x60+var_58]
1577AC:  AND.W           R2, R5, R0
1577B0:  SBC.W           R4, R0, R1
1577B4:  MOVW            R0, #0xC9FF
1577B8:  STR             R2, [SP,#0x60+var_48]
1577BA:  MOVT            R0, #0x3B9A
1577BE:  CMP             R6, R0
1577C0:  STRD.W          R5, R3, [SP,#0x60+var_54]
1577C4:  STR             R6, [SP,#0x60+var_30]
1577C6:  BLS             loc_1577D4
1577C8:  MOVS            R1, #0xA
1577CA:  ADDS            R0, #1
1577CC:  STR             R1, [SP,#0x60+var_2C]
1577CE:  MOV             R12, R8
1577D0:  STR             R0, [SP,#0x60+var_3C]
1577D2:  B               loc_157828
1577D4:  MOVW            R0, #0xE0FF
1577D8:  MOV             R12, R8
1577DA:  MOVT            R0, #0x5F5
1577DE:  CMP             R6, R0
1577E0:  BLS             loc_1577EA
1577E2:  ADDS            R0, #1
1577E4:  STR             R0, [SP,#0x60+var_3C]
1577E6:  MOVS            R0, #9
1577E8:  B               loc_157826
1577EA:  MOV             R0, #0x98967F
1577F2:  CMP             R6, R0
1577F4:  BLS             loc_1577FE
1577F6:  ADDS            R0, #1
1577F8:  STR             R0, [SP,#0x60+var_3C]
1577FA:  MOVS            R0, #8
1577FC:  B               loc_157826
1577FE:  MOV             R0, #0xF423F
157806:  CMP             R6, R0
157808:  BLS             loc_157812
15780A:  ADDS            R0, #1
15780C:  STR             R0, [SP,#0x60+var_3C]
15780E:  MOVS            R0, #7
157810:  B               loc_157826
157812:  MOV             R0, #0x1869F
15781A:  CMP             R6, R0
15781C:  BLS.W           loc_157A92
157820:  ADDS            R0, #1
157822:  STR             R0, [SP,#0x60+var_3C]
157824:  MOVS            R0, #6
157826:  STR             R0, [SP,#0x60+var_2C]
157828:  STR.W           LR, [SP,#0x60+var_24]
15782C:  STRD.W          R12, R9, [SP,#0x60+var_38]
157830:  LDR.W           R8, [SP,#0x60+var_2C]
157834:  CMP.W           R8, #0
157838:  BLE.W           loc_15797A
15783C:  LDR             R5, [SP,#0x60+var_30]
15783E:  MOV             R6, R12
157840:  LDR.W           R10, [SP,#0x60+var_3C]
157844:  MOV             R0, R5
157846:  MOV             R1, R10
157848:  BLX             sub_220A6C
15784C:  LDR.W           R1, [R9]
157850:  MLS.W           R5, R0, R10, R5
157854:  ADDS            R0, #0x30 ; '0'
157856:  ADDS            R2, R1, #1
157858:  STR.W           R2, [R9]
15785C:  LDR             R2, [SP,#0x60+var_20]
15785E:  MOV             R12, R6
157860:  LDR.W           LR, [SP,#0x60+var_24]
157864:  SUB.W           R8, R8, #1
157868:  STRB            R0, [R2,R1]
15786A:  RSB.W           R2, R6, #0x20 ; ' '
15786E:  LSL.W           R3, R5, R6
157872:  LSR.W           R1, R5, R2
157876:  SUBS.W          R0, R6, #0x20 ; ' '
15787A:  IT PL
15787C:  LSLPL.W         R1, R5, R0
157880:  IT PL
157882:  MOVPL           R3, #0
157884:  LDR             R6, [SP,#0x60+var_4C]
157886:  STRD.W          R5, R8, [SP,#0x60+var_30]
15788A:  ADDS            R6, R6, R3
15788C:  LDR             R3, [SP,#0x60+var_48]
15788E:  ADCS            R3, R1
157890:  SUBS.W          R1, LR, R6
157894:  SBCS.W          R1, R4, R3
157898:  BCS             loc_1578AC
15789A:  MOV             R0, #0xCCCCCCCD
1578A2:  UMULL.W         R0, R1, R10, R0
1578A6:  LSRS            R0, R1, #3
1578A8:  STR             R0, [SP,#0x60+var_3C]
1578AA:  B               loc_15796C
1578AC:  STR             R3, [SP,#0x60+var_40]
1578AE:  CMP             R0, #0
1578B0:  LDR             R3, [SP,#0x60+var_60]
1578B2:  LDR             R1, [R3]
1578B4:  ADD             R1, R8
1578B6:  STR             R1, [R3]
1578B8:  LSR.W           R8, R10, R2
1578BC:  LDR             R3, [SP,#0x60+var_40]
1578BE:  IT PL
1578C0:  LSLPL.W         R8, R10, R0
1578C4:  SUBS.W          R1, LR, R6
1578C8:  MOV             R2, R6
1578CA:  SBC.W           R6, R4, R3
1578CE:  LSL.W           R10, R10, R12
1578D2:  CMP             R0, #0
1578D4:  IT PL
1578D6:  MOVPL.W         R10, #0
1578DA:  SUBS.W          R0, R2, R11
1578DE:  LDR             R0, [SP,#0x60+var_28]
1578E0:  STR             R2, [SP,#0x60+var_44]
1578E2:  SBCS.W          R0, R3, R0
1578E6:  BCS.W           loc_157A8A
1578EA:  SUBS.W          R0, R1, R10
1578EE:  SBCS.W          R0, R6, R8
1578F2:  BCC.W           loc_157A8A
1578F6:  LDR.W           R0, [R9]
1578FA:  LDR             R6, [SP,#0x60+var_44]
1578FC:  SUBS            R5, R0, #1
1578FE:  MOV             R0, R3
157900:  ADDS.W          R1, R6, R10
157904:  LDR             R3, [SP,#0x60+var_28]
157906:  ADC.W           R12, R0, R8
15790A:  SUBS.W          LR, R1, R11
15790E:  MOV             R9, R4
157910:  SBCS.W          R4, R12, R3
157914:  BCC             loc_15792E
157916:  SUBS.W          R6, R11, R6
15791A:  SBC.W           R0, R3, R0
15791E:  SUBS.W          R4, R1, R11
157922:  SBC.W           R2, R12, R3
157926:  SUBS            R6, R4, R6
157928:  SBCS.W          R0, R2, R0
15792C:  BCS             loc_15795E
15792E:  LDR             R2, [SP,#0x60+var_20]
157930:  MOV             R4, R9
157932:  LDR.W           LR, [SP,#0x60+var_24]
157936:  LDRB            R0, [R2,R5]
157938:  SUBS            R0, #1
15793A:  STRB            R0, [R2,R5]
15793C:  SUBS.W          R0, LR, R1
157940:  SBC.W           R6, R9, R12
157944:  SUBS.W          R2, R1, R11
157948:  SBCS.W          R2, R12, R3
15794C:  BCS             loc_157964
15794E:  SUBS.W          R0, R0, R10
157952:  SBCS.W          R0, R6, R8
157956:  MOV             R6, R1
157958:  MOV             R0, R12
15795A:  BCS             loc_157900
15795C:  B               loc_157964
15795E:  LDR.W           LR, [SP,#0x60+var_24]
157962:  MOV             R4, R9
157964:  LDRD.W          R12, R9, [SP,#0x60+var_38]
157968:  LDRD.W          R6, R3, [SP,#0x60+var_44]
15796C:  SUBS.W          R0, LR, R6
157970:  SBCS.W          R0, R4, R3
157974:  BCC.W           loc_157830
157978:  B               loc_157A8A
15797A:  MOV             R10, R11
15797C:  LDR.W           R11, [SP,#0x60+var_28]
157980:  LDRD.W          R3, R12, [SP,#0x60+var_4C]
157984:  MOVS            R0, #0
157986:  MOV.W           R8, #0xA
15798A:  LDR.W           R6, [R9]
15798E:  UMULL.W         R2, R3, R3, R8
157992:  LDR             R1, [SP,#0x60+var_38]
157994:  ADDS            R5, R6, #1
157996:  STR.W           R5, [R9]
15799A:  ADD.W           R5, R12, R12,LSL#2
15799E:  MOV             R9, R4
1579A0:  RSB.W           R4, R1, #0x20 ; ' '
1579A4:  ADD.W           R3, R3, R5,LSL#1
1579A8:  UMULL.W         LR, R12, LR, R8
1579AC:  LSR.W           R5, R2, R1
1579B0:  LSL.W           R4, R3, R4
1579B4:  ORRS            R5, R4
1579B6:  SUBS            R1, #0x20 ; ' '
1579B8:  IT PL
1579BA:  LSRPL.W         R5, R3, R1
1579BE:  ADD.W           R1, R5, #0x30 ; '0'
1579C2:  LDR             R4, [SP,#0x60+var_20]
1579C4:  UMULL.W         R10, R5, R10, R8
1579C8:  SUBS            R0, #1
1579CA:  STRB            R1, [R4,R6]
1579CC:  ADD.W           R1, R11, R11,LSL#2
1579D0:  ADD.W           R11, R5, R1,LSL#1
1579D4:  ADD.W           R1, R9, R9,LSL#2
1579D8:  LDR.W           R9, [SP,#0x60+var_34]
1579DC:  ADD.W           R4, R12, R1,LSL#1
1579E0:  LDR             R1, [SP,#0x60+var_54]
1579E2:  AND.W           R12, R3, R1
1579E6:  LDR             R1, [SP,#0x60+var_50]
1579E8:  AND.W           R3, R2, R1
1579EC:  SUBS.W          R1, LR, R3
1579F0:  SBCS.W          R1, R4, R12
1579F4:  BCC             loc_15798A
1579F6:  LDR             R2, [SP,#0x60+var_60]
1579F8:  LDR             R1, [R2]
1579FA:  ADD             R0, R1
1579FC:  STR             R0, [R2]
1579FE:  SUBS.W          R0, LR, R3
157A02:  SBC.W           R1, R4, R12
157A06:  SUBS.W          R2, R3, R10
157A0A:  SBCS.W          R2, R12, R11
157A0E:  BCS             loc_157A8A
157A10:  LDR             R2, [SP,#0x60+var_5C]
157A12:  SUBS            R0, R0, R2
157A14:  LDR             R0, [SP,#0x60+var_58]
157A16:  SBCS.W          R0, R1, R0
157A1A:  BCC             loc_157A8A
157A1C:  LDR.W           R0, [R9]
157A20:  MOV             R5, R12
157A22:  MOV             R6, R3
157A24:  MOV             R8, R11
157A26:  SUB.W           R12, R0, #1
157A2A:  LDR             R1, [SP,#0x60+var_5C]
157A2C:  LDR             R2, [SP,#0x60+var_58]
157A2E:  ADDS            R1, R1, R6
157A30:  ADCS            R2, R5
157A32:  SUBS.W          R3, R1, R10
157A36:  SBCS.W          R3, R2, R8
157A3A:  BCC             loc_157A5C
157A3C:  SUBS.W          R9, R10, R6
157A40:  SBC.W           R6, R8, R5
157A44:  MOV             R3, R8
157A46:  SUBS.W          R5, R1, R10
157A4A:  MOV             R0, R4
157A4C:  SBC.W           R4, R2, R8
157A50:  SUBS.W          R3, R5, R9
157A54:  SBCS.W          R3, R4, R6
157A58:  MOV             R4, R0
157A5A:  BCS             loc_157A8A
157A5C:  LDR             R6, [SP,#0x60+var_20]
157A5E:  LDRB.W          R3, [R6,R12]
157A62:  SUBS            R3, #1
157A64:  STRB.W          R3, [R6,R12]
157A68:  SUBS.W          R3, LR, R1
157A6C:  SBC.W           R6, R4, R2
157A70:  SUBS.W          R5, R1, R10
157A74:  SBCS.W          R5, R2, R8
157A78:  BCS             loc_157A8A
157A7A:  LDR             R5, [SP,#0x60+var_5C]
157A7C:  SUBS            R3, R3, R5
157A7E:  MOV             R5, R2
157A80:  LDR             R3, [SP,#0x60+var_58]
157A82:  SBCS.W          R3, R6, R3
157A86:  MOV             R6, R1
157A88:  BCS             loc_157A2A
157A8A:  ADD             SP, SP, #0x44 ; 'D'
157A8C:  POP.W           {R8-R11}
157A90:  POP             {R4-R7,PC}
157A92:  MOVW            R0, #0x270F
157A96:  CMP             R6, R0
157A98:  BLS             loc_157AA4
157A9A:  MOVS            R0, #5
157A9C:  STR             R0, [SP,#0x60+var_2C]
157A9E:  MOVW            R0, #0x2710
157AA2:  B               loc_1577D0
157AA4:  LSRS            R0, R6, #3
157AA6:  CMP             R0, #0x7C ; '|'
157AA8:  BLS             loc_157AB4
157AAA:  MOVS            R0, #4
157AAC:  STR             R0, [SP,#0x60+var_2C]
157AAE:  MOV.W           R0, #0x3E8
157AB2:  B               loc_1577D0
157AB4:  CMP             R6, #0x63 ; 'c'
157AB6:  BLS             loc_157AC0
157AB8:  MOVS            R0, #3
157ABA:  STR             R0, [SP,#0x60+var_2C]
157ABC:  MOVS            R0, #0x64 ; 'd'
157ABE:  B               loc_1577D0
157AC0:  MOVS            R1, #1
157AC2:  MOVS            R0, #1
157AC4:  CMP             R6, #9
157AC6:  IT HI
157AC8:  MOVHI           R0, #2
157ACA:  STR             R0, [SP,#0x60+var_2C]
157ACC:  IT HI
157ACE:  MOVHI           R1, #0xA
157AD0:  STR             R1, [SP,#0x60+var_3C]
157AD2:  B               loc_157828
