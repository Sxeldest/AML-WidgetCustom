; =========================================================
; Game Engine Function: sub_134BCC
; Address            : 0x134BCC - 0x134CCA
; =========================================================

134BCC:  PUSH            {R4,R5,R7,LR}
134BCE:  ADD             R7, SP, #8
134BD0:  SUB             SP, SP, #8
134BD2:  MOV             R4, R0
134BD4:  BL              sub_12BC78
134BD8:  LDR             R0, =(_ZTV17ObjectEditorPanel - 0x134BE4); `vtable for'ObjectEditorPanel ...
134BDA:  MOVS            R1, #0
134BDC:  STRB.W          R1, [R4,#0x58]
134BE0:  ADD             R0, PC; `vtable for'ObjectEditorPanel
134BE2:  ADDS            R0, #8
134BE4:  STR             R0, [R4]
134BE6:  MOVS            R0, #0x78 ; 'x'; unsigned int
134BE8:  BLX             j__Znwj; operator new(uint)
134BEC:  MOV             R5, R0
134BEE:  BL              sub_134EE8
134BF2:  STR             R5, [R4,#0x5C]
134BF4:  MOV             R0, R4
134BF6:  MOV             R1, R5
134BF8:  BL              sub_12BDF6
134BFC:  LDR             R0, =(off_234BD0 - 0x134C04)
134BFE:  LDR             R1, =(off_234BCC - 0x134C08)
134C00:  ADD             R0, PC; off_234BD0
134C02:  LDR             R3, [R4,#0x5C]
134C04:  ADD             R1, PC; off_234BCC
134C06:  LDR             R0, [R0]; dword_238FA0
134C08:  ADDS            R3, #0x14
134C0A:  LDR             R1, [R1]; dword_238F98
134C0C:  LDRD.W          R2, R0, [R0]
134C10:  VMOV            D16, R2, R0
134C14:  VMOV            D17, D16
134C18:  VST1.32         {D16-D17}, [R3]!
134C1C:  STRD.W          R2, R0, [R3]
134C20:  LDR             R0, [R4,#0x5C]
134C22:  LDRD.W          R2, R1, [R1]
134C26:  STRD.W          R2, R1, [SP,#0x10+var_10]
134C2A:  MOV             R1, SP
134C2C:  BL              sub_12BD92
134C30:  MOVS            R0, #0x78 ; 'x'; unsigned int
134C32:  BLX             j__Znwj; operator new(uint)
134C36:  MOV             R5, R0
134C38:  BL              sub_1350F4
134C3C:  STR             R5, [R4,#0x60]
134C3E:  MOV             R0, R4
134C40:  MOV             R1, R5
134C42:  BL              sub_12BDF6
134C46:  LDR             R0, =(off_234BD8 - 0x134C4E)
134C48:  LDR             R1, =(off_234BD4 - 0x134C52)
134C4A:  ADD             R0, PC; off_234BD8
134C4C:  LDR             R3, [R4,#0x60]
134C4E:  ADD             R1, PC; off_234BD4
134C50:  LDR             R0, [R0]; dword_238FB0
134C52:  ADDS            R3, #0x14
134C54:  LDR             R1, [R1]; dword_238FA8
134C56:  LDRD.W          R2, R0, [R0]
134C5A:  VMOV            D16, R2, R0
134C5E:  VMOV            D17, D16
134C62:  VST1.32         {D16-D17}, [R3]!
134C66:  STRD.W          R2, R0, [R3]
134C6A:  LDR             R0, [R4,#0x60]
134C6C:  LDRD.W          R2, R1, [R1]
134C70:  STRD.W          R2, R1, [SP,#0x10+var_10]
134C74:  MOV             R1, SP
134C76:  BL              sub_12BD92
134C7A:  MOVS            R0, #0x78 ; 'x'; unsigned int
134C7C:  BLX             j__Znwj; operator new(uint)
134C80:  MOV             R5, R0
134C82:  BL              sub_135320
134C86:  STR             R5, [R4,#0x64]
134C88:  MOV             R0, R4
134C8A:  MOV             R1, R5
134C8C:  BL              sub_12BDF6
134C90:  LDR             R0, =(off_234BE0 - 0x134C98)
134C92:  LDR             R1, =(off_234BDC - 0x134C9C)
134C94:  ADD             R0, PC; off_234BE0
134C96:  LDR             R3, [R4,#0x64]
134C98:  ADD             R1, PC; off_234BDC
134C9A:  LDR             R0, [R0]; dword_238FC0
134C9C:  ADDS            R3, #0x14
134C9E:  LDR             R1, [R1]; dword_238FB8
134CA0:  LDRD.W          R2, R0, [R0]
134CA4:  VMOV            D16, R2, R0
134CA8:  VMOV            D17, D16
134CAC:  VST1.32         {D16-D17}, [R3]!
134CB0:  STRD.W          R2, R0, [R3]
134CB4:  LDR             R0, [R4,#0x64]
134CB6:  LDRD.W          R2, R1, [R1]
134CBA:  STRD.W          R2, R1, [SP,#0x10+var_10]
134CBE:  MOV             R1, SP
134CC0:  BL              sub_12BD92
134CC4:  MOV             R0, R4
134CC6:  ADD             SP, SP, #8
134CC8:  POP             {R4,R5,R7,PC}
