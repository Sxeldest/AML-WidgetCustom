; =========================================================
; Game Engine Function: sub_16F910
; Address            : 0x16F910 - 0x16F970
; =========================================================

16F910:  LDR             R2, =(dword_381B58 - 0x16F91E)
16F912:  MOVW            R3, #0x1AB4
16F916:  LDR.W           R12, [R0,#8]
16F91A:  ADD             R2, PC; dword_381B58
16F91C:  LDR             R2, [R2]
16F91E:  ADD             R2, R3
16F920:  MOVS.W          R3, R12,LSL#13
16F924:  BMI             loc_16F968
16F926:  AND.W           R3, R12, #0x5000000
16F92A:  CMP.W           R3, #0x1000000
16F92E:  BNE             loc_16F938
16F930:  LDR.W           R0, [R0,#0x30C]
16F934:  CBZ             R0, loc_16F938
16F936:  CBZ             R1, loc_16F96C
16F938:  LDR             R1, [R2,#0x58]
16F93A:  ADR             R0, dword_16F970
16F93C:  LDR.W           R12, [R2]
16F940:  MOVS            R3, #0
16F942:  VLD1.64         {D16-D17}, [R0]
16F946:  MOVW            R0, #0x101
16F94A:  STRH.W          R0, [R2,#0x64]
16F94E:  ADD.W           R0, R12, R1,LSL#2
16F952:  STR             R3, [R2,#4]
16F954:  STR.W           R3, [R0,#0x30C]
16F958:  ADD.W           R0, R2, #0x6C ; 'l'
16F95C:  STRB.W          R3, [R2,#0x66]
16F960:  VST1.64         {D16-D17}, [R0]
16F964:  STR             R3, [R2,#0x68]
16F966:  BX              LR
16F968:  LDR.W           R0, [R0,#0x30C]
16F96C:  STR             R0, [R2,#4]
16F96E:  BX              LR
