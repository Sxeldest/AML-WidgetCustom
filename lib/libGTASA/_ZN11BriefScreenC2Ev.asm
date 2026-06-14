; =========================================================
; Game Engine Function: _ZN11BriefScreenC2Ev
; Address            : 0x2A6B84 - 0x2A6D12
; =========================================================

2A6B84:  PUSH            {R4,R6,R7,LR}
2A6B86:  ADD             R7, SP, #8
2A6B88:  LDR             R1, =(aFehBri - 0x2A6B92); "FEH_BRI"
2A6B8A:  MOVS            R2, #1; bool
2A6B8C:  MOV             R4, R0
2A6B8E:  ADD             R1, PC; "FEH_BRI"
2A6B90:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A6B94:  LDR             R0, =(_ZTV11BriefScreen_ptr - 0x2A6B9E)
2A6B96:  MOVS            R2, #0x14
2A6B98:  LDR             R1, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BA2)
2A6B9A:  ADD             R0, PC; _ZTV11BriefScreen_ptr
2A6B9C:  STR             R2, [R4,#0x48]
2A6B9E:  ADD             R1, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BA0:  LDR             R0, [R0]; `vtable for'BriefScreen ...
2A6BA2:  LDR             R1, [R1]; CMessages::PreviousBriefs ...
2A6BA4:  ADDS            R0, #8
2A6BA6:  STR             R0, [R4]
2A6BA8:  LDR             R0, [R1,#(dword_A00450 - 0xA00448)]
2A6BAA:  CMP             R0, #0
2A6BAC:  BEQ             loc_2A6CAC
2A6BAE:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BB4)
2A6BB0:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BB2:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BB4:  LDR             R0, [R0,#(dword_A00478 - 0xA00448)]
2A6BB6:  CMP             R0, #0
2A6BB8:  BEQ             loc_2A6CB0
2A6BBA:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BC0)
2A6BBC:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BBE:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BC0:  LDR             R0, [R0,#(dword_A004A0 - 0xA00448)]
2A6BC2:  CMP             R0, #0
2A6BC4:  BEQ             loc_2A6CB4
2A6BC6:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BCC)
2A6BC8:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BCA:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BCC:  LDR.W           R0, [R0,#(dword_A004C8 - 0xA00448)]
2A6BD0:  CMP             R0, #0
2A6BD2:  BEQ             loc_2A6CB8
2A6BD4:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BDA)
2A6BD6:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BD8:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BDA:  LDR.W           R0, [R0,#(dword_A004F0 - 0xA00448)]
2A6BDE:  CMP             R0, #0
2A6BE0:  BEQ             loc_2A6CBC
2A6BE2:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BE8)
2A6BE4:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BE6:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BE8:  LDR.W           R0, [R0,#(dword_A00518 - 0xA00448)]
2A6BEC:  CMP             R0, #0
2A6BEE:  BEQ             loc_2A6CC0
2A6BF0:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6BF6)
2A6BF2:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6BF4:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6BF6:  LDR.W           R0, [R0,#(dword_A00540 - 0xA00448)]
2A6BFA:  CMP             R0, #0
2A6BFC:  BEQ             loc_2A6CC4
2A6BFE:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C04)
2A6C00:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C02:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C04:  LDR.W           R0, [R0,#(dword_A00568 - 0xA00448)]
2A6C08:  CMP             R0, #0
2A6C0A:  BEQ             loc_2A6CC8
2A6C0C:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C12)
2A6C0E:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C10:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C12:  LDR.W           R0, [R0,#(dword_A00590 - 0xA00448)]
2A6C16:  CMP             R0, #0
2A6C18:  BEQ             loc_2A6CCC
2A6C1A:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C20)
2A6C1C:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C1E:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C20:  LDR.W           R0, [R0,#(dword_A005B8 - 0xA00448)]
2A6C24:  CMP             R0, #0
2A6C26:  BEQ             loc_2A6CD0
2A6C28:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C2E)
2A6C2A:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C2C:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C2E:  LDR.W           R0, [R0,#(dword_A005E0 - 0xA00448)]
2A6C32:  CMP             R0, #0
2A6C34:  BEQ             loc_2A6CD4
2A6C36:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C3C)
2A6C38:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C3A:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C3C:  LDR.W           R0, [R0,#(dword_A00608 - 0xA00448)]
2A6C40:  CMP             R0, #0
2A6C42:  BEQ             loc_2A6CD8
2A6C44:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C4A)
2A6C46:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C48:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C4A:  LDR.W           R0, [R0,#(dword_A00630 - 0xA00448)]
2A6C4E:  CMP             R0, #0
2A6C50:  BEQ             loc_2A6CDC
2A6C52:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C58)
2A6C54:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C56:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C58:  LDR.W           R0, [R0,#(dword_A00658 - 0xA00448)]
2A6C5C:  CMP             R0, #0
2A6C5E:  BEQ             loc_2A6CE0
2A6C60:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C66)
2A6C62:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C64:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C66:  LDR.W           R0, [R0,#(dword_A00680 - 0xA00448)]
2A6C6A:  CBZ             R0, loc_2A6CE4
2A6C6C:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C72)
2A6C6E:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C70:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C72:  LDR.W           R0, [R0,#(dword_A006A8 - 0xA00448)]
2A6C76:  CBZ             R0, loc_2A6CE8
2A6C78:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C7E)
2A6C7A:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C7C:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C7E:  LDR.W           R0, [R0,#(dword_A006D0 - 0xA00448)]
2A6C82:  CBZ             R0, loc_2A6CEC
2A6C84:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C8A)
2A6C86:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C88:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C8A:  LDR.W           R0, [R0,#(dword_A006F8 - 0xA00448)]
2A6C8E:  CBZ             R0, loc_2A6CF0
2A6C90:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6C96)
2A6C92:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6C94:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6C96:  LDR.W           R0, [R0,#(dword_A00720 - 0xA00448)]
2A6C9A:  CBZ             R0, loc_2A6CF4
2A6C9C:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x2A6CA2)
2A6C9E:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
2A6CA0:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
2A6CA2:  LDR.W           R0, [R0,#(dword_A00748 - 0xA00448)]
2A6CA6:  CBNZ            R0, loc_2A6CF8
2A6CA8:  MOVS            R0, #0x13
2A6CAA:  B               loc_2A6CF6
2A6CAC:  MOVS            R0, #0
2A6CAE:  B               loc_2A6CF6
2A6CB0:  MOVS            R0, #1
2A6CB2:  B               loc_2A6CF6
2A6CB4:  MOVS            R0, #2
2A6CB6:  B               loc_2A6CF6
2A6CB8:  MOVS            R0, #3
2A6CBA:  B               loc_2A6CF6
2A6CBC:  MOVS            R0, #4
2A6CBE:  B               loc_2A6CF6
2A6CC0:  MOVS            R0, #5
2A6CC2:  B               loc_2A6CF6
2A6CC4:  MOVS            R0, #6
2A6CC6:  B               loc_2A6CF6
2A6CC8:  MOVS            R0, #7
2A6CCA:  B               loc_2A6CF6
2A6CCC:  MOVS            R0, #8
2A6CCE:  B               loc_2A6CF6
2A6CD0:  MOVS            R0, #9
2A6CD2:  B               loc_2A6CF6
2A6CD4:  MOVS            R0, #0xA
2A6CD6:  B               loc_2A6CF6
2A6CD8:  MOVS            R0, #0xB
2A6CDA:  B               loc_2A6CF6
2A6CDC:  MOVS            R0, #0xC
2A6CDE:  B               loc_2A6CF6
2A6CE0:  MOVS            R0, #0xD
2A6CE2:  B               loc_2A6CF6
2A6CE4:  MOVS            R0, #0xE
2A6CE6:  B               loc_2A6CF6
2A6CE8:  MOVS            R0, #0xF
2A6CEA:  B               loc_2A6CF6
2A6CEC:  MOVS            R0, #0x10
2A6CEE:  B               loc_2A6CF6
2A6CF0:  MOVS            R0, #0x11
2A6CF2:  B               loc_2A6CF6
2A6CF4:  MOVS            R0, #0x12
2A6CF6:  STR             R0, [R4,#0x48]
2A6CF8:  MOV             R0, R4; this
2A6CFA:  BLX             j__ZN11BriefScreen18ComputeTotalHeightEv; BriefScreen::ComputeTotalHeight(void)
2A6CFE:  VMOV            S2, R0
2A6D02:  VLDR            S0, =200.0
2A6D06:  MOV             R0, R4
2A6D08:  VSUB.F32        S0, S0, S2
2A6D0C:  VSTR            S0, [R4,#0x44]
2A6D10:  POP             {R4,R6,R7,PC}
