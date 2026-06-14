; =========================================================
; Game Engine Function: silk_VAD_GetSA_Q8_c
; Address            : 0xC96BC - 0xCA12A
; =========================================================

C96BC:  PUSH            {R4-R7,LR}
C96BE:  ADD             R7, SP, #0xC
C96C0:  PUSH.W          {R8-R11}
C96C4:  SUB             SP, SP, #0x54
C96C6:  MOV             R11, R0
C96C8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xC96D6)
C96CC:  MOVW            R8, #0x11E8
C96D0:  MOVS            R3, #7
C96D2:  ADD             R0, PC; __stack_chk_guard_ptr
C96D4:  LDR             R0, [R0]; __stack_chk_guard
C96D6:  LDR             R0, [R0]
C96D8:  STR.W           R0, [R7,#var_24]
C96DC:  MOVS            R0, #0
C96DE:  LDR.W           R6, [R11,R8]
C96E2:  STR.W           R0, [R7,#var_54]
C96E6:  MOV.W           R10, R6,ASR#3
C96EA:  ADD.W           R5, R10, R6,ASR#2
C96EE:  ADD.W           R4, R5, R6,ASR#3
C96F2:  ADD.W           R0, R4, R6,ASR#2
C96F6:  ADD.W           R2, R0, R6,ASR#1
C96FA:  STRD.W          R5, R4, [R7,#var_50]
C96FE:  STR.W           R0, [R7,#var_48]
C9702:  ADD.W           R2, R3, R2,LSL#1
C9706:  BIC.W           R2, R2, #7
C970A:  SUB.W           R9, SP, R2
C970E:  MOV             SP, R9
C9710:  SUB             SP, SP, #8
C9712:  ADD.W           R2, R11, #0x24 ; '$'
C9716:  ADD.W           R3, R9, R0,LSL#1
C971A:  MOV             R0, R1
C971C:  STR             R6, [SP,#0x78+var_78]
C971E:  MOV             R1, R2
C9720:  MOV             R2, R9
C9722:  BLX             j_silk_ana_filt_bank_1
C9726:  ADD             SP, SP, #8
C9728:  ASRS            R0, R6, #1
C972A:  SUB             SP, SP, #8
C972C:  ADD.W           R3, R9, R4,LSL#1
C9730:  ADD.W           R1, R11, #0x2C ; ','
C9734:  STR             R0, [SP,#0x78+var_78]
C9736:  MOV             R0, R9
C9738:  MOV             R2, R9
C973A:  BLX             j_silk_ana_filt_bank_1
C973E:  ADD             SP, SP, #8
C9740:  ASRS            R0, R6, #2
C9742:  SUB             SP, SP, #8
C9744:  ADD.W           R3, R9, R5,LSL#1
C9748:  ADD.W           R1, R11, #0x34 ; '4'
C974C:  STR             R0, [SP,#0x78+var_78]
C974E:  MOV             R0, R9
C9750:  MOV             R2, R9
C9752:  BLX             j_silk_ana_filt_bank_1
C9756:  ADD             SP, SP, #8
C9758:  ADD.W           R1, R9, R10,LSL#1
C975C:  ADD.W           LR, R11, R8
C9760:  CMP.W           R10, #2
C9764:  LDRSH.W         R0, [R1,#-2]
C9768:  MOV.W           R0, R0,ASR#1
C976C:  STRH.W          R0, [R1,#-2]
C9770:  BLT             loc_C9792
C9772:  SUBS            R1, #4
C9774:  SUB.W           R2, R10, #2
C9778:  MOV             R3, R0
C977A:  LDRSH.W         R6, [R1]
C977E:  SUB.W           R3, R3, R6,LSR#1
C9782:  STRH            R3, [R1,#2]
C9784:  LSRS            R3, R6, #1
C9786:  ADDS            R6, R2, #1
C9788:  STRH            R3, [R1]
C978A:  SUBS            R1, #2
C978C:  SUBS            R2, #1
C978E:  CMP             R6, #1
C9790:  BGT             loc_C977A
C9792:  LDRH.W          R1, [R11,#0x5C]
C9796:  LDRH.W          R2, [R9]
C979A:  SUBS            R1, R2, R1
C979C:  STRH.W          R1, [R9]
C97A0:  STRH.W          R0, [R11,#0x5C]
C97A4:  LDR.W           R0, [LR]
C97A8:  LDR.W           R2, [R11,#0x3C]
C97AC:  STR.W           R2, [R7,#var_34]
C97B0:  ASRS            R5, R0, #5
C97B2:  CMP             R5, #1
C97B4:  BLT             loc_C9858
C97B6:  LDR.W           R1, [R7,#var_54]
C97BA:  MOVS            R3, #0
C97BC:  MOV             R0, R5
C97BE:  ADD.W           R6, R9, R1,LSL#1
C97C2:  LDRSH.W         R4, [R6],#2
C97C6:  SUBS            R0, #1
C97C8:  MOV.W           R4, R4,ASR#3
C97CC:  SMLABB.W        R3, R4, R4, R3
C97D0:  BNE             loc_C97C2
C97D2:  ADDS            R0, R2, R3
C97D4:  MOV             R2, #0x7FFFFFFF
C97D8:  CMP             R0, R2
C97DA:  MOV.W           R3, #0
C97DE:  IT CC
C97E0:  MOVCC           R2, R0
C97E2:  ADDS            R0, R1, R5
C97E4:  ADD.W           R6, R9, R0,LSL#1
C97E8:  MOV             R0, R5
C97EA:  LDRSH.W         R4, [R6],#2
C97EE:  SUBS            R0, #1
C97F0:  MOV.W           R4, R4,ASR#3
C97F4:  SMLABB.W        R3, R4, R4, R3
C97F8:  BNE             loc_C97EA
C97FA:  ADDS            R0, R2, R3
C97FC:  MOV             R2, #0x7FFFFFFF
C9800:  CMP             R0, R2
C9802:  MOV.W           R3, #0
C9806:  IT CC
C9808:  MOVCC           R2, R0
C980A:  LSLS            R0, R5, #2
C980C:  ADD.W           R0, R0, R1,LSL#1
C9810:  ADD.W           R6, R9, R0
C9814:  MOV             R0, R5
C9816:  LDRSH.W         R4, [R6],#2
C981A:  SUBS            R0, #1
C981C:  MOV.W           R4, R4,ASR#3
C9820:  SMLABB.W        R3, R4, R4, R3
C9824:  BNE             loc_C9816
C9826:  ADDS            R0, R2, R3
C9828:  MOV             R2, #0x7FFFFFFF
C982C:  CMP             R0, R2
C982E:  IT CC
C9830:  MOVCC           R2, R0
C9832:  ADD.W           R0, R5, R5,LSL#1
C9836:  LSLS            R0, R0, #1
C9838:  ADD.W           R0, R0, R1,LSL#1
C983C:  MOVS            R1, #0
C983E:  ADD.W           R3, R9, R0
C9842:  LDRSH.W         R0, [R3],#2
C9846:  SUBS            R5, #1
C9848:  MOV.W           R0, R0,ASR#3
C984C:  SMLABB.W        R1, R0, R0, R1
C9850:  BNE             loc_C9842
C9852:  ADD.W           R2, R2, R1,ASR#1
C9856:  B               loc_C985A
C9858:  MOVS            R1, #0
C985A:  MOV             R0, #0x7FFFFFFF
C985E:  CMP             R2, R0
C9860:  IT CS
C9862:  MOVCS           R2, R0
C9864:  STR.W           R2, [R7,#var_34]
C9868:  STR.W           R1, [R11,#0x3C]
C986C:  LDR.W           R1, [LR]
C9870:  LDR.W           R3, [R11,#0x40]
C9874:  STR.W           R3, [R7,#var_30]
C9878:  ASRS            R4, R1, #5
C987A:  CMP             R4, #0
C987C:  BLE             loc_C9924
C987E:  LDR.W           R12, [R7,#var_50]
C9882:  MOVS            R6, #0
C9884:  MOV             R1, R4
C9886:  ADD.W           R5, R9, R12,LSL#1
C988A:  LDRSH.W         R2, [R5],#2
C988E:  SUBS            R1, #1
C9890:  MOV.W           R2, R2,ASR#3
C9894:  SMLABB.W        R6, R2, R2, R6
C9898:  BNE             loc_C988A
C989A:  ADDS            R1, R3, R6
C989C:  MOV             R3, #0x7FFFFFFF
C98A0:  CMP             R1, R3
C98A2:  MOV.W           R6, #0
C98A6:  IT CC
C98A8:  MOVCC           R3, R1
C98AA:  ADD.W           R1, R12, R4
C98AE:  ADD.W           R5, R9, R1,LSL#1
C98B2:  MOV             R1, R4
C98B4:  LDRSH.W         R2, [R5],#2
C98B8:  SUBS            R1, #1
C98BA:  MOV.W           R2, R2,ASR#3
C98BE:  SMLABB.W        R6, R2, R2, R6
C98C2:  BNE             loc_C98B4
C98C4:  ADDS            R1, R3, R6
C98C6:  MOV             R3, #0x7FFFFFFF
C98CA:  CMP             R1, R3
C98CC:  MOV.W           R6, #0
C98D0:  IT CC
C98D2:  MOVCC           R3, R1
C98D4:  LSLS            R1, R4, #2
C98D6:  ADD.W           R1, R1, R12,LSL#1
C98DA:  ADD.W           R5, R9, R1
C98DE:  MOV             R1, R4
C98E0:  LDRSH.W         R2, [R5],#2
C98E4:  SUBS            R1, #1
C98E6:  MOV.W           R2, R2,ASR#3
C98EA:  SMLABB.W        R6, R2, R2, R6
C98EE:  BNE             loc_C98E0
C98F0:  ADDS            R1, R3, R6
C98F2:  MOV             R3, #0x7FFFFFFF
C98F6:  CMP             R1, R3
C98F8:  MOV.W           R2, #0
C98FC:  IT CC
C98FE:  MOVCC           R3, R1
C9900:  ADD.W           R1, R4, R4,LSL#1
C9904:  LSLS            R1, R1, #1
C9906:  ADD.W           R1, R1, R12,LSL#1
C990A:  ADD.W           R6, R9, R1
C990E:  LDRSH.W         R1, [R6],#2
C9912:  SUBS            R4, #1
C9914:  MOV.W           R1, R1,ASR#3
C9918:  SMLABB.W        R2, R1, R1, R2
C991C:  BNE             loc_C990E
C991E:  ADD.W           R3, R3, R2,ASR#1
C9922:  B               loc_C9926
C9924:  MOVS            R2, #0
C9926:  CMP             R3, R0
C9928:  IT CC
C992A:  MOVCC           R0, R3
C992C:  STR.W           R0, [R7,#var_30]
C9930:  STR.W           R2, [R11,#0x40]
C9934:  LDR.W           R0, [LR]
C9938:  LDR.W           R2, [R11,#0x44]
C993C:  STR.W           R2, [R7,#var_2C]
C9940:  ASRS            R5, R0, #4
C9942:  CMP             R5, #1
C9944:  BLT             loc_C99E8
C9946:  LDR.W           R1, [R7,#var_4C]
C994A:  MOVS            R3, #0
C994C:  MOV             R0, R5
C994E:  ADD.W           R6, R9, R1,LSL#1
C9952:  LDRSH.W         R4, [R6],#2
C9956:  SUBS            R0, #1
C9958:  MOV.W           R4, R4,ASR#3
C995C:  SMLABB.W        R3, R4, R4, R3
C9960:  BNE             loc_C9952
C9962:  ADDS            R0, R2, R3
C9964:  MOV             R2, #0x7FFFFFFF
C9968:  CMP             R0, R2
C996A:  MOV.W           R3, #0
C996E:  IT CC
C9970:  MOVCC           R2, R0
C9972:  ADDS            R0, R1, R5
C9974:  ADD.W           R6, R9, R0,LSL#1
C9978:  MOV             R0, R5
C997A:  LDRSH.W         R4, [R6],#2
C997E:  SUBS            R0, #1
C9980:  MOV.W           R4, R4,ASR#3
C9984:  SMLABB.W        R3, R4, R4, R3
C9988:  BNE             loc_C997A
C998A:  ADDS            R0, R2, R3
C998C:  MOV             R2, #0x7FFFFFFF
C9990:  CMP             R0, R2
C9992:  MOV.W           R3, #0
C9996:  IT CC
C9998:  MOVCC           R2, R0
C999A:  LSLS            R0, R5, #2
C999C:  ADD.W           R0, R0, R1,LSL#1
C99A0:  ADD.W           R6, R9, R0
C99A4:  MOV             R0, R5
C99A6:  LDRSH.W         R4, [R6],#2
C99AA:  SUBS            R0, #1
C99AC:  MOV.W           R4, R4,ASR#3
C99B0:  SMLABB.W        R3, R4, R4, R3
C99B4:  BNE             loc_C99A6
C99B6:  ADDS            R0, R2, R3
C99B8:  MOV             R2, #0x7FFFFFFF
C99BC:  CMP             R0, R2
C99BE:  IT CC
C99C0:  MOVCC           R2, R0
C99C2:  ADD.W           R0, R5, R5,LSL#1
C99C6:  LSLS            R0, R0, #1
C99C8:  ADD.W           R0, R0, R1,LSL#1
C99CC:  MOVS            R1, #0
C99CE:  ADD.W           R3, R9, R0
C99D2:  LDRSH.W         R0, [R3],#2
C99D6:  SUBS            R5, #1
C99D8:  MOV.W           R0, R0,ASR#3
C99DC:  SMLABB.W        R1, R0, R0, R1
C99E0:  BNE             loc_C99D2
C99E2:  ADD.W           R2, R2, R1,ASR#1
C99E6:  B               loc_C99EA
C99E8:  MOVS            R1, #0
C99EA:  MOV             R0, #0x7FFFFFFF
C99EE:  CMP             R2, R0
C99F0:  IT CS
C99F2:  MOVCS           R2, R0
C99F4:  STR.W           R2, [R7,#var_2C]
C99F8:  STR.W           R1, [R11,#0x44]
C99FC:  LDR.W           R1, [LR]
C9A00:  LDR.W           R3, [R11,#0x48]
C9A04:  STR.W           R3, [R7,#var_28]
C9A08:  ASRS            R4, R1, #3
C9A0A:  CMP             R4, #1
C9A0C:  BLT             loc_C9AB4
C9A0E:  LDR.W           R12, [R7,#var_48]
C9A12:  MOVS            R6, #0
C9A14:  MOV             R1, R4
C9A16:  ADD.W           R5, R9, R12,LSL#1
C9A1A:  LDRSH.W         R2, [R5],#2
C9A1E:  SUBS            R1, #1
C9A20:  MOV.W           R2, R2,ASR#3
C9A24:  SMLABB.W        R6, R2, R2, R6
C9A28:  BNE             loc_C9A1A
C9A2A:  ADDS            R1, R3, R6
C9A2C:  MOV             R3, #0x7FFFFFFF
C9A30:  CMP             R1, R3
C9A32:  MOV.W           R6, #0
C9A36:  IT CC
C9A38:  MOVCC           R3, R1
C9A3A:  ADD.W           R1, R12, R4
C9A3E:  ADD.W           R5, R9, R1,LSL#1
C9A42:  MOV             R1, R4
C9A44:  LDRSH.W         R2, [R5],#2
C9A48:  SUBS            R1, #1
C9A4A:  MOV.W           R2, R2,ASR#3
C9A4E:  SMLABB.W        R6, R2, R2, R6
C9A52:  BNE             loc_C9A44
C9A54:  ADDS            R1, R3, R6
C9A56:  MOV             R3, #0x7FFFFFFF
C9A5A:  CMP             R1, R3
C9A5C:  MOV.W           R6, #0
C9A60:  IT CC
C9A62:  MOVCC           R3, R1
C9A64:  LSLS            R1, R4, #2
C9A66:  ADD.W           R1, R1, R12,LSL#1
C9A6A:  ADD.W           R5, R9, R1
C9A6E:  MOV             R1, R4
C9A70:  LDRSH.W         R2, [R5],#2
C9A74:  SUBS            R1, #1
C9A76:  MOV.W           R2, R2,ASR#3
C9A7A:  SMLABB.W        R6, R2, R2, R6
C9A7E:  BNE             loc_C9A70
C9A80:  ADDS            R1, R3, R6
C9A82:  MOV             R3, #0x7FFFFFFF
C9A86:  CMP             R1, R3
C9A88:  MOV.W           R2, #0
C9A8C:  IT CC
C9A8E:  MOVCC           R3, R1
C9A90:  ADD.W           R1, R4, R4,LSL#1
C9A94:  LSLS            R1, R1, #1
C9A96:  ADD.W           R1, R1, R12,LSL#1
C9A9A:  ADD.W           R6, R9, R1
C9A9E:  LDRSH.W         R1, [R6],#2
C9AA2:  SUBS            R4, #1
C9AA4:  MOV.W           R1, R1,ASR#3
C9AA8:  SMLABB.W        R2, R1, R1, R2
C9AAC:  BNE             loc_C9A9E
C9AAE:  ADD.W           R3, R3, R2,ASR#1
C9AB2:  B               loc_C9AB6
C9AB4:  MOVS            R2, #0
C9AB6:  CMP             R3, R0
C9AB8:  IT CC
C9ABA:  MOVCC           R0, R3
C9ABC:  STR.W           R0, [R7,#var_28]
C9AC0:  STR.W           R2, [R11,#0x48]
C9AC4:  LDR.W           R0, [R11,#0x90]
C9AC8:  STR.W           LR, [R7,#var_60]
C9ACC:  CMP.W           R0, #0x3E8
C9AD0:  BGE             loc_C9AEA
C9AD2:  ADDS            R1, R0, #1
C9AD4:  STR.W           R1, [R11,#0x90]
C9AD8:  MOVS            R1, #1
C9ADA:  ADD.W           R1, R1, R0,ASR#4
C9ADE:  MOVW            R0, #0x7FFF
C9AE2:  BLX             sub_108848
C9AE6:  MOV             R9, R0
C9AE8:  B               loc_C9AEE
C9AEA:  MOV.W           R9, #0
C9AEE:  LDR.W           R1, [R7,#var_34]
C9AF2:  MOV             R8, #0x7FFFFFFF
C9AF6:  LDR.W           R0, [R11,#0x80]
C9AFA:  LDR.W           R4, [R11,#0x60]
C9AFE:  ADDS            R6, R0, R1
C9B00:  STR.W           R1, [R7,#var_5C]
C9B04:  CMP             R6, R8
C9B06:  MOV             R0, #0x7FFFFFFF
C9B0A:  IT CS
C9B0C:  MOVCS           R6, R8
C9B0E:  MOV             R1, R6
C9B10:  BLX             sub_108874
C9B14:  CMP.W           R6, R4,LSL#3
C9B18:  BLE             loc_C9B1E
C9B1A:  MOVS            R1, #0x80
C9B1C:  B               loc_C9B4C
C9B1E:  CMP             R6, R4
C9B20:  BGE             loc_C9B28
C9B22:  MOV.W           R1, #0x400
C9B26:  B               loc_C9B4C
C9B28:  MOVS            R1, #1
C9B2A:  SXTH            R2, R4
C9B2C:  ADD.W           R1, R1, R4,ASR#15
C9B30:  UXTH            R3, R0
C9B32:  MULS            R3, R2
C9B34:  LSRS            R6, R0, #0x10
C9B36:  ASRS            R1, R1, #1
C9B38:  MULS            R1, R0
C9B3A:  MLA.W           R1, R6, R2, R1
C9B3E:  ADD.W           R1, R1, R3,ASR#16
C9B42:  ASRS            R2, R1, #0x10
C9B44:  UBFX.W          R1, R1, #5, #0xB
C9B48:  ORR.W           R1, R1, R2,LSL#11
C9B4C:  LDR.W           R2, [R11,#0x70]
C9B50:  CMP             R1, R9
C9B52:  LDR.W           R10, [R11,#0x64]
C9B56:  SUB.W           R0, R0, R2
C9B5A:  LDR.W           R4, [R11,#0x84]
C9B5E:  IT LE
C9B60:  MOVLE           R1, R9
C9B62:  UXTH            R6, R0
C9B64:  SXTH            R3, R1
C9B66:  MULS            R3, R6
C9B68:  SMLABT.W        R0, R1, R0, R2
C9B6C:  ADD.W           R1, R0, R3,ASR#16
C9B70:  MOV             R0, #0x7FFFFFFF
C9B74:  STR.W           R1, [R11,#0x70]
C9B78:  BLX             sub_108848
C9B7C:  MOV             R6, R0
C9B7E:  MOV             R5, #0xFFFFFF
C9B82:  CMP             R6, R5
C9B84:  IT GE
C9B86:  MOVGE           R6, R5
C9B88:  STR.W           R6, [R11,#0x60]
C9B8C:  LDR.W           R0, [R7,#var_30]
C9B90:  STR.W           R0, [R7,#var_64]
C9B94:  ADD             R4, R0
C9B96:  MOV             R0, #0x7FFFFFFF
C9B9A:  CMP             R4, R8
C9B9C:  IT CS
C9B9E:  MOVCS           R4, R8
C9BA0:  MOV             R1, R4
C9BA2:  BLX             sub_108874
C9BA6:  CMP.W           R4, R10,LSL#3
C9BAA:  BLE             loc_C9BB0
C9BAC:  MOVS            R1, #0x80
C9BAE:  B               loc_C9BE0
C9BB0:  CMP             R4, R10
C9BB2:  BGE             loc_C9BBA
C9BB4:  MOV.W           R1, #0x400
C9BB8:  B               loc_C9BE0
C9BBA:  MOVS            R1, #1
C9BBC:  SXTH.W          R2, R10
C9BC0:  ADD.W           R1, R1, R10,ASR#15
C9BC4:  UXTH            R3, R0
C9BC6:  MULS            R3, R2
C9BC8:  LSRS            R4, R0, #0x10
C9BCA:  ASRS            R1, R1, #1
C9BCC:  MULS            R1, R0
C9BCE:  MLA.W           R1, R4, R2, R1
C9BD2:  ADD.W           R1, R1, R3,ASR#16
C9BD6:  ASRS            R2, R1, #0x10
C9BD8:  UBFX.W          R1, R1, #5, #0xB
C9BDC:  ORR.W           R1, R1, R2,LSL#11
C9BE0:  LDR.W           R2, [R11,#0x74]
C9BE4:  CMP             R1, R9
C9BE6:  LDR.W           R10, [R11,#0x68]
C9BEA:  SUB.W           R0, R0, R2
C9BEE:  LDR.W           R8, [R11,#0x88]
C9BF2:  IT LE
C9BF4:  MOVLE           R1, R9
C9BF6:  UXTH            R4, R0
C9BF8:  SXTH            R3, R1
C9BFA:  MULS            R3, R4
C9BFC:  SMLABT.W        R0, R1, R0, R2
C9C00:  ADD.W           R1, R0, R3,ASR#16
C9C04:  MOV             R0, #0x7FFFFFFF
C9C08:  STR.W           R1, [R11,#0x74]
C9C0C:  BLX             sub_108848
C9C10:  CMP             R0, R5
C9C12:  IT LT
C9C14:  MOVLT           R5, R0
C9C16:  STR.W           R11, [R7,#var_58]
C9C1A:  STR.W           R5, [R11,#0x64]
C9C1E:  LDR.W           R0, [R7,#var_2C]
C9C22:  STR.W           R0, [R7,#var_68]
C9C26:  ADD.W           R4, R8, R0
C9C2A:  MOV             R8, #0x7FFFFFFF
C9C2E:  CMP             R4, R8
C9C30:  MOV             R0, #0x7FFFFFFF
C9C34:  IT CS
C9C36:  MOVCS           R4, R8
C9C38:  MOV             R1, R4
C9C3A:  BLX             sub_108874
C9C3E:  CMP.W           R4, R10,LSL#3
C9C42:  BLE             loc_C9C48
C9C44:  MOVS            R1, #0x80
C9C46:  B               loc_C9C78
C9C48:  CMP             R4, R10
C9C4A:  BGE             loc_C9C52
C9C4C:  MOV.W           R1, #0x400
C9C50:  B               loc_C9C78
C9C52:  MOVS            R1, #1
C9C54:  SXTH.W          R2, R10
C9C58:  ADD.W           R1, R1, R10,ASR#15
C9C5C:  UXTH            R3, R0
C9C5E:  MULS            R3, R2
C9C60:  LSRS            R5, R0, #0x10
C9C62:  ASRS            R1, R1, #1
C9C64:  MULS            R1, R0
C9C66:  MLA.W           R1, R5, R2, R1
C9C6A:  ADD.W           R1, R1, R3,ASR#16
C9C6E:  ASRS            R2, R1, #0x10
C9C70:  UBFX.W          R1, R1, #5, #0xB
C9C74:  ORR.W           R1, R1, R2,LSL#11
C9C78:  LDR.W           R11, [R7,#var_58]
C9C7C:  CMP             R1, R9
C9C7E:  LDR.W           R2, [R11,#0x78]
C9C82:  LDR.W           R10, [R11,#0x6C]
C9C86:  SUB.W           R0, R0, R2
C9C8A:  LDR.W           R4, [R11,#0x8C]
C9C8E:  IT LE
C9C90:  MOVLE           R1, R9
C9C92:  UXTH            R5, R0
C9C94:  SXTH            R3, R1
C9C96:  MULS            R3, R5
C9C98:  SMLABT.W        R0, R1, R0, R2
C9C9C:  ADD.W           R1, R0, R3,ASR#16
C9CA0:  MOV             R0, #0x7FFFFFFF
C9CA4:  STR.W           R1, [R11,#0x78]
C9CA8:  BLX             sub_108848
C9CAC:  MOV             R5, #0xFFFFFF
C9CB0:  CMP             R0, R5
C9CB2:  IT GE
C9CB4:  MOVGE           R0, R5
C9CB6:  STR.W           R0, [R11,#0x68]
C9CBA:  LDR.W           R0, [R7,#var_28]
C9CBE:  STR.W           R0, [R7,#var_6C]
C9CC2:  ADD             R4, R0
C9CC4:  MOV             R0, #0x7FFFFFFF
C9CC8:  CMP             R4, R8
C9CCA:  IT CS
C9CCC:  MOVCS           R4, R8
C9CCE:  MOV             R1, R4
C9CD0:  BLX             sub_108874
C9CD4:  CMP.W           R4, R10,LSL#3
C9CD8:  BLE             loc_C9CDE
C9CDA:  MOVS            R1, #0x80
C9CDC:  B               loc_C9D0E
C9CDE:  CMP             R4, R10
C9CE0:  BGE             loc_C9CE8
C9CE2:  MOV.W           R1, #0x400
C9CE6:  B               loc_C9D0E
C9CE8:  MOVS            R1, #1
C9CEA:  SXTH.W          R2, R10
C9CEE:  ADD.W           R1, R1, R10,ASR#15
C9CF2:  UXTH            R3, R0
C9CF4:  MULS            R3, R2
C9CF6:  LSRS            R4, R0, #0x10
C9CF8:  ASRS            R1, R1, #1
C9CFA:  MULS            R1, R0
C9CFC:  MLA.W           R1, R4, R2, R1
C9D00:  ADD.W           R1, R1, R3,ASR#16
C9D04:  ASRS            R2, R1, #0x10
C9D06:  UBFX.W          R1, R1, #5, #0xB
C9D0A:  ORR.W           R1, R1, R2,LSL#11
C9D0E:  LDR.W           R2, [R11,#0x7C]
C9D12:  CMP             R1, R9
C9D14:  IT GT
C9D16:  MOVGT           R9, R1
C9D18:  SUBS            R0, R0, R2
C9D1A:  SXTH.W          R1, R9
C9D1E:  UXTH            R3, R0
C9D20:  SMLABT.W        R0, R9, R0, R2
C9D24:  MULS            R1, R3
C9D26:  ADD.W           R1, R0, R1,ASR#16
C9D2A:  MOV             R0, #0x7FFFFFFF
C9D2E:  STR.W           R1, [R11,#0x7C]
C9D32:  BLX             sub_108848
C9D36:  CMP             R0, R5
C9D38:  ADD.W           R9, R11, #0x64 ; 'd'
C9D3C:  IT LT
C9D3E:  MOVLT           R5, R0
C9D40:  SUB.W           R0, R7, #-var_34
C9D44:  STR.W           R5, [R11,#0x6C]
C9D48:  ADDS            R5, R0, #4
C9D4A:  LDR.W           R0, [R7,#var_5C]
C9D4E:  MOVS            R4, #0
C9D50:  MOV.W           R8, #0
C9D54:  MOV.W           R11, #0
C9D58:  B               loc_C9D68
C9D5A:  ADD.W           R1, R11, #1
C9D5E:  LDR.W           R6, [R9,R11,LSL#2]
C9D62:  LDR.W           R0, [R5,R11,LSL#2]
C9D66:  MOV             R11, R1
C9D68:  SUB.W           R10, R0, R6
C9D6C:  CMP.W           R10, #1
C9D70:  BLT             loc_C9DBE
C9D72:  CMP.W           R0, #0x800000
C9D76:  IT CS
C9D78:  ASRCS           R6, R6, #8
C9D7A:  IT CC
C9D7C:  LSLCC           R0, R0, #8
C9D7E:  ADDS            R1, R6, #1
C9D80:  BLX             sub_108848
C9D84:  SUB.W           R1, R7, #-var_44
C9D88:  STR.W           R0, [R1,R11,LSL#2]
C9D8C:  BLX             j_silk_lin2log
C9D90:  SUB.W           R0, R0, #0x400
C9D94:  CMP.W           R10, #0x100000
C9D98:  SMLABB.W        R8, R0, R0, R8
C9D9C:  BGE             loc_C9E64
C9D9E:  CLZ.W           R3, R10
C9DA2:  MOV             LR, R5
C9DA4:  RSBS.W          R1, R3, #0x18
C9DA8:  SXTH            R0, R0
C9DAA:  RSB.W           R2, R1, #0
C9DAE:  MOV             R6, R10
C9DB0:  BEQ             loc_C9DE0
C9DB2:  CMP.W           R1, #0xFFFFFFFF
C9DB6:  BLE             loc_C9DD2
C9DB8:  ROR.W           R6, R10, R1
C9DBC:  B               loc_C9DE0
C9DBE:  SUB.W           R0, R7, #-var_44
C9DC2:  MOV.W           R1, #0x100
C9DC6:  STR.W           R1, [R0,R11,LSL#2]
C9DCA:  CMP.W           R11, #3
C9DCE:  BNE             loc_C9D5A
C9DD0:  B               loc_C9E80
C9DD2:  ADD.W           R5, R1, #0x20 ; ' '
C9DD6:  LSL.W           R6, R10, R2
C9DDA:  LSR.W           R5, R10, R5
C9DDE:  ORRS            R6, R5
C9DE0:  AND.W           R6, R6, #0x7F
C9DE4:  MOV             R12, R4
C9DE6:  MOV.W           R4, #0xD50000
C9DEA:  TST.W           R3, #1
C9DEE:  MUL.W           R5, R6, R4
C9DF2:  MOV.W           R6, #0x8000
C9DF6:  IT EQ
C9DF8:  MOVWEQ          R6, #0xB486
C9DFC:  LSRS            R3, R3, #1
C9DFE:  LSR.W           R3, R6, R3
C9E02:  CMP             R1, #0
C9E04:  UXTH            R6, R3
C9E06:  MOV.W           R5, R5,LSR#16
C9E0A:  MUL.W           R4, R5, R6
C9E0E:  SMLABT.W        R5, R5, R3, R3
C9E12:  ADD.W           R5, R5, R4,LSR#16
C9E16:  MOV.W           R4, R3,ASR#16
C9E1A:  MOV.W           R5, R5,LSL#6
C9E1E:  SMULTB.W        R5, R5, R0
C9E22:  BEQ             loc_C9E3E
C9E24:  CMP.W           R1, #0xFFFFFFFF
C9E28:  BLE             loc_C9E30
C9E2A:  ROR.W           R10, R10, R1
C9E2E:  B               loc_C9E3E
C9E30:  ADDS            R1, #0x20 ; ' '
C9E32:  LSL.W           R2, R10, R2
C9E36:  LSR.W           R1, R10, R1
C9E3A:  ORR.W           R10, R1, R2
C9E3E:  AND.W           R1, R10, #0x7F
C9E42:  MOV.W           R2, #0xD50000
C9E46:  MULS            R1, R2
C9E48:  LSRS            R1, R1, #0x10
C9E4A:  MUL.W           R2, R1, R6
C9E4E:  SMLABB.W        R1, R1, R4, R3
C9E52:  MOV             R4, R12
C9E54:  ADD.W           R1, R1, R2,LSR#16
C9E58:  LSLS            R1, R1, #6
C9E5A:  UXTH            R1, R1
C9E5C:  MULS            R0, R1
C9E5E:  ADD.W           R0, R5, R0,ASR#16
C9E62:  MOV             R5, LR
C9E64:  ADR             R1, dword_CA130
C9E66:  SXTH            R3, R0
C9E68:  LDR.W           R1, [R1,R11,LSL#2]
C9E6C:  UXTH            R2, R1
C9E6E:  SMLABT.W        R0, R0, R1, R4
C9E72:  MULS            R2, R3
C9E74:  ADD.W           R4, R0, R2,ASR#16
C9E78:  CMP.W           R11, #3
C9E7C:  BNE.W           loc_C9D5A
C9E80:  CMP.W           R8, #4
C9E84:  BGE             loc_C9E90
C9E86:  MOV             R0, #0xFFFFFF80
C9E8A:  LDR.W           R8, [R7,#var_58]
C9E8E:  B               loc_C9F04
C9E90:  MOV.W           R0, R8,ASR#31
C9E94:  ADD.W           R0, R8, R0,LSR#30
C9E98:  LDR.W           R8, [R7,#var_58]
C9E9C:  ASRS            R1, R0, #2
C9E9E:  CLZ.W           R0, R1
C9EA2:  RSBS.W          R2, R0, #0x18
C9EA6:  BEQ             loc_C9EBE
C9EA8:  CMP.W           R2, #0xFFFFFFFF
C9EAC:  BLE             loc_C9EB2
C9EAE:  RORS            R1, R2
C9EB0:  B               loc_C9EBE
C9EB2:  NEGS            R3, R2
C9EB4:  ADDS            R2, #0x20 ; ' '
C9EB6:  LSL.W           R3, R1, R3
C9EBA:  LSRS            R1, R2
C9EBC:  ORRS            R1, R3
C9EBE:  AND.W           R1, R1, #0x7F
C9EC2:  MOV.W           R2, #0xD50000
C9EC6:  TST.W           R0, #1
C9ECA:  MOV.W           R0, R0,LSR#1
C9ECE:  MUL.W           R1, R2, R1
C9ED2:  MOV.W           R2, #0x8000
C9ED6:  IT EQ
C9ED8:  MOVWEQ          R2, #0xB486
C9EDC:  LSR.W           R0, R2, R0
C9EE0:  UXTH            R2, R0
C9EE2:  LSRS            R1, R1, #0x10
C9EE4:  MULS            R2, R1
C9EE6:  SMLABT.W        R0, R1, R0, R0
C9EEA:  MOVW            R1, #0xAFC8
C9EEE:  ADD.W           R0, R0, R2,LSR#16
C9EF2:  ADD.W           R0, R0, R0,LSL#1
C9EF6:  SBFX.W          R0, R0, #0, #0x10
C9EFA:  MULS            R0, R1
C9EFC:  MOV             R1, #0xFFFFFF80
C9F00:  ADD.W           R0, R1, R0,ASR#16
C9F04:  BLX             j_silk_sigm_Q15
C9F08:  MOV             R6, R0
C9F0A:  MOV             R0, R4
C9F0C:  BLX             j_silk_sigm_Q15
C9F10:  MOVW            R1, #0x8000
C9F14:  ADD.W           R5, R8, #0x60 ; '`'
C9F18:  MOVT            R1, #0xFFFF
C9F1C:  ADD.W           R0, R1, R0,LSL#1
C9F20:  MOVW            R1, #0x1268
C9F24:  LDM             R5, {R2,R3,R5}
C9F26:  LDR.W           R4, [R8,#0x6C]
C9F2A:  STR.W           R0, [R8,R1]
C9F2E:  MOV.W           R0, #0x11E0
C9F32:  LDR.W           R1, [R8,R0]
C9F36:  LDR.W           R0, [R7,#var_60]
C9F3A:  ADD.W           R1, R1, R1,LSL#2
C9F3E:  LDR.W           R12, [R0]
C9F42:  LDR.W           R0, [R7,#var_5C]
C9F46:  CMP.W           R12, R1,LSL#2
C9F4A:  SUB.W           R2, R0, R2
C9F4E:  LDR.W           R0, [R7,#var_64]
C9F52:  SUB.W           R3, R0, R3
C9F56:  LDR.W           R0, [R7,#var_68]
C9F5A:  MOV.W           R3, R3,ASR#4
C9F5E:  MOV.W           R3, R3,LSL#1
C9F62:  ADD.W           R2, R3, R2,ASR#4
C9F66:  SUB.W           R3, R0, R5
C9F6A:  LDR.W           R0, [R7,#var_6C]
C9F6E:  MOV.W           R3, R3,ASR#4
C9F72:  ADD.W           R3, R3, R3,LSL#1
C9F76:  ADD             R2, R3
C9F78:  SUB.W           R3, R0, R4
C9F7C:  MOV.W           R3, R3,ASR#4
C9F80:  ADD.W           R2, R2, R3,LSL#2
C9F84:  MOV.W           R3, #0
C9F88:  IT EQ
C9F8A:  MOVEQ           R3, #1
C9F8C:  ASRS            R2, R3
C9F8E:  CMP             R2, #0
C9F90:  BLE             loc_C9FB2
C9F92:  CMP.W           R2, #0x4000
C9F96:  BGE             loc_CA008
C9F98:  LSLS            R3, R2, #0x10
C9F9A:  CMP             R3, #1
C9F9C:  BLT             loc_C9FB6
C9F9E:  CLZ.W           R2, R3
C9FA2:  RSBS.W          R5, R2, #0x18
C9FA6:  BEQ             loc_C9FC8
C9FA8:  CMP.W           R5, #0xFFFFFFFF
C9FAC:  BLE             loc_C9FBC
C9FAE:  RORS            R3, R5
C9FB0:  B               loc_C9FC8
C9FB2:  ASRS            R6, R6, #1
C9FB4:  B               loc_CA008
C9FB6:  MOV.W           R2, #0x8000
C9FBA:  B               loc_C9FFC
C9FBC:  NEGS            R4, R5
C9FBE:  ADDS            R5, #0x20 ; ' '
C9FC0:  LSL.W           R4, R3, R4
C9FC4:  LSRS            R3, R5
C9FC6:  ORRS            R3, R4
C9FC8:  AND.W           R3, R3, #0x7F
C9FCC:  MOV.W           R5, #0xD50000
C9FD0:  TST.W           R2, #1
C9FD4:  MOV.W           R2, R2,LSR#1
C9FD8:  MUL.W           R3, R5, R3
C9FDC:  MOV.W           R5, #0x8000
C9FE0:  IT EQ
C9FE2:  MOVWEQ          R5, #0xB486
C9FE6:  LSR.W           R2, R5, R2
C9FEA:  UXTH            R5, R2
C9FEC:  LSRS            R3, R3, #0x10
C9FEE:  MULS            R5, R3
C9FF0:  SMLABT.W        R2, R3, R2, R2
C9FF4:  ADD.W           R2, R2, R5,LSR#16
C9FF8:  ADD.W           R2, R2, #0x8000
C9FFC:  SXTH            R3, R6
C9FFE:  UXTH            R5, R2
CA000:  MULS            R3, R5
CA002:  ASRS            R3, R3, #0x10
CA004:  SMLATB.W        R6, R2, R6, R3
CA008:  ASRS            R2, R6, #7
CA00A:  CMP             R2, #0xFF
CA00C:  SXTH            R2, R6
CA00E:  MOV.W           R3, #0xFF
CA012:  IT LT
CA014:  ASRLT           R3, R6, #7
CA016:  MOVW            R5, #0x11B4
CA01A:  MULS            R2, R6
CA01C:  STR.W           R3, [R8,R5]
CA020:  LDR.W           R3, [R8,#0x4C]
CA024:  MOVS            R6, #0x14
CA026:  LDR.W           R5, [R7,#var_44]
CA02A:  CMP.W           R12, R1,LSL#1
CA02E:  IT EQ
CA030:  MOVEQ           R6, #0x15
CA032:  SUBS            R0, R5, R3
CA034:  ASR.W           R4, R2, R6
CA038:  UXTH            R1, R0
CA03A:  ASRS            R0, R0, #0x10
CA03C:  MULS            R1, R4
CA03E:  MLA.W           R0, R0, R4, R3
CA042:  ADD.W           R0, R0, R1,ASR#16
CA046:  STR.W           R0, [R8,#0x4C]
CA04A:  BLX             j_silk_lin2log
CA04E:  ADD.W           R0, R0, R0,LSL#1
CA052:  SUB.W           R0, R0, #0x1400
CA056:  ASRS            R0, R0, #4
CA058:  BLX             j_silk_sigm_Q15
CA05C:  MOVW            R2, #0x1258
CA060:  LDR.W           R1, [R8,#0x50]
CA064:  STR.W           R0, [R8,R2]
CA068:  LDR.W           R0, [R7,#var_40]
CA06C:  SUBS            R0, R0, R1
CA06E:  UXTH            R2, R0
CA070:  ASRS            R0, R0, #0x10
CA072:  MULS            R2, R4
CA074:  MLA.W           R0, R0, R4, R1
CA078:  ADD.W           R0, R0, R2,ASR#16
CA07C:  STR.W           R0, [R8,#0x50]
CA080:  BLX             j_silk_lin2log
CA084:  ADD.W           R0, R0, R0,LSL#1
CA088:  SUB.W           R0, R0, #0x1400
CA08C:  ASRS            R0, R0, #4
CA08E:  BLX             j_silk_sigm_Q15
CA092:  MOVW            R2, #0x125C
CA096:  LDR.W           R1, [R8,#0x54]
CA09A:  STR.W           R0, [R8,R2]
CA09E:  LDR.W           R0, [R7,#var_3C]
CA0A2:  SUBS            R0, R0, R1
CA0A4:  UXTH            R2, R0
CA0A6:  ASRS            R0, R0, #0x10
CA0A8:  MULS            R2, R4
CA0AA:  MLA.W           R0, R0, R4, R1
CA0AE:  ADD.W           R0, R0, R2,ASR#16
CA0B2:  STR.W           R0, [R8,#0x54]
CA0B6:  BLX             j_silk_lin2log
CA0BA:  ADD.W           R0, R0, R0,LSL#1
CA0BE:  SUB.W           R0, R0, #0x1400
CA0C2:  ASRS            R0, R0, #4
CA0C4:  BLX             j_silk_sigm_Q15
CA0C8:  MOV.W           R2, #0x1260
CA0CC:  LDR.W           R1, [R8,#0x58]
CA0D0:  STR.W           R0, [R8,R2]
CA0D4:  LDR.W           R0, [R7,#var_38]
CA0D8:  SUBS            R0, R0, R1
CA0DA:  UXTH            R2, R0
CA0DC:  ASRS            R0, R0, #0x10
CA0DE:  MULS            R2, R4
CA0E0:  MLA.W           R0, R0, R4, R1
CA0E4:  ADD.W           R0, R0, R2,ASR#16
CA0E8:  STR.W           R0, [R8,#0x58]
CA0EC:  BLX             j_silk_lin2log
CA0F0:  ADD.W           R0, R0, R0,LSL#1
CA0F4:  SUB.W           R0, R0, #0x1400
CA0F8:  ASRS            R0, R0, #4
CA0FA:  BLX             j_silk_sigm_Q15
CA0FE:  MOVW            R1, #0x1264
CA102:  STR.W           R0, [R8,R1]
CA106:  LDR             R0, =(__stack_chk_guard_ptr - 0xCA110)
CA108:  LDR.W           R1, [R7,#var_24]
CA10C:  ADD             R0, PC; __stack_chk_guard_ptr
CA10E:  LDR             R0, [R0]; __stack_chk_guard
CA110:  LDR             R0, [R0]
CA112:  SUBS            R0, R0, R1
CA114:  ITTTT EQ
CA116:  MOVEQ           R0, #0
CA118:  SUBEQ.W         R4, R7, #-var_1C
CA11C:  MOVEQ           SP, R4
CA11E:  POPEQ.W         {R8-R11}
CA122:  IT EQ
CA124:  POPEQ           {R4-R7,PC}
CA126:  BLX             __stack_chk_fail
