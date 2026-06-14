; =========================================================
; Game Engine Function: silk_stereo_quant_pred
; Address            : 0xCC820 - 0xCCA48
; =========================================================

CC820:  PUSH            {R4-R7,LR}
CC822:  ADD             R7, SP, #0xC
CC824:  PUSH.W          {R8-R11}
CC828:  SUB             SP, SP, #4
CC82A:  LDR             R2, =(silk_stereo_pred_quant_Q13_ptr - 0xCC838)
CC82C:  MOV             R10, #0x7FFFFFFF
CC830:  MOV.W           R12, #0
CC834:  ADD             R2, PC; silk_stereo_pred_quant_Q13_ptr
CC836:  LDR             R2, [R2]; silk_stereo_pred_quant_Q13
CC838:  LDRH            R3, [R2]
CC83A:  LDR             R2, =(silk_stereo_pred_quant_Q13_ptr - 0xCC842)
CC83C:  STR             R3, [SP,#0x20+var_20]
CC83E:  ADD             R2, PC; silk_stereo_pred_quant_Q13_ptr
CC840:  LDR.W           LR, [R2]; silk_stereo_pred_quant_Q13
CC844:  MOV             R2, R3
CC846:  MOVS            R3, #0
CC848:  MOV             R4, R3
CC84A:  SXTH.W          R11, R2
CC84E:  ADD.W           R3, LR, R4,LSL#1
CC852:  MOVW            R5, #0x199A
CC856:  LDRSH.W         R9, [R3,#2]
CC85A:  SUB.W           R2, R9, R11
CC85E:  UXTH            R3, R2
CC860:  ASRS            R2, R2, #0x10
CC862:  MULS            R3, R5
CC864:  MOVS            R5, #0x199A0000
CC86A:  MLA.W           R2, R2, R5, R3
CC86E:  LDR             R5, [R0]
CC870:  ADD.W           R8, R11, R2,ASR#16
CC874:  SUBS.W          R5, R5, R8
CC878:  IT MI
CC87A:  NEGMI           R5, R5
CC87C:  CMP             R5, R10
CC87E:  BGE             loc_CC90C
CC880:  ASRS            R6, R2, #0x10
CC882:  MOVS            R2, #0
CC884:  STRB            R2, [R1,#1]
CC886:  ADD.W           R2, R6, R6,LSL#1
CC88A:  STRB            R4, [R1]
CC88C:  ADD.W           R12, R2, R11
CC890:  LDR             R3, [R0]
CC892:  SUBS.W          R2, R3, R12
CC896:  IT MI
CC898:  NEGMI           R2, R2
CC89A:  CMP             R2, R5
CC89C:  BGE             loc_CC908
CC89E:  MOVS            R3, #1
CC8A0:  STRB            R3, [R1,#1]
CC8A2:  ADD.W           R3, R6, R6,LSL#2
CC8A6:  STRB            R4, [R1]
CC8A8:  ADD.W           R10, R3, R11
CC8AC:  LDR             R5, [R0]
CC8AE:  SUBS.W          R5, R5, R10
CC8B2:  IT MI
CC8B4:  NEGMI           R5, R5
CC8B6:  CMP             R5, R2
CC8B8:  BGE             loc_CC912
CC8BA:  MOVS            R2, #2
CC8BC:  STRB            R2, [R1,#1]
CC8BE:  RSB.W           R2, R6, R6,LSL#3
CC8C2:  STRB            R4, [R1]
CC8C4:  ADD.W           R8, R2, R11
CC8C8:  LDR             R3, [R0]
CC8CA:  SUBS.W          R2, R3, R8
CC8CE:  IT MI
CC8D0:  NEGMI           R2, R2
CC8D2:  CMP             R2, R5
CC8D4:  BGE             loc_CC910
CC8D6:  MOVS            R3, #3
CC8D8:  STRB            R3, [R1,#1]
CC8DA:  ADD.W           R3, R6, R6,LSL#3
CC8DE:  STRB            R4, [R1]
CC8E0:  ADD.W           R12, R3, R11
CC8E4:  LDR             R5, [R0]
CC8E6:  SUBS.W          R10, R5, R12
CC8EA:  IT MI
CC8EC:  RSBMI.W         R10, R10, #0
CC8F0:  CMP             R10, R2
CC8F2:  BGE             loc_CC908
CC8F4:  MOVS            R5, #4
CC8F6:  ADDS            R3, R4, #1
CC8F8:  STRB            R5, [R1,#1]
CC8FA:  SUBS            R5, R3, #1
CC8FC:  UXTH.W          R2, R9
CC900:  CMP             R5, #0xE
CC902:  STRB            R4, [R1]
CC904:  BLT             loc_CC848
CC906:  B               loc_CC912
CC908:  MOV             R12, R8
CC90A:  B               loc_CC912
CC90C:  LDRB            R4, [R1]
CC90E:  B               loc_CC912
CC910:  MOV             R12, R10
CC912:  MOVW            R3, #0x5556
CC916:  SXTB            R2, R4
CC918:  MOVT            R3, #0x5555
CC91C:  LDR             R5, [SP,#0x20+var_20]
CC91E:  SMMUL.W         R2, R2, R3
CC922:  MOV             LR, #0x7FFFFFFF
CC926:  ADD.W           R2, R2, R2,LSR#31
CC92A:  STRB            R2, [R1,#2]
CC92C:  SUB.W           R2, R2, R2,LSL#2
CC930:  ADD             R2, R4
CC932:  STRB            R2, [R1]
CC934:  LDR             R2, =(silk_stereo_pred_quant_Q13_ptr - 0xCC93E)
CC936:  STR.W           R12, [R0]
CC93A:  ADD             R2, PC; silk_stereo_pred_quant_Q13_ptr
CC93C:  LDR.W           R11, [R2]; silk_stereo_pred_quant_Q13
CC940:  MOVS            R2, #0
CC942:  MOV             R10, R2
CC944:  MOVW            R4, #0x199A
CC948:  ADD.W           R2, R11, R10,LSL#1
CC94C:  LDRSH.W         R8, [R2,#2]
CC950:  SXTH            R2, R5
CC952:  SUB.W           R3, R8, R2
CC956:  UXTH            R5, R3
CC958:  ASRS            R3, R3, #0x10
CC95A:  MULS            R5, R4
CC95C:  MOVS            R4, #0x199A0000
CC962:  MLA.W           R5, R3, R4, R5
CC966:  LDR             R3, [R0,#4]
CC968:  ADD.W           R9, R2, R5,ASR#16
CC96C:  SUBS.W          R3, R3, R9
CC970:  IT MI
CC972:  NEGMI           R3, R3
CC974:  CMP             R3, LR
CC976:  BGE             loc_CCA10
CC978:  ASRS            R6, R5, #0x10
CC97A:  MOVS            R5, #0
CC97C:  STRB            R5, [R1,#4]
CC97E:  ADD.W           R5, R6, R6,LSL#1
CC982:  STRB.W          R10, [R1,#3]
CC986:  ADD.W           R12, R5, R2
CC98A:  LDR             R4, [R0,#4]
CC98C:  SUBS.W          R5, R4, R12
CC990:  IT MI
CC992:  NEGMI           R5, R5
CC994:  CMP             R5, R3
CC996:  BGE             loc_CCA0C
CC998:  MOVS            R3, #1
CC99A:  STRB            R3, [R1,#4]
CC99C:  ADD.W           R3, R6, R6,LSL#2
CC9A0:  STRB.W          R10, [R1,#3]
CC9A4:  ADD.W           LR, R3, R2
CC9A8:  LDR             R4, [R0,#4]
CC9AA:  SUBS.W          R3, R4, LR
CC9AE:  IT MI
CC9B0:  NEGMI           R3, R3
CC9B2:  CMP             R3, R5
CC9B4:  BGE             loc_CCA18
CC9B6:  MOVS            R5, #2
CC9B8:  STRB            R5, [R1,#4]
CC9BA:  RSB.W           R5, R6, R6,LSL#3
CC9BE:  STRB.W          R10, [R1,#3]
CC9C2:  ADD.W           R9, R5, R2
CC9C6:  LDR             R4, [R0,#4]
CC9C8:  SUBS.W          R5, R4, R9
CC9CC:  IT MI
CC9CE:  NEGMI           R5, R5
CC9D0:  CMP             R5, R3
CC9D2:  BGE             loc_CCA16
CC9D4:  MOVS            R3, #3
CC9D6:  STRB            R3, [R1,#4]
CC9D8:  ADD.W           R3, R6, R6,LSL#3
CC9DC:  STRB.W          R10, [R1,#3]
CC9E0:  ADD.W           R12, R3, R2
CC9E4:  LDR             R6, [R0,#4]
CC9E6:  SUBS.W          LR, R6, R12
CC9EA:  IT MI
CC9EC:  RSBMI.W         LR, LR, #0
CC9F0:  CMP             LR, R5
CC9F2:  BGE             loc_CCA0C
CC9F4:  MOVS            R3, #4
CC9F6:  ADD.W           R2, R10, #1
CC9FA:  STRB            R3, [R1,#4]
CC9FC:  SUBS            R3, R2, #1
CC9FE:  UXTH.W          R5, R8
CCA02:  CMP             R3, #0xE
CCA04:  STRB.W          R10, [R1,#3]
CCA08:  BLT             loc_CC942
CCA0A:  B               loc_CCA18
CCA0C:  MOV             R12, R9
CCA0E:  B               loc_CCA18
CCA10:  LDRB.W          R10, [R1,#3]
CCA14:  B               loc_CCA18
CCA16:  MOV             R12, LR
CCA18:  MOVW            R3, #0x5556
CCA1C:  SXTB.W          R2, R10
CCA20:  MOVT            R3, #0x5555
CCA24:  SMMUL.W         R2, R2, R3
CCA28:  ADD.W           R2, R2, R2,LSR#31
CCA2C:  STRB            R2, [R1,#5]
CCA2E:  SUB.W           R2, R2, R2,LSL#2
CCA32:  ADD             R2, R10
CCA34:  STRB            R2, [R1,#3]
CCA36:  LDR             R1, [R0]
CCA38:  SUB.W           R1, R1, R12
CCA3C:  STRD.W          R1, R12, [R0]
CCA40:  ADD             SP, SP, #4
CCA42:  POP.W           {R8-R11}
CCA46:  POP             {R4-R7,PC}
