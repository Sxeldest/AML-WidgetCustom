; =========================================================
; Game Engine Function: sub_A67C0
; Address            : 0xA67C0 - 0xA69A4
; =========================================================

A67C0:  PUSH            {R4-R7,LR}
A67C2:  ADD             R7, SP, #0xC
A67C4:  PUSH.W          {R8-R11}
A67C8:  SUB             SP, SP, #0x54
A67CA:  MOV             R5, R0
A67CC:  LDR             R0, =(off_114D5C - 0xA67D2)
A67CE:  ADD             R0, PC; off_114D5C
A67D0:  LDR             R0, [R0]; dword_1ACF68
A67D2:  LDR.W           R8, [R0]
A67D6:  LDR             R0, =(__stack_chk_guard_ptr - 0xA67DC)
A67D8:  ADD             R0, PC; __stack_chk_guard_ptr
A67DA:  LDR             R0, [R0]; __stack_chk_guard
A67DC:  LDR             R0, [R0]
A67DE:  STR             R0, [SP,#0x70+var_20]
A67E0:  MOVW            R0, #0x19AC
A67E4:  LDR.W           R4, [R8,R0]
A67E8:  MOVS            R0, #1
A67EA:  STRB.W          R0, [R4,#0x7C]
A67EE:  LDRB.W          R0, [R4,#0x7F]
A67F2:  CBZ             R0, loc_A67F8
A67F4:  MOVS            R6, #0
A67F6:  B               loc_A6988
A67F8:  MOVW            R0, #0x1550
A67FC:  MOV             R6, R1
A67FE:  ADD.W           R11, R8, R0
A6802:  STR             R2, [SP,#0x70+var_58]
A6804:  MOV             R0, R4
A6806:  MOV             R1, R5
A6808:  MOVS            R2, #0
A680A:  BL              sub_8AAD4
A680E:  STR             R0, [SP,#0x70+var_5C]
A6810:  MOVS            R0, #0xBF800000
A6816:  MOV             R1, R5; int
A6818:  STR             R0, [SP,#0x70+var_70]; float
A681A:  ADD             R0, SP, #0x70+var_28; int
A681C:  MOVS            R2, #0; int
A681E:  MOVS            R3, #1; int
A6820:  STR             R5, [SP,#0x70+var_60]
A6822:  BL              sub_899BC
A6826:  LDR             R0, [SP,#0x70+var_58]
A6828:  LDRD.W          R9, R10, [R4,#0xC8]
A682C:  VLDR            S0, [R11,#4]
A6830:  LSLS            R0, R0, #0x16
A6832:  BPL             loc_A6852
A6834:  VLDR            S2, [R4,#0xF8]
A6838:  VCMP.F32        S0, S2
A683C:  VMRS            APSR_nzcv, FPSCR
A6840:  ITTTT MI
A6842:  VSUBMI.F32      S2, S2, S0
A6846:  VMOVMI          S4, R10
A684A:  VADDMI.F32      S2, S2, S4
A684E:  VMOVMI          R10, S2
A6852:  VLDR            S2, [R11]
A6856:  VADD.F32        S0, S0, S0
A685A:  VLDR            S4, [SP,#0x70+var_28]
A685E:  VADD.F32        S2, S2, S2
A6862:  VLDR            S6, [SP,#0x70+var_24]
A6866:  LDRD.W          R1, R2, [R6]; int
A686A:  ADD             R6, SP, #0x70+var_30
A686C:  MOV             R0, R6; int
A686E:  VADD.F32        S0, S0, S6
A6872:  VADD.F32        S2, S2, S4
A6876:  VSTR            S0, [SP,#0x70+var_70]
A687A:  VMOV            R3, S2; int
A687E:  BL              sub_972C4
A6882:  VMOV            S0, R10
A6886:  VLDR            S4, [SP,#0x70+var_2C]
A688A:  VLDR            S2, [SP,#0x70+var_30]
A688E:  VMOV            S6, R9
A6892:  VADD.F32        S0, S4, S0
A6896:  STRD.W          R9, R10, [SP,#0x70+var_40]
A689A:  VADD.F32        S2, S2, S6
A689E:  MOV             R0, R6
A68A0:  VSTR            S0, [SP,#0x70+var_34]
A68A4:  VSTR            S2, [SP,#0x70+var_38]
A68A8:  LDR.W           R1, [R11,#4]
A68AC:  BL              sub_8B104
A68B0:  LDR             R5, [SP,#0x70+var_5C]
A68B2:  ADD             R0, SP, #0x70+var_40
A68B4:  MOVS            R2, #0
A68B6:  MOVS            R6, #0
A68B8:  MOV             R1, R5
A68BA:  BL              sub_8B314
A68BE:  CMP             R0, #0
A68C0:  BEQ             loc_A6988
A68C2:  LDR.W           R0, [R4,#0x16C]
A68C6:  ADD             R4, SP, #0x70+var_40
A68C8:  LDR             R1, [SP,#0x70+var_58]
A68CA:  SUB.W           R2, R7, #-var_41
A68CE:  SUB.W           R3, R7, #-var_42
A68D2:  UBFX.W          R0, R0, #1, #1
A68D6:  ORRS            R0, R1
A68D8:  STR             R0, [SP,#0x70+var_70]
A68DA:  MOV             R0, R4
A68DC:  MOV             R1, R5
A68DE:  BL              sub_A634C
A68E2:  CMP             R0, #0
A68E4:  MOV             R6, R0
A68E6:  ITT NE
A68E8:  MOVNE           R0, R5
A68EA:  BLNE            sub_8B0DC
A68EE:  LDRB.W          R0, [R7,#var_41]
A68F2:  MOVS            R2, #0x16
A68F4:  LDRB.W          R1, [R7,#var_42]
A68F8:  CMP             R0, #0
A68FA:  IT EQ
A68FC:  MOVEQ           R2, #0x15
A68FE:  MOV             R0, R2
A6900:  IT NE
A6902:  MOVNE           R0, #0x17
A6904:  CMP             R1, #0
A6906:  MOV.W           R1, #0x3F800000
A690A:  IT EQ
A690C:  MOVEQ           R0, R2
A690E:  BL              sub_88C10
A6912:  MOV             R10, R0
A6914:  MOV             R0, R4
A6916:  MOV             R1, R5
A6918:  MOVS            R2, #1
A691A:  MOV.W           R9, #1
A691E:  BL              sub_8A1F8
A6922:  ADD             R3, SP, #0x70+var_40
A6924:  MOV             R5, R4
A6926:  LDR.W           R4, [R11,#8]
A692A:  LDM             R3, {R0-R3}; int
A692C:  STRD.W          R10, R9, [SP,#0x70+var_70]; int
A6930:  STR             R4, [SP,#0x70+var_68]; float
A6932:  BL              sub_89B34
A6936:  VLDR            S0, [SP,#0x70+var_40]
A693A:  MOVW            R0, #0x1598
A693E:  VLDR            S8, [R11]
A6942:  ADD             R0, R8
A6944:  VLDR            S4, [SP,#0x70+var_38]
A6948:  ADD             R1, SP, #0x70+var_28
A694A:  VLDR            S10, [R11,#4]
A694E:  VADD.F32        S0, S0, S8
A6952:  VLDR            S2, [SP,#0x70+var_3C]
A6956:  VSUB.F32        S4, S4, S8
A695A:  VLDR            S6, [SP,#0x70+var_34]
A695E:  MOVS            R3, #0; int
A6960:  VADD.F32        S2, S2, S10
A6964:  LDR             R2, [SP,#0x70+var_60]; int
A6966:  VSUB.F32        S6, S6, S10
A696A:  STRD.W          R1, R0, [SP,#0x70+var_70]; int
A696E:  ADD             R0, SP, #0x70+var_4C; int
A6970:  ADD             R1, SP, #0x70+var_54; int
A6972:  STR             R5, [SP,#0x70+var_68]; int
A6974:  VSTR            S0, [SP,#0x70+var_4C]
A6978:  VSTR            S4, [SP,#0x70+var_54]
A697C:  VSTR            S2, [SP,#0x70+var_48]
A6980:  VSTR            S6, [SP,#0x70+var_50]
A6984:  BL              sub_89A94
A6988:  LDR             R0, [SP,#0x70+var_20]
A698A:  LDR             R1, =(__stack_chk_guard_ptr - 0xA6990)
A698C:  ADD             R1, PC; __stack_chk_guard_ptr
A698E:  LDR             R1, [R1]; __stack_chk_guard
A6990:  LDR             R1, [R1]
A6992:  CMP             R1, R0
A6994:  ITTTT EQ
A6996:  MOVEQ           R0, R6
A6998:  ADDEQ           SP, SP, #0x54 ; 'T'
A699A:  POPEQ.W         {R8-R11}
A699E:  POPEQ           {R4-R7,PC}
A69A0:  BLX             __stack_chk_fail
