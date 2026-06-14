; =========================================================
; Game Engine Function: sub_12BD9E
; Address            : 0x12BD9E - 0x12BDDC
; =========================================================

12BD9E:  PUSH            {R4,R5,R7,LR}
12BDA0:  ADD             R7, SP, #8
12BDA2:  LDR             R1, [R0,#8]
12BDA4:  CBZ             R1, loc_12BDB4
12BDA6:  VLDR            D16, [R0,#0xC]
12BDAA:  VLDR            D17, [R1,#0x2C]
12BDAE:  VADD.F32        D16, D17, D16
12BDB2:  B               loc_12BDB8
12BDB4:  VLDR            D16, [R0,#0xC]
12BDB8:  LDRD.W          R4, R5, [R0,#0x44]
12BDBC:  ADD.W           R1, R0, #0x30 ; '0'
12BDC0:  ADDS            R0, #0x2C ; ','
12BDC2:  VST1.32         {D16[1]}, [R1@32]
12BDC6:  VST1.32         {D16[0]}, [R0@32]
12BDCA:  CMP             R4, R5
12BDCC:  BEQ             locret_12BDDA
12BDCE:  LDR             R0, [R4]
12BDD0:  CBZ             R0, loc_12BDD6
12BDD2:  BL              sub_12BD9E
12BDD6:  ADDS            R4, #4
12BDD8:  B               loc_12BDCA
12BDDA:  POP             {R4,R5,R7,PC}
