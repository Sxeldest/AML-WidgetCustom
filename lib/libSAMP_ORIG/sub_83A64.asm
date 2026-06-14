; =========================================================
; Game Engine Function: sub_83A64
; Address            : 0x83A64 - 0x83A9E
; =========================================================

83A64:  PUSH            {R4,R5,R7,LR}
83A66:  ADD             R7, SP, #8
83A68:  LDR             R5, =(byte_1A6FA7 - 0x83A6E)
83A6A:  ADD             R5, PC; byte_1A6FA7
83A6C:  LDRB            R0, [R5]
83A6E:  CMP             R0, #0
83A70:  ITT NE
83A72:  MOVNE           R0, #0
83A74:  POPNE           {R4,R5,R7,PC}
83A76:  LDR             R0, =(byte_4CC4A - 0x83A7E)
83A78:  LDR             R1, =(aSpeaker - 0x83A80); "speaker" ...
83A7A:  ADD             R0, PC; byte_4CC4A
83A7C:  ADD             R1, PC; "speaker"
83A7E:  BL              sub_688B0
83A82:  LDR             R1, =(dword_1A6FA8 - 0x83A88)
83A84:  ADD             R1, PC; dword_1A6FA8
83A86:  STR             R0, [R1]
83A88:  BL              sub_825D8
83A8C:  CMP             R0, #0
83A8E:  ITT EQ
83A90:  MOVEQ           R0, #1
83A92:  BLEQ            sub_82608
83A96:  MOVS            R4, #1
83A98:  MOV             R0, R4
83A9A:  STRB            R4, [R5]
83A9C:  POP             {R4,R5,R7,PC}
