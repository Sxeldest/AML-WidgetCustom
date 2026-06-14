; =========================================================
; Game Engine Function: _ZN21CHIDJoystickIOSSimple18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28E890 - 0x28E972
; =========================================================

28E890:  PUSH            {R4-R7,LR}
28E892:  ADD             R7, SP, #0xC
28E894:  PUSH.W          {R11}
28E898:  LDR.W           R12, [R1,#8]
28E89C:  CMP.W           R12, #0
28E8A0:  BEQ.W           loc_28E940
28E8A4:  LDR             R1, [R1,#0xC]
28E8A6:  MOVS            R2, #0
28E8A8:  MOV.W           LR, #0
28E8AC:  MOVS            R4, #0
28E8AE:  ADDS            R1, #4
28E8B0:  LDR             R5, [R1]
28E8B2:  CMP             R5, R3
28E8B4:  BNE.W           def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E8B8:  LDR.W           R5, [R1,#-4]
28E8BC:  CMP             R5, #0x41 ; 'A'; switch 66 cases
28E8BE:  BHI.W           def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E8C2:  TBB.W           [PC,R5]; switch jump
28E8C6:  DCB 0x21; jump table for switch statement
28E8C7:  DCB 0x21
28E8C8:  DCB 0x21
28E8C9:  DCB 0x21
28E8CA:  DCB 0x25
28E8CB:  DCB 0x37
28E8CC:  DCB 0x29
28E8CD:  DCB 0x2D
28E8CE:  DCB 0x37
28E8CF:  DCB 0x37
28E8D0:  DCB 0x37
28E8D1:  DCB 0x37
28E8D2:  DCB 0x37
28E8D3:  DCB 0x37
28E8D4:  DCB 0x37
28E8D5:  DCB 0x37
28E8D6:  DCB 0x37
28E8D7:  DCB 0x37
28E8D8:  DCB 0x37
28E8D9:  DCB 0x37
28E8DA:  DCB 0x37
28E8DB:  DCB 0x37
28E8DC:  DCB 0x37
28E8DD:  DCB 0x37
28E8DE:  DCB 0x37
28E8DF:  DCB 0x37
28E8E0:  DCB 0x37
28E8E1:  DCB 0x37
28E8E2:  DCB 0x37
28E8E3:  DCB 0x37
28E8E4:  DCB 0x37
28E8E5:  DCB 0x37
28E8E6:  DCB 0x37
28E8E7:  DCB 0x37
28E8E8:  DCB 0x37
28E8E9:  DCB 0x37
28E8EA:  DCB 0x37
28E8EB:  DCB 0x37
28E8EC:  DCB 0x37
28E8ED:  DCB 0x37
28E8EE:  DCB 0x37
28E8EF:  DCB 0x37
28E8F0:  DCB 0x37
28E8F1:  DCB 0x37
28E8F2:  DCB 0x37
28E8F3:  DCB 0x37
28E8F4:  DCB 0x37
28E8F5:  DCB 0x37
28E8F6:  DCB 0x37
28E8F7:  DCB 0x37
28E8F8:  DCB 0x37
28E8F9:  DCB 0x37
28E8FA:  DCB 0x37
28E8FB:  DCB 0x37
28E8FC:  DCB 0x37
28E8FD:  DCB 0x37
28E8FE:  DCB 0x37
28E8FF:  DCB 0x37
28E900:  DCB 0x37
28E901:  DCB 0x37
28E902:  DCB 0x37
28E903:  DCB 0x37
28E904:  DCB 0x37
28E905:  DCB 0x37
28E906:  DCB 0x30
28E907:  DCB 0x34
28E908:  MOV.W           LR, #1; jumptable 0028E8C2 cases 0-3
28E90C:  MOV             R4, R5
28E90E:  B               def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E910:  MOV.W           LR, #0; jumptable 0028E8C2 case 4
28E914:  MOVS            R4, #1
28E916:  B               def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E918:  MOVS            R4, #2; jumptable 0028E8C2 case 6
28E91A:  MOV.W           LR, #2
28E91E:  B               def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E920:  MOV.W           LR, #2; jumptable 0028E8C2 case 7
28E924:  B               loc_28E932
28E926:  MOV.W           LR, #0; jumptable 0028E8C2 case 64
28E92A:  MOVS            R4, #2
28E92C:  B               def_28E8C2; jumptable 0028E8C2 default case, cases 5,8-63
28E92E:  MOV.W           LR, #0; jumptable 0028E8C2 case 65
28E932:  MOVS            R4, #3
28E934:  ADDS            R2, #1; jumptable 0028E8C2 default case, cases 5,8-63
28E936:  ADDS            R1, #0x14
28E938:  CMP             R2, R12
28E93A:  BCC.W           loc_28E8B0
28E93E:  B               loc_28E946
28E940:  MOVS            R4, #0
28E942:  MOV.W           LR, #0
28E946:  VMOV.32         D16[0], R4
28E94A:  ADDS            R1, R4, #1
28E94C:  VMOV.F32        Q9, #0.25
28E950:  VMOV.32         D17[0], R1
28E954:  ADD.W           R1, LR, #1
28E958:  VMOV.32         D16[1], R1
28E95C:  VMOV.32         D17[1], LR
28E960:  VCVT.F32.S32    Q8, Q8
28E964:  VMUL.F32        Q8, Q8, Q9
28E968:  VST1.32         {D16-D17}, [R0]
28E96C:  POP.W           {R11}
28E970:  POP             {R4-R7,PC}
