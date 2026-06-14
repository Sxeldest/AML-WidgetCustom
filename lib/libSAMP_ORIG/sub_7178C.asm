; =========================================================
; Game Engine Function: sub_7178C
; Address            : 0x7178C - 0x719DA
; =========================================================

7178C:  PUSH            {R4-R7,LR}
7178E:  ADD             R7, SP, #0xC
71790:  PUSH.W          {R8-R11}
71794:  SUB             SP, SP, #4
71796:  VPUSH           {D8-D9}
7179A:  SUB             SP, SP, #0x38
7179C:  MOV             R4, R0
7179E:  LDR             R0, =(__stack_chk_guard_ptr - 0x717A4)
717A0:  ADD             R0, PC; __stack_chk_guard_ptr
717A2:  LDR             R0, [R0]; __stack_chk_guard
717A4:  LDR             R0, [R0]
717A6:  STR             R0, [SP,#0x68+var_34]
717A8:  LDRB            R6, [R3]
717AA:  LDR             R0, [R3,#4]
717AC:  ANDS.W          R12, R6, #1
717B0:  IT EQ
717B2:  LSREQ           R0, R6, #1
717B4:  CMP             R0, #0
717B6:  BEQ.W           loc_719B8
717BA:  VLDR            S16, [R7,#arg_4]
717BE:  MOV             R5, R1
717C0:  VLDR            S18, =255.0
717C4:  MOV.W           R10, #0
717C8:  VCMP.F32        S16, #0.0
717CC:  VMRS            APSR_nzcv, FPSCR
717D0:  ITT EQ
717D2:  LDREQ           R6, [R4,#8]
717D4:  VLDREQ          S16, [R6,#0x10]
717D8:  LDRD.W          R6, R1, [R5]
717DC:  CMP.W           R12, #0
717E0:  STRD.W          R6, R1, [SP,#0x68+var_48]
717E4:  ADD             R1, SP, #0x68+var_58
717E6:  VLD1.32         {D16-D17}, [R2]
717EA:  LDR.W           R11, [R3,#8]
717EE:  VST1.64         {D16-D17}, [R1]
717F2:  IT EQ
717F4:  ADDEQ.W         R11, R3, #1
717F8:  ADD.W           R9, R11, R0
717FC:  MOV             R8, R11
717FE:  B               loc_71868
71800:  LDR             R0, [R7,#arg_0]
71802:  ADD             R1, SP, #0x68+var_48; int
71804:  ADD             R2, SP, #0x68+var_58; int
71806:  STR             R0, [SP,#0x68+var_64]; int
71808:  MOV             R0, R4; int
7180A:  MOV             R3, R8; int
7180C:  STR.W           R10, [SP,#0x68+var_5C]; int
71810:  VSTR            S16, [SP,#0x68+var_60]
71814:  STR.W           R11, [SP,#0x68+var_68]; int
71818:  BL              sub_715D0
7181C:  VCMP.F32        S16, #0.0
71820:  LDR             R1, [R4,#8]; int
71822:  VMOV.F32        S0, S16
71826:  VMRS            APSR_nzcv, FPSCR
7182A:  IT EQ
7182C:  VLDREQ          S0, [R1,#0x10]
71830:  VMOV            R2, S0; int
71834:  MOVW            R3, #0xFFFF
71838:  ADD             R0, SP, #0x68+dest; int
7183A:  MOVT            R3, #0x7F7F; int
7183E:  STRD.W          R10, R8, [SP,#0x68+var_68]; float
71842:  STRD.W          R11, R10, [SP,#0x68+var_60]; float
71846:  BL              sub_A3980
7184A:  VLDR            S0, [SP,#0x68+var_48]
7184E:  VLDR            S2, [SP,#0x68+dest]
71852:  VADD.F32        S0, S2, S0
71856:  VADD.F32        S0, S16, S0
7185A:  VSTR            S0, [SP,#0x68+var_48]
7185E:  ADD.W           R8, R11, #1
71862:  MOV             R6, R11
71864:  ADD.W           R11, R11, #1
71868:  LDRB.W          R0, [R11]
7186C:  CMP             R0, #9
7186E:  BLE             loc_71952
71870:  CMP             R0, #0xA
71872:  BEQ             loc_71960
71874:  CMP             R0, #0x7B ; '{'
71876:  BNE             loc_71862
71878:  ADD.W           R6, R11, #7
7187C:  CMP             R6, R9
7187E:  BCS             loc_71862
71880:  LDRB            R0, [R6]
71882:  CMP             R0, #0x7D ; '}'
71884:  BNE             loc_71862
71886:  CMP             R11, R8
71888:  BEQ             loc_718E4
7188A:  LDR             R0, [R7,#arg_8]
7188C:  ADD             R1, SP, #0x68+var_48; int
7188E:  STR             R0, [SP,#0x68+var_5C]; int
71890:  ADD             R2, SP, #0x68+var_58; int
71892:  LDR             R0, [R7,#arg_0]
71894:  MOV             R3, R8; int
71896:  STR             R0, [SP,#0x68+var_64]; int
71898:  MOV             R0, R4; int
7189A:  VSTR            S16, [SP,#0x68+var_60]
7189E:  STR.W           R11, [SP,#0x68+var_68]; int
718A2:  BL              sub_715D0
718A6:  VCMP.F32        S16, #0.0
718AA:  LDR             R1, [R4,#8]; int
718AC:  VMOV.F32        S0, S16
718B0:  VMRS            APSR_nzcv, FPSCR
718B4:  IT EQ
718B6:  VLDREQ          S0, [R1,#0x10]
718BA:  VMOV            R2, S0; int
718BE:  MOVW            R3, #0xFFFF
718C2:  ADD             R0, SP, #0x68+dest; int
718C4:  MOVT            R3, #0x7F7F; int
718C8:  STRD.W          R10, R8, [SP,#0x68+var_68]; float
718CC:  STRD.W          R11, R10, [SP,#0x68+var_60]; int
718D0:  BL              sub_A3980
718D4:  VLDR            S0, [SP,#0x68+var_48]
718D8:  VLDR            S2, [SP,#0x68+dest]
718DC:  VADD.F32        S0, S2, S0
718E0:  VSTR            S0, [SP,#0x68+var_48]
718E4:  ADD.W           R1, R11, #1; src
718E8:  ADD             R0, SP, #0x68+dest; dest
718EA:  MOVS            R2, #6; n
718EC:  BLX             strncpy
718F0:  LDR             R1, =(aX - 0x718FC); "%x" ...
718F2:  ADD             R2, SP, #0x68+var_40
718F4:  STRB.W          R10, [SP,#0x68+var_36]
718F8:  ADD             R1, PC; "%x"
718FA:  STR.W           R10, [SP,#0x68+var_40]
718FE:  BLX             sscanf
71902:  CMP             R0, #0
71904:  BLE             loc_71948
71906:  LDR             R0, [SP,#0x68+var_40]
71908:  UXTB            R1, R0
7190A:  VMOV            S0, R1
7190E:  UBFX.W          R1, R0, #8, #8
71912:  UBFX.W          R0, R0, #0x10, #8
71916:  VMOV            S2, R1
7191A:  VMOV            S4, R0
7191E:  MOV.W           R0, #0x3F800000
71922:  VCVT.F32.U32    S0, S0
71926:  STR             R0, [SP,#0x68+var_4C]
71928:  VCVT.F32.U32    S2, S2
7192C:  VCVT.F32.U32    S4, S4
71930:  VDIV.F32        S0, S0, S18
71934:  VDIV.F32        S2, S2, S18
71938:  VDIV.F32        S4, S4, S18
7193C:  VSTR            S0, [SP,#0x68+var_50]
71940:  VSTR            S2, [SP,#0x68+var_54]
71944:  VSTR            S4, [SP,#0x68+var_58]
71948:  ADD.W           R8, R11, #8
7194C:  ADD.W           R11, R6, #1
71950:  B               loc_71868
71952:  BNE             loc_71992
71954:  CMP             R11, R8
71956:  BNE.W           loc_71800
7195A:  VLDR            S0, [SP,#0x68+var_48]
7195E:  B               loc_71856
71960:  CMP             R11, R8
71962:  BEQ             loc_71980
71964:  LDR             R0, [R7,#arg_8]
71966:  ADD             R1, SP, #0x68+var_48; int
71968:  STR             R0, [SP,#0x68+var_5C]; int
7196A:  ADD             R2, SP, #0x68+var_58; int
7196C:  LDR             R0, [R7,#arg_0]
7196E:  MOV             R3, R8; int
71970:  STR             R0, [SP,#0x68+var_64]; int
71972:  MOV             R0, R4; int
71974:  VSTR            S16, [SP,#0x68+var_60]
71978:  STR.W           R11, [SP,#0x68+var_68]; int
7197C:  BL              sub_715D0
71980:  VLDR            S0, [SP,#0x68+var_44]
71984:  LDR             R0, [R5]
71986:  VADD.F32        S0, S16, S0
7198A:  STR             R0, [SP,#0x68+var_48]
7198C:  VSTR            S0, [SP,#0x68+var_44]
71990:  B               loc_7185E
71992:  CMP             R0, #0
71994:  BNE.W           loc_71862
71998:  CMP             R11, R8
7199A:  BEQ             loc_719B8
7199C:  LDR             R0, [R7,#arg_8]
7199E:  ADD             R1, SP, #0x68+var_48; int
719A0:  STR             R0, [SP,#0x68+var_5C]; int
719A2:  ADD             R2, SP, #0x68+var_58; int
719A4:  LDR             R0, [R7,#arg_0]
719A6:  MOV             R3, R8; int
719A8:  STR             R0, [SP,#0x68+var_64]; int
719AA:  MOV             R0, R4; int
719AC:  VSTR            S16, [SP,#0x68+var_60]
719B0:  STR.W           R11, [SP,#0x68+var_68]; int
719B4:  BL              sub_715D0
719B8:  LDR             R0, [SP,#0x68+var_34]
719BA:  LDR             R1, =(__stack_chk_guard_ptr - 0x719C0)
719BC:  ADD             R1, PC; __stack_chk_guard_ptr
719BE:  LDR             R1, [R1]; __stack_chk_guard
719C0:  LDR             R1, [R1]
719C2:  CMP             R1, R0
719C4:  ITTTT EQ
719C6:  ADDEQ           SP, SP, #0x38 ; '8'
719C8:  VPOPEQ          {D8-D9}
719CC:  ADDEQ           SP, SP, #4
719CE:  POPEQ.W         {R8-R11}
719D2:  IT EQ
719D4:  POPEQ           {R4-R7,PC}
719D6:  BLX             __stack_chk_fail
